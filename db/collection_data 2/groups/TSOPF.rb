{
    name: 'Toledo',
    num_matrices: '1',
    notes: 'Null space problem, computer graphics domain.  Matrices from Sivan Toledo.

Matrix from Sivan Toledo.  

deltaX:  Strict partial pivoting is required for this rectangular matrix
    (for computing the null space of a matrix using a variant of inverse
    iteration).  Contributed by Sivan Toledo.  Originally from Craig Gotsman.
    Comes from some kind of graphics problem.  The matrix is 68,600 -by-
    21,961.  The first 767 rows are very dense.  If S = A (1:767,:),
    then S\'*S and A\'*A have the same nonzero pattern.  If the matrix
    C=E*A, where e = sum(abs(A),2) ; e = 1./e ; E = spdiags(e,0,n,n) ;
    is factorized, then [L,U,P,Q]=lu(C) still fails, but it gets a lot
    farther.  UMFPACK computes L and U but runs out of memory when converting
    L and U into MATLAB sparse matrices.  UMFPACK fails internally when
    factorizing the unscaled matrix.

',

}

