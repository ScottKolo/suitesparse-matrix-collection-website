{
    name: 'Shyy',
    num_matrices: '2',
    notes: 'Computational fluid dynamics, viscous flow, Wei Shyy, Univ. Florida.

Matrices:  shyy161.rua, shyy41.rua

From:

Prof. Wei Shyy
Aerospace Engineering, Mechanics & Engineering Science
231 Aerospace Building
P.O. Box 116250
University of Florida
Gainesville, FL 32611-6250
USA
email:  wss :at the domain: tiger.aero.ufl.edu
phone:  (904) 392-6416

Matrices are derived from a direct, fully-coupled method for solving
the Navier-Stokes equations for viscous flow calculations (in which the
pressure and velocity fields are coupled within the same linear system).
A body-fitted co-ordinate system is used.  This method is less sensitive
to variations in parameters (such as the Reynolds number) than decoupled
methods, in which the pressure equation is artificially derived by combining
the momentum and continuity equations.

Reference:
Braaten, M.E. and Shyy, W., "Comparison of Iterative and Direct Solution
Methods for Viscous Flow Calculations in Body-Fitted Coordinates,"
Inter.  J. Numer. Meths. in Fluids, vol 6, pp. 325-349, 1986.


NOTE:  these matrices give large errors and residuals when factorized.
They are linear systems from early on in the nonlinear iteration.  A seemingly
poor solution to these linear systems is OK, since the solution still moves the
nonlinear iteration in the right direction.  For example, Mups (multifrontal
code) gives the following for shyy41.rua (with a right-hand-side of b(i)=n/i):

	maxnorm (Ax-b)			2.2e+68
	maxnorm (A)			1.9e+02
	maxnorm (x)			2.9e+67
	maxnorm(b-Ax)/maxnorm(Ax)	3.9E-02



Minor change 3/31/03: "rua" changed to "RUA" in both files.
',

}

