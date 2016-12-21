{
    matrix_id: '2237',
    name: 'TSOPF_RS_b300_c1',
    group: 'TSOPF',
    description: 'transient optimal power flow, Reduced-Space. Guangchao Geng, Zhejiang Univ',
    author: 'G. Geng',
    editor: 'T. Davis',
    date: '2009',
    kind: 'power network problem',
    problem_2D_or_3D: '0',
    num_rows: '14538',
    num_cols: '14538',
    nonzeros: '1474325',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '170',
    num_dmperm_blocks: '171',
    structural_full_rank: 'true',
    structural_rank: '14538',
    pattern_symmetry: '0.010',
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
    b_field: 'sparse 14538-by-137
',
    norm: '4.090721e+03',
    min_singular_value: '3.940876e-05',
    condition_number: '1.038023e+08',
    svd_rank: '14538',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
}
