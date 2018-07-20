{
    matrix_id: '2221',
    name: 'TSOPF_FS_b162_c1',
    group: 'TSOPF',
    description: 'transient optimal power flow, Full-Space. Guangchao Geng, Zhejiang Univ',
    author: 'G. Geng',
    editor: 'T. Davis',
    date: '2009',
    kind: 'power network problem',
    problem_2D_or_3D: '0',
    num_rows: '10798',
    num_cols: '10798',
    nonzeros: '608540',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '2',
    num_dmperm_blocks: '2',
    structural_full_rank: 'true',
    structural_rank: '10798',
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
    b_field: 'sparse 10798-by-1
',
    norm: '1.012338e+05',
    min_singular_value: '5.937279e-10',
    condition_number: '1.705053e+14',
    svd_rank: '10677',
    sprank_minus_rank: '121',
    null_space_dimension: '121',
    full_numerical_rank: 'no',
    svd_gap: '1.059994',
    image_files: 'TSOPF_FS_b162_c1.png,TSOPF_FS_b162_c1_dmperm.png,TSOPF_FS_b162_c1_scc.png,TSOPF_FS_b162_c1_svd.png,TSOPF_FS_b162_c1_graph.gif,',
}
