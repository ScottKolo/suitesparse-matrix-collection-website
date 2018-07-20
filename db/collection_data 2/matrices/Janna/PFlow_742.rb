{
    matrix_id: '2661',
    name: 'PFlow_742',
    group: 'Janna',
    description: '3D pressure-temp evoluation in porous media',
    author: 'C. Janna, M. Ferronato',
    editor: 'T. Davis',
    date: '2014',
    kind: '2D/3D problem',
    problem_2D_or_3D: '1',
    num_rows: '742793',
    num_cols: '742793',
    nonzeros: '37138461',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '57652',
    num_dmperm_blocks: '57652',
    structural_full_rank: 'true',
    structural_rank: '742793',
    pattern_symmetry: '1.000',
    numeric_symmetry: '1.000',
    rb_type: 'real',
    structure: 'symmetric',
    cholesky_candidate: 'yes',
    positive_definite: 'yes',
    notes: 'Janna/PFlow_742: 3D pressure-temperature evolution in porous media
                                                                  
Authors: Carlo Janna and Massimiliano Ferronato                   
Symmetric Positive Definite Matrix                                
# equations:     742,793                                          
# non-zeroes: 37,138,461                                          
                                                                  
The matrix PFlow_742 is obtained from a 3D simulation of the      
pressure-temperature field in a multilayered porous media         
discretized by hexahedral Finite Elements. The ill-conditioning   
of the matrix is due to the strong contrasts in the material      
properties fo different layers.                                   
                                                                  
Further information may be found in the following paper:          
                                                                  
1) C. Janna, M. Ferronato, G. Gambolati. "The use of supernodes   
in factored sparse approximate inverse preconditioning". SIAM     
Journal on Scientific Computing, submitted.                       
',
    image_files: 'PFlow_742.png,PFlow_742_dmperm.png,PFlow_742_graph.gif,',
}
