{
    name: 'Andrews',
    num_matrices: '1',
    notes: 'Large eigenvalue problem from Stuart Andrews, Brown University, Rhode Island.
stu at cs.brown.edu

In MATLAB, the problem statement is:

    LL = load(\'LL.mat\');
    L = LL.L;
    opts.tol = 1e-9;
    opts.issym=1;
    opts.disp = 5;
    [E,V] = eigs(L, 5, \'sm\', opts);


  - - - - -
Stuart Andrews
Brown University, Computer Science, Box 1910, Prov, RI, 02912
stu at cs.brown.edu
  - - - - -

A large symmetric positive definite matrix, with seemingly random
    sparsity pattern.  LU (using UMFPACK v4.6) fails, because it uses AMD.
    AMD obtains an ordering with nnz(L) of 117,039,940.  METIS gets 36,595,274.
    CHOLMOD\'s NESDIS gets 37,089,917.  CHOLMOD can solve it with either the
    METIS or NESDIS ordering, but not with AMD (x = cholmod(A,b) works if METIS
    is installed, but not otherwise).
',

}

