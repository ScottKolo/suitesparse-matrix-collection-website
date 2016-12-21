{
    matrix_id: '2240',
    name: 'TSOPF_RS_b39_c19',
    group: 'TSOPF',
    description: 'transient optimal power flow, Reduced-Space. Guangchao Geng, Zhejiang Univ',
    author: 'G. Geng',
    editor: 'T. Davis',
    date: '2009',
    kind: 'power network problem',
    problem_2D_or_3D: '0',
    num_rows: '38098',
    num_cols: '38098',
    nonzeros: '684206',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1911',
    num_dmperm_blocks: '1911',
    structural_full_rank: 'true',
    structural_rank: '38098',
    pattern_symmetry: '0.059',
    numeric_symmetry: '0.000',
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
    b_field: 'sparse 38098-by-19
',
    norm: '1.026621e+03',
    min_singular_value: '2.187975e-05',
    condition_number: '4.692103e+07',
    svd_rank: '38098',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
}
