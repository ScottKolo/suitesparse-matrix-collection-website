{
    matrix_id: '2264',
    name: 'tomographic1',
    group: 'Clark',
    description: 'Tomographic reconstruction of a particle field in fluid flow, T. Clark',
    author: 'T. Clark',
    editor: 'T. Davis',
    date: '2009',
    kind: 'computer graphics/vision problem',
    problem_2D_or_3D: '1',
    num_rows: '73159',
    num_cols: '59498',
    nonzeros: '647495',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '27546',
    num_dmperm_blocks: '3546',
    structural_full_rank: 'false',
    structural_rank: '42208',
    pattern_symmetry: '0.000',
    numeric_symmetry: '0.000',
    rb_type: 'real',
    structure: 'rectangular',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'Tomographic reconstruction of a particle field in fluid flow, T. Clark  
See http://www.mathworks.com/matlabcentral/newsreader/view_thread/254747
for a discussion.  The problem can be solved via lsqlin in MATLAB:      
lb = zeros (n,1) ;                                                      
x = lsqlin (A, b, [ ], [ ], [ ], [ ], lb) ;                             
',
    b_field: 'full 73159-by-1
',
    image_files: 'tomographic1.png,tomographic1_scc.png,tomographic1_graph.gif,',
}
