{
    name: 'Boeing',
    num_matrices: '32',
    notes: 'Structural engineering matrices from Roger Grimes, Boeing.
The files have been renamed to fit my naming scheme (matrixname.type),
where type = rsa, rua, psa, etc. (via the script "fix" in this directory).

NOTE: the BCSSTK39 matrix has been recently added (Dec 2002).

The NASA* matrices are almost duplicates of ../Nasa/*:

nasa1824.rsa:  Boeing version has different numerical values (same pattern).
	I think the Nasa/nasa1824.rsa copy is the true version (do a diff
	between the two, and you\'ll see what I mean).

nasa2910.?sa and nasa4704.?sa:  Boeing versions are just the pattern
	The Nasa/ versions include numerical values, and right-hand side.
	The patterns are the same.

--------------------------------------------------------------------------------
The following matrices appear to be corrupted:

	ct20mass.rsa
	mn12k.rsa
	mn12m.rsa
	pwtm.rsa

--------------------------------------------------------------------------------
Date: Fri, 2 Jun 95 09:23:48 PDT
From: Roger Grimes 206-865-3585 <rgrimes :at: espresso.rt.cs.boeing.com>
Message-Id: <9506021623.AA02721 :at: espresso.rt.cs.boeing.com>
To: davis :at: cis.ufl.edu
Subject: Re:  sparse matrices

Tim,

I am sending you (u.s. snail mail) today an 8 mm tape.
It has a copy of 2 tar tapes.
+
The first tar tape has the following matrices.

BCSSTK34
BCSSTK35
BCSSTK36
BCSSTK37
BCSSTK38
BCSSTK39
BCSSTM34
BCSSTM35
BCSSTM36
BCSSTM37
BCSSTM38
BCSSTM39
CRYSTK01
CRYSTK02
CRYSTK03
CRYSTM01
CRYSTM02
CRYSTM03
CT20MASS
CT20STIF
MSC00726
MSC01050
MSC01440
MSC04515
MSC10848
MSC23052
NASA1824
NASA2910
NASA4704

The second tar tape has

mn12.K
mn12.M
pwt.K
pwt.M

I believe I already have sent you the headers for all of these matrices.
If not let me know and I will do so.

To extract the 2 different tar files from the 8 mm tape you will need
to know some about the \'dd\' and \'mt\' command on unix.  I had to learn
this recently so, in case you need it, here are commands that will let
you get the table of contents from the two tar files.  Note that our
8 mm tape drive is referenced by \'rst1\'.  \'nrst1\' says look at tape
device rst1 but do not rewind the tape.  

mt -f /dev/rst1 rewind     "positions tape to beginning"  
tar tvf /dev/rst1          "gets table of contents of first tar file"
mt -f /dev/rst1 rewind     "positions tape to beginning"
mt -f /dev/nrst1 fsf 1     "skips past first tar file"
tar tvf /dev/rst1          "gets table of contents of second tar file"

If you are interested only working on ordering/symbolic factorization 
for these problems you may find the following program useful.  It
reads the H-B matrix and puts out a H-B representation of only
the pattern.

      program pattern
c
c---------------------------------------------------------------------
c
c     this program creates a pattern only representation of a sparse
c     matrix in the harwell/boeing sparse matrix format.     
c
c---------------------------------------------------------------------
c
      character* 3    mtxtyp, rhstyp
      character* 8    key
      character*16    ptrfmt, indfmt
      character*20    valfmt, rhsfmt
      character*72    title
      character*80    line
c
      integer         lintot, linptr, linind, linval, linrhs,
     1                nrow,   ncol,   nnzero, nelmnt, nrhs,   nrhsi
c
c---------------------------------------------------------------------
c
      read ( 5, 1000, end = 900 ) title, key,
     1                 lintot, linptr, linind, linval, linrhs,
     2                 mtxtyp, nrow,   ncol,   nnzero, nelmnt,
     3                 ptrfmt, indfmt, valfmt, rhsfmt
 1000 format ( a72, a8 / 5i14 / a3, 11x, 4i14 / 2a16, 2a20 )
c
      if ( linrhs .gt. 0 ) read ( 5, 1100 ) rhstyp, nrhs, nrhsi
 1100 format ( a3, 11x, 2i14 )
c
	  if ( mtxtyp(1:1) .ne. \'P\' ) then
			lintot = linptr + linind
			linval = 0
			linrhs = 0
			mtxtyp(1:1) = \'P\'
			valfmt(1:20) = \'                    \'
			rhsfmt(1:20) = \'                    \'
      end if
c
      write ( 6, 2000) title, key,
     1                 lintot, linptr, linind, linval, linrhs,
     2                 mtxtyp, nrow,   ncol,   nnzero, nelmnt,
     3                 ptrfmt, indfmt, valfmt, rhsfmt
 2000 format ( a72, a8 / 5i14 / a3, 11x, 4i14 / 2a16, 2a20 )
c
      do 200 i = 1, lintot
          read  ( 5, \'(a80)\' ) line
          write ( 6, \'(a80)\' ) line
  200 continue
c
c---------------------------------------------------------------------
c
  900 stop
      end

Just a reminder.  You will need some significant disk space to deal with
mn12.K and pwt.K.  As a compress file, mn12.K requires 28M and pwt.K
requires 54M.  Uncompressed files will need 2.5 to 3 times as much.  
They are definitely not files for the weak of heart or for those short
on disk space.

Roger Grimes

--
------------------------------+-------------------------------------
Roger G. Grimes          | E-mail: rgrimes :at: espresso.rt.cs.boeing.com
Math and Eng. Analysis   | Tel.:   (206) 865-3585         
Boeing Information and   | FAX:    (206) 865-2966         
  Support Services       |
------------------------------+-------------------------------------
The comments in this message are mine and not necessarily those of 
The Boeing Company.
---------------------------+----------------------------------------

',

}

