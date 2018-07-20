{
    matrix_id: '2231',
    name: 'TSOPF_FS_b9_c6',
    group: 'TSOPF',
    description: 'transient optimal power flow, Full-Space. Guangchao Geng, Zhejiang Univ',
    author: 'G. Geng',
    editor: 'T. Davis',
    date: '2009',
    kind: 'power network problem',
    problem_2D_or_3D: '0',
    num_rows: '14454',
    num_cols: '14454',
    nonzeros: '147972',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '2',
    num_dmperm_blocks: '2',
    structural_full_rank: 'true',
    structural_rank: '14454',
    pattern_symmetry: '1.000',
    numeric_symmetry: '1.000',
    rb_type: 'real',
    structure: 'symmetric',
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
    b_field: 'sparse 14454-by-1
',
    norm: '5.306192e+03',
    min_singular_value: '6.374288e-09',
    condition_number: '8.324369e+11',
    svd_rank: '14444',
    sprank_minus_rank: '10',
    null_space_dimension: '10',
    full_numerical_rank: 'no',
    svd_gap: '1.225807',
    image_files: 'TSOPF_FS_b9_c6.png,TSOPF_FS_b9_c6_dmperm.png,TSOPF_FS_b9_c6_scc.png,TSOPF_FS_b9_c6_svd.png,TSOPF_FS_b9_c6_graph.gif,',
}
