{
    matrix_id: '2244',
    name: 'TSOPF_RS_b678_c2',
    group: 'TSOPF',
    description: 'transient optimal power flow, Reduced-Space. Guangchao Geng, Zhejiang Univ',
    author: 'G. Geng',
    editor: 'T. Davis',
    date: '2009',
    kind: 'power network problem',
    problem_2D_or_3D: '0',
    num_rows: '35696',
    num_cols: '35696',
    nonzeros: '8781949',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '271',
    num_dmperm_blocks: '271',
    structural_full_rank: 'true',
    structural_rank: '35696',
    pattern_symmetry: '0.004',
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
    b_field: 'sparse 35696-by-339
',
    norm: '1.512520e+05',
    min_singular_value: '1.786164e-05',
    condition_number: '8.467978e+09',
    svd_rank: '35696',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
}
