{
    matrix_id: '1909',
    name: 'smt',
    group: 'TKK',
    description: '3D model, thermal stress analysis of surface mounted transistor. R Kohia',
    author: 'R. Kouhia',
    editor: 'T. Davis',
    date: '2008',
    kind: 'structural problem',
    problem_2D_or_3D: '1',
    num_rows: '25710',
    num_cols: '25710',
    nonzeros: '3749582',
    num_explicit_zeros: '3602',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '25710',
    pattern_symmetry: '1.000',
    numeric_symmetry: '1.000',
    rb_type: 'real',
    structure: 'symmetric',
    cholesky_candidate: 'yes',
    positive_definite: 'yes',
    notes: 'Matrix problems from Reijo Kouhia, Structural Mechanics, Helsinki      
University of Technology.   http://users.tkk.fi/~kouhia/sparse.html    
                                                                       
Surface mount transistor, 1704 reduced triquadratic elem, therm stress.
This is a stiffness matrix from a thermal stress analysis of           
a surface mounted transistor.  Due to symmetry only one half of        
the model is discretized in 1704 standard reduced triquadratic elements
(20 node serendipity).  There are 5 different materials.               
The stiffness matrix is integrated by 3x3x3 Gaussian quadrature.       
Separate load vector file is also available.                           
Figure of the FE model can be seen in a separate description,          
or downloaded as a postscript file from the contributors www-pages.    
Contributor:                                                           
Reijo Kouhia, Helsinki University of Technology,                       
               Laboratory of Structural Mechanics                      
               PO Box 2100, 02015 HUT, Finland                         
 e-mail: reijo.kouhia@hut.fi                                           
 http://www.hut.fi/~kouhia                                             
',
    b_field: 'full 25710-by-1
',
    aux_fields: 'coord: full 25710-by-3
',    norm: '5.297664e+06',
    min_singular_value: '3.338669e-03',
    condition_number: '1.586759e+09',
    svd_rank: '25710',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
    image_files: 'smt.png,smt_gplot.png,smt_svd.png,smt_graph.gif,',
}
