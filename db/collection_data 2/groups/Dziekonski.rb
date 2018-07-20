{
    name: 'Embree',
    num_matrices: '1',
    notes: 'Fluid stability problem from IFISS package, Mark Embree, Virginia Tech

The matrix comes from a shift-invert eigenvalue computation that arises
during linear stability analysis of a 2D backward facing step.  The
discretizations were created with IFISS, which we also use to compute the
steady-state flow whose stability we are assessing.

Created by the IFISS package, by David Silvester (School of Mathematics,
Univ. of Manchester), Howard Elman (Computer Science, Univ. of Maryland),
and Alison Ramage (Dept. of Mathematics and Statistics, Univ. of
Strathclyde).  http://www.maths.manchester.ac.uk/~djs/ifiss/

This matrix requires one step of iterative refinement after LU
factorization.  x=A\\b in MATLAB (using UMFPACK) does iterative refinement
by default but with just lu, no iterative refinement is done:

    In MATLAB R2014a:
    x = randn(96307,1);
    b = A*x;
    x1 = A\\b;
    norm(x-x1) is 1.1045984e-12
    norm(b-A*x1) is 9.3538018e-15

    [L,U,P,Q,R] = lu(A);
    x2 = Q*(U\\(L\\(P*(R\\b))));
    norm(x-x2) is 4.9150874e-05
    norm(b-A*x2) is 4.0055911e-07

The matrix is well conditioned, with singular values ranging from
1.003 to 2e-5.  The singluar values themselves are in
Problem.aux.singular_values.  The need for iterative refinement
comes from the threshold partial pivoting in UMFPACK, which tries
to balance reduction in fill with finding good numerical pivots.
Thus UMFPACK uses iterative refinement with sparse backward error using
the method described in Arioli, Demmel, and Duff, "Sovling sparse linear
systems with sparse backward error", SIAM J. Matrix Analysis & Applic,
vol 10, no 2, pp 165-190, Apr 1989).

The matrix itself is described in this paper:

https://arxiv.org/abs/1601.00044

Pseudospectra of Matrix Pencils for Transient Analysis of
Differential-Algebraic Equations

Mark Embree, Blake Keeler
(Submitted on 1 Jan 2016 (v1),
last revised 27 Jun 2017 (this version, v3))

To understand the solution of a linear, time-invariant
differential-algebraic equation, one must analyze a matrix pencil (A,E)
with singular E. Even when this pencil is stable (all its finite
eigenvalues fall in the left-half plane), the solution can exhibit
transient growth before its inevitable decay. When the equation results
from the linearization of a nonlinear system, this transient growth gives
a mechanism that can promote nonlinear instability. One might hope to
enrich the conventional large-scale eigenvalue calculation used for
linear stability analysis to signal the potential for such transient
growth. Toward this end, we introduce a new definition of the
pseudospectrum of a matrix pencil, use it to bound transient growth,
explain how to incorporate a physically-relevant norm, and derive
approximate pseudospectra using the invariant subspace computed in
conventional linear stability analysis. We apply these tools to several
canonical test problems in fluid mechanics, an important source of
differential-algebraic equations.
',

}

