{
    matrix_id: '1289',
    name: 'wathen120',
    group: 'GHS_psdef',
    description: 'Gould,Higham,Scott: matrix from Andy Wathen, Oxford Univ.',
    author: 'A. Wathen',
    editor: 'N. Gould, Y. Hu, J. Scott',
    date: '2004',
    kind: 'random 2D/3D problem',
    problem_2D_or_3D: '1',
    num_rows: '36441',
    num_cols: '36441',
    nonzeros: '565761',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '36441',
    pattern_symmetry: '1.000',
    numeric_symmetry: '1.000',
    rb_type: 'real',
    structure: 'symmetric',
    cholesky_candidate: 'yes',
    positive_definite: 'yes',
    notes: 'A = gallery(\'wathen\',100,120) ; % (in MATLAB)                   
To initialize the MATLAB random number generator to replicate   
this matrix, first do the following:                            
rand(\'state\',0); A = gallery(\'wathen\',100,100)                  
and then generate this matrix using the 100,120 arguments above.
',
    norm: '3.693742e+02',
    min_singular_value: '1.433371e-01',
    condition_number: '2.576962e+03',
    svd_rank: '36441',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
}
