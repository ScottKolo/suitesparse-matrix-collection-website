{
    name: 'ATandT',
    num_matrices: '4',
    notes: 'Frequency domain analysis of large nonlinear analog circuits, AT&T.

See ATT.ps for a paper describing these matrices, in the Other directory:  

@inproceedings{FeldmannMelvilleLong96,
	author={Feldmann, P. and Melville, R. and Long, D.},
	title={Efficient frequency domain analysis of large nonlinear analog circuits},
	booktitle={Proceedings of the IEEE Custom Integrated Circuits Conference},
	year={1996}
	,address={Santa Clara, CA}
	,annote={online, in matrices/ATandT/Documentation/ATT.ps}
	}


--------------------------------------------------------------------------------

rich.m converted to onetone1.rua, and sparse.m converted to onetone2.rua:

	Date: Wed, 8 May 96 07:30:09 EDT
	From: David Long <long at research.att.com>
	To: davis at cise.ufl.edu
	Subject: matrices

	I put two matrices in incoming/rich.m.gz and incoming/sparse.m.gz.
	Both are for the same medium-sized example.  The first one has a
	relatively rich collection of off-diagonal entries and is typical of
	what we might use for an SSOR-like preconditioner.  The second is
	sparser, but probably more typical of what would be used with direct
	factorization.  Both of these are fairly typical of the matrices that
	arise in "one-tone" problems, in that the off-diagonal entries are
	generally confined in some band around the diagonal.  I\'ll also try to
	find an appropriate matrix from a multi-tone problem.  Those tend to
	have one set of off-diagonal entries close to the diagonal and another
	set relatively far away.

	David

--------------------------------------------------------------------------------

The tt3.m (multitone) matrix was converted to twotone.rua:

	Date: Thu, 9 May 96 07:12:46 EDT
	From: David Long <long at research.att.com>
	To: davis at cise.ufl.edu
	Subject: Re: matrices

	A matrix from a two-tone problem is in incoming/tt3.m.gz.

--------------------------------------------------------------------------------
Regarding a question about the paper (ATT.ps):
--------------------------------------------------------------------------------
	
	Date: Fri, 10 May 96 14:07:22 EDT
	From: David Long <long at research.att.com>
	To: davis at cise.ufl.edu
	Subject: Re: matrices
	
	Yes, figure 2 is supposed to be a diagram of the Jacobian, but let me
	add a few comments that may help clarify things.  First, you can just
	ignore the Y part.  It\'s included in the formulation for completeness,
	but is not generally needed.  None of the matrices that I sent have a
	Y part.  Second, the matrices can be naturally structured in one of
	two ways, which we call nN format and Nn format.  In nN format, you
	view the matrix as an n by n block matrix, with each block having size
	N by N.  Similarly, Nn format indicates an N by N block matrix, with
	each block having size n by n.  The two formats are related by the
	obvious permutations.  The picture of the Jacobian in figure 2 is for
	the matrix in nN format.  However, to confuse matters, our program
	actually builds the preconditioner matrix in Nn format, and that\'s the
	format of the matrices that I sent.  (Also to confuse matters, the
	paper is a bit inconsistent.  For example, the statement before
	equation 15 about the Jacobian being block-diagonal for a linear
	circuit assumes that Jacobian is in Nn format.)  The almost-circulant
	structure in figure 2 is in the dense N by N blocks, i.e., each N by N
	block is basically a circulant matrix.  I say almost-circulant because
	the multiplication of Gamma C Gamma^-1 by Omega breaks the circulant
	structure.  For simplicity, in the paper, the discussion of the
	Jacobian structure is carried out assuming that the problem is
	formulated in the complex domain.  In the complex case though, half of
	the coefficients that define the soluation are just conjugates of the
	other half.  Thus, if you translate everything into the real domain,
	you can save some memory.  The program uses this observation, and
	that\'s why the matrices that I sent are real.  The Jacobian in the
	real case is
	
	Omega T^-1 Gamma C Gamma^-1 T + T^-1 Gamma G Gamma^-1 T
	
	where T is a matrix that translates from the real domain to the
	complex domain.  It turns out that when you apply T^-1 and T to the
	complex circulant matrix, each pair of conjugate stripes in the
	circulant maps into one of those tilted boxes that we discussed.  You
	can see these clearly in the tt3.m preconditioner matrix.
	
	The paper appeared in the 1996 Custom Integrated Circuits Conference
	(CICC\'96).  The conference just ended Wednesday, and I haven\'t
	actually seen the proceedings yet, so I can\'t give you page numbers
	and such.
	
	David

--------------------------------------------------------------------------------
My response to the message just above:
--------------------------------------------------------------------------------

To: David Long <long at research.att.com>
cc: davis at cise.ufl.edu, rcm at allegra.att.com
Subject: Re: matrices 
Date: Fri, 10 May 1996 17:22:19 -0400
From: Tim Davis <davis at cise.ufl.edu>


In a previous message, David Long <long at research.att.com> wrote
> Yes, figure 2 is supposed to be a diagram of the Jacobian, but let me
> add a few comments that may help clarify things...

Yes - that clarifies things a lot.  I\'ll have to think it through.
In the nN form, the N-by-N blocks are dense?

So in the Nn format, the n-by-n blocks have a sparse structure like the
left hand side of Figure 2 (the "MNA" matrix)?  And the n-by-n matrix
has a rather irregular structure, right?

The dense blocks, by the way, are why UMFPACK gets good performance on these
matrices.  You may have observed this ... as you increase N, the mflop
rate should increase nicely.

The dense blocks are still there, in nN or Nn format, at least in the
sense that UMFPACK will find them no matter how you contort the input
matrix.  In one sense this is an ideal matrix for UMFPACK ... unsymmetric
in the n-by-n structure (UMFPACK handles asymmetry and irregular structure
fairly well, but there are better methods when the structure is regular),
with each element being a dense N-by-N matrix (UMFPACK likes dense blocks,
since it gets good performance on them in the dense BLAS kernels).

Here are some results so far, on my UltraSparc (128 MB memory, two level
cache (Level 1: 16K data and 16K instruction, Level 2: 512K), and 2GB swap
space).  Peak performance of the BLAS is about 80 mflops in double precision,
160 mflops in single.  Theoretical peak is 333 mflops.

I\'ve renamed the matrices (rich.m = onetone1, sparse.m = onetone2,
and tt3 = twotone).

Methods used:
	UMFPACK2-defaults: with default parameters
	UMFPACK2-nondef.:  no BTF, prefer symmetric pivots
	UMFPACK2 is the same as MA38 (to appear in Harwell Subr. Library).
	SuperLU: a sparse partial pivoting code, from Berkeley.   Also uses
		the BLAS.
	MA48:	a successor to MA28.  Lots faster than MA28.  Does not make as
		extensive use of the BLAS as does SuperLU and UMFPACK.  Better
		suited to more irregular problems (I\'ve seen it much faster
		than UMFPACK for some matrices).

The following is the factorization time (including ordering,
symbolic factorization, etc.):

			time(cpu)	nz in LU	flops		Mflops
			in seconds

onetone1:

UMFPACK2-defaults	60.8  		4693767		0.2148D+10	35.3
UMFPACK2-nondef.	61.0		4907410		0.2337D+10	38.2
SuperLU		       108.2		4674848		0.2525D+10	23.3
MA48		       331.0		5109483		0.4564D+10	13.8


onetone2:

UMFPACK2-defaults	10.5  		1269790		0.1588D+09	15.1
UMFPACK2-nondef.	 9.6		1439817		0.2200D+09	22.9
SuperLU			 8.6		1319194		0.1306D+09	15.2
MA48			38.3		1260893		0.2229D+09	 5.8

twotone:

UMFPACK2-defaults      217.3  		9746806		0.6988D+10	32.2
UMFPACK2-nondef.       238.9	       15730302		0.9601D+10	40.2
SuperLU			failed**
MA48		       734.1	       10860368         1.4675D+10	20.0

For twotone, SuperLU ran out of memory in a preordering part that I wrote,
not in SuperLU proper (I need to try it again, and give it more memory in
that part).

I haven\'t included pure factorization time - all of these methods can use
prior orderings, for example (UMD2FA vs. UMD2RF, for example).
Do you use UMD2RF?  It would be used if the values of the
Jacobian changes, but the pattern remains the same (and the pivot order
remains the same, and stays numerical acceptable).  In that case, UMFPACK2,
SuperLU, and MA48 would all be faster in the 2nd factorization than they would
in the first.

Do these numbers compare with the results you have?  Actually, your BLAS on
the RS/6000 should get closer to the theoretical peak than does the
UltraSparc.

Oh - and thanks for the matrices.  Nice to have larger ones in which UMFPACK2
does so nicely.

Thanks,
Tim


--------------------------------------------------------------------------------
Matrix pre2.m, converted to pre2.rua
',

}

