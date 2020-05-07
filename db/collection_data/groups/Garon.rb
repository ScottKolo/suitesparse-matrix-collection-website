{
    name: 'Garon',
    num_matrices: '2',
    notes: 'Matrices from Andre Garon, Univ. of Montreal. 2D Navier-Stokes.

(andreg :at the domain: CERCA.UMontreal.CA).
2D Finite-Element discretisation of the Navier-Stokes
Equations. The geometry is a simply a square, with inlet and outlet on 
opposing sides.

The "matrix_big" file got truncated in transmission...

Performance of various solvers:

--------------------------------------------------------------------------------
To: andreg :at the domain: CERCA.UMontreal.CA
cc: bramley :at the domain: cs.indiana.edu, davis :at the domain: cise.ufl.edu
Date: Mon, 13 May 1996 13:48:24 -0400
From: Tim Davis <davis :at the domain: cise.ufl.edu>

Andre,

Here are some initial results with your matrices.
Run time is the complete factorization time (ordering,
symbolic factorization, and numerical factorization).

This is on a Sun UltraSparc, with 128MB of memory,
2GB of swap space.  Peak performance in the BLAS is about
80 mflops in double precision, 160 mflops in single
(I\'m using double prec.).

The methods used:

	UMFPACK2: default parameters, version 2.1 (at my ftp site,
		but very similar to version 2.0 in netlib).
	SuperLU-mmd:  SuperLU with MMD preordering on A\'*A
	SuperLU-camd: SuperLU with COLAMD preodering on A\'*A
		(COLAMD is a code I\'m working on).
	MA48-def: from Harwell Subr. Library.  default parameters,
		successor to MA28.
	MA48-sym: MA48 but strictly with symmetric pivoting only.
	MA42: from Harwell Subr. Library.  A unifrontal code.

Both matrix_small and matrix_medium are easily factorizable.
Perhaps not as fast as an iterative method might work, but
they can be factorized.

"matrix_small" n=3175, nz=88927.

		time(sec)	nz in LU	flop count
UMFPACK2	3.95		754158		0.1318D+09
SuperLU-mmd	4.62		700626		0.1061D+09
SuperLU-camd	3.94		625623		0.0788D+09
MA48-def       17.8		646982		0.1371D+09
MA48-sym       11.9		485733		0.0693D+09
MA42	       10.9	       1044187		0.0772D+09

"matrix_medium" n=13535, nz=390607

		time(sec)	nz in LU	flop count
UMFPACK2	116.9		8298907		0.5235D+10
SuperLU-mmd	 48.1		4725883		0.1251D+10
SuperLU-camd	 54.5		4673004		0.1280D+10
MA48-def	472.1		6297647		0.4531D+10
MA48-sym	293.9		3826925		0.1520D+10
MA42		128.1		9020565		1.3587D+10

It looks like UMFPACK2 is getting unacceptable fill-in.  The
diagonal is good - MA48-sym works better than MA48-def.
SuperLU seems to work the best ... HOWEVER ... you can\'t use
just SuperLU alone.  It needs a column preordering.  I shudder to
think what would happen if you didn\'t preordering the columns
(maybe I should try it).

This is from a fluid flow problem, right?  UMFPACK seems to have
trouble with those.  Can you email me the details?






--------------------------------------------------------------------------------
Subject: more results
Date: Fri, 17 May 1996 16:23:22 -0400
From: Tim Davis <davis :at the domain: cise.ufl.edu>


Andre,

I ran MA41, the "symmetric-pattern" multifrontal method (a new version,
to appear in the next release of the Harwell Subroutine Library), on
your matrices.

Here are the results.  Basically, MA41 is quite a bit faster for these
matrices than UMFPACK (=MA38).  I doubt there\'s much I can do to beat
these run times.  It would be possible to improve UMFPACK, I think,
so it wouldn\'t be as slow as it is.  MA41 is also faster than
SuperLU, MA42, and MA48 for these matrices.  MA41 is also more
accurate than UMFPACK2, probably because of the smaller flop count.

These matrices have symmetric nonzero pattern.

Do you have problems that lead to matrices with unsymmetric nonzero
pattern?

Thanks,
Tim

p.s., you\'ll need a wide screen to read these results.
--------------------------------------------------------------------------------

This is on a lightly loaded UltraSparc, May 15-17, 1996,
128MB memory, 2GB swap space.  Large differences between CPU and
WALL CLOCK time indicate swap-space thrashing of the method.

Method.A is the method using DEFAULT parameters, except UMFPACK uses u=0.01.
Method.B uses non-default parameters.

        MA41.A: no max transversal, u=0.01 (defaults)
        MA41.B: max transversal, u=0.01
        UMF*.A: BTF and no symmetric preference (defaults), u=0.01
        UMF*.B: no BTF, and with symmetric preference, u=0.01


"total time" is analysis+factorize, not including solve time.
All times in seconds.

method     total time        |  num. factorize  |  solve time      |  nz in | flop     | error
           cpu       wall    |  cpu      wall   |  cpu       wall  |  LU    | count    | (max norm)


matrices/Garon/garon1.rua
MA41.A     0.835     0.938     0.729     0.810     0.036     0.078    357037 2.6470e+07     5.15D-12
MA41.B     0.869     0.941     0.730     0.790     0.036     0.037    357037 2.6470e+07     5.15D-12
UMF2.A     3.844     3.951     3.304     3.332     0.068     0.082    728318 1.3160e+08   0.6468E-04
UMF2.B     2.501     2.504     2.103     2.110     0.057     0.057    606371 8.2460e+07   0.3974E-07
UMF1.A     4.077     4.087     3.863     3.889     0.083     0.083    821459 1.1397e+08   0.1419E-03
UMF1.B     2.102     2.109     1.641     1.643     0.058     0.058    558734 5.5743e+07   0.7491E-06


matrices/Garon/garon2.rua
MA41.A     7.645     8.046     7.133     7.492     0.215     0.217   2396585 3.4220e+08     2.76D-11
MA41.B     7.785     8.187     7.141     7.499     0.216     0.224   2396585 3.4220e+08     2.76D-11
UMF2.A    76.076    81.396    82.050   167.636     1.013    27.110   7322867 3.2870e+09   0.6202E+02
UMF2.B    31.693    31.801    30.761    31.005     0.386     0.386   4556143 1.2800e+09   0.5692E-04
UMF1.A    73.480    82.058    86.705   239.346     1.098    28.960   7100507 2.9960e+09   0.7279E-01
UMF1.B    25.236    25.665    25.874    26.828     0.408     0.408   4099241 9.2035e+08   0.1846E-04


',

}

