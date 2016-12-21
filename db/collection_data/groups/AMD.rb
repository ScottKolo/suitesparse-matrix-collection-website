{
    name: 'ANSYS',
    num_matrices: '3',
    notes: 'Underdetermined systems needing well-conditioned bases to be found.

The goal is to find a permutation or factorization that places A in upper
trapezoidal form, [R1 R2] where R1 is well-conditioned, square, and upper
triangular, and where R1\R2 is as sparse as possible.  Submitted to the
UF collection by Emmannuel Delor, ANSYS.

    opts.tol = 0.01 ;
    [m n] = size(A) ;
    x = ones (n,1) ;
    y = A*x ;
    [c R P info] = spqr (A, y, opts) ;
    info
    Rs = R (:, 1:m) ;    % must be well conditioned
    fprintf (\'condest(Rs) %g\n\', condest (Rs)) ;
    xs = x (1:m) ;
    xm = x (m+1:n) ;
    A2 = -Rs \ R (:, m+1:n) ;
    y2 =  Rs \ c ;
    norm(A2*xm + y2 - xs)   % should be very small
    nnz (A2)                % should also be as small as possible

',

}

