{
    matrix_id: '2234',
    name: 'TSOPF_RS_b162_c4',
    group: 'TSOPF',
    description: 'transient optimal power flow, Reduced-Space. Guangchao Geng, Zhejiang Univ',
    author: 'G. Geng',
    editor: 'T. Davis',
    date: '2009',
    kind: 'power network problem',
    problem_2D_or_3D: '0',
    num_rows: '20374',
    num_cols: '20374',
    nonzeros: '812749',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '426',
    num_dmperm_blocks: '426',
    structural_full_rank: 'true',
    structural_rank: '20374',
    pattern_symmetry: '0.026',
    numeric_symmetry: '0.001',
    rb_type: 'real',
    structure: 'unsymmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'Transient stability-constrained optimal power flow (TSOPF) problems from     
Guangchao Geng, Institute of Power System, College of Electrical Engineering,
Zhejiang University, Hangzhou, 310027, China.  (genggc AT gmail DOT com).    
Matrices in the  Full-Space (FS) group are symmetric indefinite, and are best
solved with MA57.  Matrices in the the Reduced-Space (RS) group are best     
solved with KLU, which for these matrices can be 10 times faster than UMFPACK
or SuperLU.                                                                  
',
    b_field: 'sparse 20374-by-49
',
    norm: '2.365055e+03',
    min_singular_value: '2.749083e-05',
    condition_number: '8.603067e+07',
    svd_rank: '20374',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
}
