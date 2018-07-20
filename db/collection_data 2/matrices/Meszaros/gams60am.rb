{
    matrix_id: '1677',
    name: 'gams60am',
    group: 'Meszaros',
    description: 'Infeasible linear programming problem, C. Meszaros test set',
    author: '',
    editor: 'C. Meszaros',
    date: '2004',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '714',
    num_cols: '1071',
    nonzeros: '2607',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '4',
    num_dmperm_blocks: '2',
    structural_full_rank: 'true',
    structural_rank: '714',
    pattern_symmetry: '0.000',
    numeric_symmetry: '0.000',
    rb_type: 'real',
    structure: 'rectangular',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'http://www.sztaki.hu/~meszaros/public_ftp/lptestset      
Converted to standard form via Resende and Veiga\'s mpsrd:
minimize c\'*x, subject to A*x=b and lo <= x <= hi        
',
    b_field: 'full 714-by-1
',
    aux_fields: 'c: full 1071-by-1
lo: full 1071-by-1
hi: full 1071-by-1
z0: full 1-by-1
',    norm: '2.999086e+00',
    min_singular_value: '5.426474e-01',
    condition_number: '5.526768e+00',
    svd_rank: '714',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
    image_files: 'gams60am.png,gams60am_dmperm.png,gams60am_scc.png,gams60am_svd.png,gams60am_graph.gif,',
}
