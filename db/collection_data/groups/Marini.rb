{
    name: 'MathWorks',
    num_matrices: '11',
    notes: 'Matrices contributed by The Mathworks, Inc.
Some matrices come from other sources.

pivtol: A small matrix from the spline toolbox that illustrates the dramatic
    growth factor that can occur with a pivot tolerance of 0.1 (in
    UMFPACK v4.0).  Needs a tolerance of 0.26, for off-diagonal pivoting.

Pd: An unsymmetric matrix (x=P\d) with many sparse right-hand-sides.  The Pd.A
    matrix is 8081-by-8081.  Pd.b and Pd_rhs.A are the same 8081-by-12406 matrix
    (the right-hand-sides).  It is highly reducible to block triangular form,
    with 7877 diagonal blocks, the largest of which is 30-by-30.  Only 9 of
    the blocks are bigger than 1-by-1.  This is a good candidate for a solver
    based on dmperm.

Harvard500: Web connectivity matrix from Cleve Moler
    (Numerical Computing with MATLAB, 2004).  A(i,j) is nonzero if there
    is a link from page j to page i.  The URL of page j is in Problem.url{j}
    in the MATLAB form of this problem.  For more details, see Cleve Moler\'s
    book at http://www.mathworks.com/moler .  The matrix is 500-by-500, with
    a structural rank of 233 and numerical rank of 170.

tomography:  An earth science problem from David Yang.  Contributed by
    Bobby Cheng.  Much like a medical tomography problem.  "UMFPACK 4.0
    is consistently slower than MATLAB v5."  In MATLAB 7.1,
    [L,U,P] = lu (A) takes 0.07 seconds (using GPLU), but UMFPACK v4.3 with
    [L,U,P,Q] = lu (A) takes 0.11 seconds.

Kuu, Muu:  symmetric positive definite matrices which caused problems with
    UMFPACK v4.0 (in MATLAB 6.5).  chol, or UMFPACK v4.3 or later, work fine.

QRpivot is a counter-example problem from The MathWorks, Pat Quillen

    This matrix was obtained from a MATLAB user.  It illustrates the
    limitations inherent in computing a basic solution to an under-
    determined system without the use of column pivoting.

    With column pivoting (which can only be done in MATLAB with full
    matrices), the problem is solved properly.

    When finding the min 2-norm solution (ignoring fill-in):

        [Q,R] = qr (A\') ;
        x = Q*(R\'\b) ;

    a good solution is found.  To reduce fill-in:

        p = colamd (A\') ;
        [Q,R] = qr (A (p,:)\') ;
        x = Q*(R\'\b(p)) ;
        
    which also finds a good solution.

    However, x=A\b computes a basic solution, using this algorithm:

        q = colamd (A) ;
        [Q,R] = qr (A (:,q)) ;
        x = R\(Q\'*b) ;
        x (q) = q ;

    which finds an error with norm(A*x-b) of 1e-9 in MATLAB 7.6.

    With random permutations, and determining the cond(R1) of the leading
    trianglar part (R is "squeezed" and the columns can be partitioned into
    [R1 R2] where R1 is square and upper triangular) leads to the following
    results.

    Note that the error is high when condest(R1) is high.  Note in
    particular the last trial.

    So this clinches the question.  MATLAB\'s QR, and my new sparse QR, both
    use a rank-detection method (by Heath) that does not do column pivoting,
    and which is known to fail for some problems - for which Grimes & Lewis\'
    method will likely succeed.

    The advantage of my QR is that I now always return R as upper
    trapezoidal, so if the user is concerned, he/she can easily check
    condest(R(:,1:m)) if m < n.

        err 7.71e-07 condest R1 2.18e+12
        err 1.25e-09 condest R1 9.82e+08
        err 2.47e-09 condest R1 2.46e+11
        err 4.00e-09 condest R1 4.03e+09
        err 9.88e-10 condest R1 4.73e+09
        err 2.25e-08 condest R1 5.34e+09
        err 2.00e-08 condest R1 1.04e+09
        err 1.09e-09 condest R1 6.83e+08
        err 6.18e-08 condest R1 8.13e+10
        err 3.13e-10 condest R1 4.23e+09
        err 6.64e-10 condest R1 2.46e+10
        err 5.76e-09 condest R1 4.31e+09
        err 7.61e-07 condest R1 5.08e+10
        err 2.27e-09 condest R1 4.94e+09
        err 3.99e-10 condest R1 2.80e+09
        err 1.37e-09 condest R1 3.13e+09
        err 6.93e-05 condest R1 1.84e+14
        err 1.35e-08 condest R1 7.18e+09
        err 1.09e-08 condest R1 1.79e+11
        err 1.81e-09 condest R1 2.99e+08
        err 1.55e-01 condest R1 2.45e+18

    In summary, this is a "feature" not a "bug".  If you want a reliable
    solution to an underdetermined system, find the min 2norm solution
    via a QR factorization of A\'.

TS: a counter-example that triggers a bug in MATLAB R2009a.  Fixed in R2009b.

',

}

