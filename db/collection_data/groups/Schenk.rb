{
    name: 'Schenk',
    num_matrices: '5',
    notes: 'Symmetric indefinite KKT matrices, O. Schenk, Univ. of Basel, Switzerland
Nonlinear programming problems for a 3D PDE-constrained optimization
problem with boundary control as a function of the discretization
parameter N using 2nd-order finite difference approximations.

O. Schenk, A. W\\"achter, and M. Weiser, Inertia Revealing
Preconditioning For Large-Scale Nonconvex Constrained Optimization,
Technical Report, Unversity of Basel, 2008, submitted. 

Abstract: Fast nonlinear programming methods following the
all-at-once approach usually employ Newton\'s method for solving
linearized Karush-Kuhn-Tucker (KKT) systems. In nonconvex problems,
the Newton direction is only guaranteed to be a descent direction if
the Hessian of the Lagrange function is positive definite on the
nullspace of the active constraints, otherwise some modifications to
Newton\'s method are necessary. This condition can be verified using
the signs of the KKT\'s eigenvalues (inertia), which are usually
available from direct solvers for the arising linear saddle point
problems. Iterative solvers are mandatory for very large-scale
problems, but in general do not provide the inertia. Here we present
a preconditioner based on a multilevel incomplete LBL^T
factorization, from which an approximation of the inertia can be
obtained. The suitability of the heuristics for application in
optimization methods is verified on an interior point method applied
to the CUTE and COPS test problems, on large-scale 3D PDE-constrained
optimal control problems, as well as 3D PDE-constrained optimization
in biomedical cancer hyperthermia treatment planning.  The efficiency
of the preconditioner is demonstrated on convex and nonconvex
problems with 1503 state variables and 1502 control variables, both
subject to bound constraints.

Note that the 3 largest matrices (nlpkkt160, nlpkkt200, and nlpkkt240)
require MATLAB 7.3 or later to read them.
',

}

