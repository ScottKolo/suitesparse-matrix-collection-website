{
    matrix_id: '2219',
    name: 'TSOPF_RS_b2383',
    group: 'TSOPF',
    description: 'transient optimal power flow, Reduced-Space. Guangchao Geng, Zhejiang Univ',
    author: 'G. Geng',
    editor: 'T. Davis',
    date: '2009',
    kind: 'power network problem',
    problem_2D_or_3D: '0',
    num_rows: '38120',
    num_cols: '38120',
    nonzeros: '16171169',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '378',
    num_dmperm_blocks: '378',
    structural_full_rank: 'true',
    structural_rank: '38120',
    pattern_symmetry: '0.002',
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
    norm: '2.134755e+04',
    min_singular_value: '9.691201e-05',
    condition_number: '2.202776e+08',
    svd_rank: '38120',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
    image_files: 'TSOPF_RS_b2383.png,TSOPF_RS_b2383_c1.png,TSOPF_RS_b2383_c1_dmperm.png,TSOPF_RS_b2383_c1_scc.png,TSOPF_RS_b2383_c1_svd.png,TSOPF_RS_b2383_dmperm.png,TSOPF_RS_b2383_scc.png,TSOPF_RS_b2383_svd.png,TSOPF_RS_b2383_APlusAT_graph.gif,TSOPF_RS_b2383_c1_APlusAT_graph.gif,TSOPF_RS_b2383_c1_graph.gif,TSOPF_RS_b2383_graph.gif,',
}
