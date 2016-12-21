{
    name: 'Goodwin',
    num_matrices: '2',
    notes: 'Fluide mechanics matrices from Ralph Goodwin, Univ. Illinois.

The goodwin.rua matrix:

	A finite-element matrix from Ralph Goodwin, Chemical Engineering Dept.,
	Univ. of Illinois at Urbana-Champaign.  A fluid mechanics problem.
	From a nonlinear solver (Newton iterations.  Uses several back
	substitutions for the Sherman-Morrison formula to deal with a dense
	row  (not given in the matrix).

	The matrix was originally obtained in triplet (i,j,a_ij) format, with
	lots of duplicate entries (from unassembled finite elements). 
	Converted (and duplicates assembled) into RUA format by Tim Davis.

	email:  ralph :at the domain: wsnext.scs.uiuc.edu 

The rim.rua matrix: n=22560, nz=1014951.  Originally in triplet format with
	duplicate entries.  See comments below:


	From ralph :at the domain: wsnext.scs.uiuc.edu Mon May 22 16:31:26 1995

	Tim,

	I have another matrix that may interest you.  It is similar 
	to the matrix that you added to the Boeing-Harwell library.
	THere are 22560 equations.  The frontwidth is about 144.
	However pivoting consideration cause the frontwidth to grow
	to 2174.  I have not tried using UMFPACK with this matrix
	because my code requires 287 Mbytes to store the LU factors,
	and therefore goes out-of-core. Still if you are
	interested in a matrix that appears to have severe pivoting
	problems and is big then I have one for you.

	Ralph Goodwin

	From ralph :at the domain: wsnext Fri May 26 08:03:45 1995

	Tim,

	I solved my problem of excessive front width growth by rescaling
	the rows of the matrix, so I guess I sounded a false alarm.
	Previously, the front would grow from 155 to 2300, now it stays
	at 144.  I rescaled by the 1 norm of each row.

	Ralph

	From ralph :at the domain: wsnext.scs.uiuc.edu Fri May 26 14:27:21 1995

	Tim,

	I ftped the matrix to you.  It is in the
	directory incoming and is named  rim.mat.gz.  It is
	a 15Mb file that uncompresses to about 42Mb. The matrix
	is stored in triple format with the first two lines
	being the order of the matrix and the number of nonzeroes.
	There are duplicate nonzeroes that must be summed.

	Earlier I said that I scaled the rows by their 1 norm.
	This is not exactly correct. I scaled by the 1 norm 
	of the *unsummed* nonzeroes in the row, which is of
	course different than the 1 norm of the row.

	Ralph


	From ralph :at the domain: wsnext.scs.uiuc.edu Fri May 26 14:53:18 1995


	Yes, it is from the same application.  The physical properties
	are different (viscosity, density, ...) but otherwise it is
	the same problem.  One more thing about this problem is that
	it involves not only solving the steady Navier-Stokes (N-S) equations
	but also solving a pair of elliptic mesh generation (EMG) equations.
	The EMG equations are coupled to the N-S equations by
	boundary conditions. So the system of equations represented
	by the matrix I sent you (and also goodwin.rua) is both
	N-S equations and EMG equations all discretized using quadrilateral
	biquadratic finite elements. The main point is that the matrix
	is not just a discretization of the N-S equations.

	Ralph


Minor change, 3/31/03:  "rua" changed to "RUA", in rim.rua header.
',

}

