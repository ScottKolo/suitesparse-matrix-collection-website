{
    matrix_id: '2245',
    name: 'TSOPF_RS_b9_c6',
    group: 'TSOPF',
    description: 'transient optimal power flow, Reduced-Space. Guangchao Geng, Zhejiang Univ',
    author: 'G. Geng',
    editor: 'T. Davis',
    date: '2009',
    kind: 'power network problem',
    problem_2D_or_3D: '0',
    num_rows: '7224',
    num_cols: '7224',
    nonzeros: '54082',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1204',
    num_dmperm_blocks: '1204',
    structural_full_rank: 'true',
    structural_rank: '7224',
    pattern_symmetry: '0.154',
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
    b_field: 'sparse 7224-by-5
',
    norm: '5.548158e+01',
    min_singular_value: '1.791630e-05',
    condition_number: '3.096709e+06',
    svd_rank: '7224',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
    image_files: 'TSOPF_RS_b9_c6.png,TSOPF_RS_b9_c6_dmperm.png,TSOPF_RS_b9_c6_scc.png,TSOPF_RS_b9_c6_svd.png,TSOPF_RS_b9_c6_APlusAT_graph.gif,TSOPF_RS_b9_c6_graph.gif,',
}
