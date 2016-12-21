{
    name: 'Mallya',
    num_matrices: '18',
    notes: 'Chemical process simulation matrices, J. Mallya, S. Zitney, M. Stadtherr.

Reference:
Zitney, S. E. and Mallya, J. and Davis, T. A. and Stadtherr, M. A.,
Multifrontal Techniques for Chemical Process Simulation on Supercomputers,
Fifth International Symposium on Process Systems Engineering, May 1994,
Kyongju, Korea (available via anonymous ftp to ftp.cis.ufl.edu as the
file cis/tech-reports/tr94/tr94-002.ps.Z).

Light hydrocarbon recovery problems - large-scale chemical process
simulation using rigorous equation-based models.  Note that these matrices
seem to be well-suited to unifrontal methods.

	    ---Mallya, Jayarama U
	       Dept of Chemical Engg
	       U of Illinois.
	       mally :at the domain: turing.scs.uiuc.edu

	 NOTE:  The 1k problem is the same as the old lhr (light hydrocarbon)
	 recovery problem.   The other problems are constructed from the 1k
	 problem.  Some of the matrices are ill-conditioned, but this is OK,
	 since even with a poor residual the nonlinear solver rapidly
	 converges.  Subsequent linear systems (not provided - these are
	 the first in the sequences) can be solved with a much lower residual.

These matrices occur in steady-state chemical process simulation problems.
The problems involve a light hydrocarbon recovery process.  The larger
problems are extensions of the smallest, involving more chemical species
with larger and/or more chemical processing units.  These problems were
developed by Jayarama Mallya and Mark Stadtherr at the University of
Illinois (Department of Chemical Engineering).  The matrices are taken
from an early iteration in a Newton-based solution procedure starting 
from a poor initial guess.  Automatic scaling options in the simulation
code were turned off.  The matrices are ill-conditioned and contain hard
zeros.  Please relate experiences with these matrices to Mark Stadtherr
(m-stadtherr :at the domain: uiuc.edu).

The rank of lhr71 was estimated at 70301 (it is 70304-by-70304) by MA48.

================================================================================

May 16, 1997:

Some of the ill-conditioned behaviour of these matrices is due to a modelling
error.  Better-conditioned versions have been derived (lhr04c, lhr07c, etc.),
with permission of the creators of these matrices.  The two smallest
matrices (lhr01 and lhr02) are already reasonably well-conditioned and do not
require any modifications.

The corrections were made as follows (see the FIX subdirectory for the
code to do this):

	1) the matrices were converted to triplet format, with explicit zeros
		replaced by the value 1e-300.  The modified matrices were
		then loaded into Matlab.  Zeros were changed to 1e-300 so
		that Matlab would not drop the explicit zeros.

	2) the matrices were fixed, in Matlab.  First, the matrix A is
		permuted to block triangular form (PAQ), with a zero-free
		diagonoal.  Next, 0.001 is
		added to each entry (PAQ)_ii for which (PAQ)_ii => 0,
		and -0.001 if added to each (PAQ)_ii for which (PAQ)_ii is
		< 0.  The correction to A is then P\'*F*Q\', where F is
		diagonal, and F_ii is the correction made to (PAQ)_ii.

	3) the corrected matrix C = A+(P\'*F*Q\') was then written in the
		Harwell/Boeing format.  It has the same pattern of its
		entries as A.

',

}

