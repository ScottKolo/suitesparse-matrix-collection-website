{
    name: 'Cylshell',
    num_matrices: '7',
    notes: 'Finite element analysis of cylindrical shells, R. Kouhia, Helsinki.

Set CYLSHELL

Source:	    Reijo Kouhia, Helsinki University of Technology, reijo.kouhia at hut.fi

Discipline:	Structural mechanics
Accession (in Matrix Market collection):  Summer 1997

These matrices result from finite element discretization of an octant of a
cylindrical shell. The ends of the cylinder are free. A summary of the problem
is given below; further details, including plots of the finite element meshes
can be found in a separate description.

Notation: T indicates the Radius to thickness ratio, R/t = 10T; MO indicates
the model type: DK = Discrete-Kirchhoff, RM = Reissner-Mindlin; EL indicates
element type: T3 = 3-node triangular, Q4 = 4-node quadrilateral, etc.; MX
indicates the mesh type: M1 = 30x30 uniform, M2 = 100x150 uniform, M3 = graded
mesh of 1666 triangles (grading near one boundary and one vertex). The naming
convention, cTMOELMX, is based on these.

The finite element is a facet type shell element (3/4 nodes) with drilling
rotation incorporated by the Hughes-Brezzi technique and using the penalty
parameter value of G/1000 (regularization parameter) , where G is the shear
modulus. In order to improve the coarse mesh accuracy the membrane
interpolation is amended by the Allman type quadratic modes linked to the
drilling rotation. The bending formulation utilizes the stabilized MITC
technique with the stabilization parameter equal to 0.4.

For iterative conjugate gradient type solvers, the problem gets harder when the
radius to thickness ratio R/t increases. For quadrilateral meshes using the
IC(0) preconditioner, iteration counts are about 100 (for R/t=10) and 180 (for
R/t=1000) in reaching the relative residual norm of 10-9 depending slightly on
the right-hand side vector. For matrices corresponding to triangular meshes the
number of iterations doubles in comparison to quadrilateral ones.

The matrices are all symmetric positive definite.

The following estimates of largest and smallest eigenvalues and spectral
condition numbers were provided by the author. These were computed using the
Lanczos algorithm from QMRPACK (subroutine DSLAL) with 100 steps.

Matrix	Max eigenvalue	Min eigenvalue	Condition No.
S1RMQ4M1    6.8743215039276076E+05  3.7969627252353000E-01  1.810479E+06
S2RMQ4M1    6.8743398166879822E+04  3.8746327712024738E-04  1.774191E+08
S3RMQ4M1    6.8745248885112433E+03  3.8936812501755643E-07  1.765559E+10
S1RMT3M1    9.6684220885668334E+05  3.7976650205204426E-01  2.545886E+06
S2RMT3M1    9.6681138121311058E+04  3.8747124280659988E-04  2.495182E+08
S3RMT3M1    9.6688590706791765E+03  3.8956266582265278E-07  2.481978E+10
S3DKQ4M2    4.6016534362482462E+03  2.4268618877322254E-08  1.896133E+11
S3DKT3M2    8.7984363691286471E+03  2.4269393992599454E-08  3.625322E+11
S3RMT3M3    9.5986080894852857E+03  3.9983547883056739E-07  2.400639E+10

',

}

