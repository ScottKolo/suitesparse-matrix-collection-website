{
    matrix_id: '1863',
    name: 'Raj1',
    group: 'Rajat',
    description: 'Circuit simulation matrix from Raj',
    author: 'Raj',
    editor: 'T. Davis',
    date: '2007',
    kind: 'circuit simulation problem',
    problem_2D_or_3D: '0',
    num_rows: '263743',
    num_cols: '263743',
    nonzeros: '1300261',
    num_explicit_zeros: '2203',
    num_strongly_connected_components: '3',
    num_dmperm_blocks: '169',
    structural_full_rank: 'true',
    structural_rank: '263743',
    pattern_symmetry: '0.999',
    numeric_symmetry: '0.576',
    rb_type: 'real',
    structure: 'unsymmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'High fill-in with KLU, because the matrix is nearly singular and lots of 
partial pivoting occurs.  If the pattern of A+A\' is considered to be the 
nonzero pattern of a symmetric positive definite matrix, then nnz(L) has 
only 3,728,967 nonzeros using p=amd(A) and chol(A(p,p)), where A excludes
the explicit zeros in Problem.Zeros.  The flop count for the Cholesky    
factorization is only 340.9 million.  With a pivot tolerance of 2.2e-16, 
KLU Version 1.0 constructs and LU factorization with about 31 million    
nonzeros, even though it uses AMD for the diagonal blocks of the BTF for 
which the expected nnz(L) is only 3.705 million (for the Cholesky factor-
ization of the large diagonal block).  The BTF form has little impact on 
the factorization.                                                       
',
}
