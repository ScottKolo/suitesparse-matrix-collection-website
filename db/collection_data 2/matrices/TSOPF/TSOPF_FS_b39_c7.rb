{
    matrix_id: '2229',
    name: 'TSOPF_FS_b39_c7',
    group: 'TSOPF',
    description: 'transient optimal power flow, Full-Space. Guangchao Geng, Zhejiang Univ',
    author: 'G. Geng',
    editor: 'T. Davis',
    date: '2009',
    kind: 'power network problem',
    problem_2D_or_3D: '0',
    num_rows: '28216',
    num_cols: '28216',
    nonzeros: '730080',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '2',
    num_dmperm_blocks: '2',
    structural_full_rank: 'true',
    structural_rank: '28216',
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
    b_field: 'sparse 28216-by-1
',
    norm: '2.450638e+04',
    min_singular_value: '7.857493e-10',
    condition_number: '3.118855e+13',
    svd_rank: '28017',
    sprank_minus_rank: '199',
    null_space_dimension: '199',
    full_numerical_rank: 'no',
    svd_gap: '1.003775',
    image_files: 'TSOPF_FS_b39_c7.png,TSOPF_FS_b39_c7_dmperm.png,TSOPF_FS_b39_c7_scc.png,TSOPF_FS_b39_c7_svd.png,TSOPF_FS_b39_c7_graph.gif,',
}
