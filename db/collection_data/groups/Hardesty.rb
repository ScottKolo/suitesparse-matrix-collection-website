{
    name: 'Hardesty',
    num_matrices: '3',
    notes: 'Surface fitting problem for visualization, Sean Hardesty

Visualization of 3D structures in the earth

The Hardesty3 matrix is an interpolation matrix stacked above a
weighted Laplacian, to to fit a surface z(x,y) to a set of points
in R^3 subject to a smoothness constraint enforced via regularization.
Hardesty2 is a smaller version of this problem.

For the big matrix (Hardesty/Hardesty3), sparse QR (via SuiteSparseQR,
or SPQR) finds an R factor and a set of Householder vectors (Q.H) with
about 150 million nonzeros.  Sparse LU factorization (with UMFPACK
v5.7.1) sees very high fillin (about 2.5 billion nonzeros in L+U).

The Hardesty1 matrix is a simple discretization of a 2D biharmonic
operator with some Lagrange multiplier constraints used for smoothing.
',

}

