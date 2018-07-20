{
    matrix_id: '2241',
    name: 'TSOPF_RS_b39_c30',
    group: 'TSOPF',
    description: 'transient optimal power flow, Reduced-Space. Guangchao Geng, Zhejiang Univ',
    author: 'G. Geng',
    editor: 'T. Davis',
    date: '2009',
    kind: 'power network problem',
    problem_2D_or_3D: '0',
    num_rows: '60098',
    num_cols: '60098',
    nonzeros: '1079986',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '3011',
    num_dmperm_blocks: '3011',
    structural_full_rank: 'true',
    structural_rank: '60098',
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
    b_field: 'sparse 60098-by-19
',
    image_files: 'TSOPF_RS_b39_c30.png,TSOPF_RS_b39_c30_dmperm.png,TSOPF_RS_b39_c30_scc.png,TSOPF_RS_b39_c30_APlusAT_graph.gif,TSOPF_RS_b39_c30_graph.gif,',
}
