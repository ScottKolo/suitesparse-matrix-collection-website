{
    matrix_id: '2545',
    name: 'Geo_1438',
    group: 'Janna',
    description: 'geomechanical model of earth crust with underground deformation',
    author: 'C. Janna, M. Ferronato',
    editor: 'T. Davis',
    date: '2011',
    kind: 'structural problem',
    problem_2D_or_3D: '1',
    num_rows: '1437960',
    num_cols: '1437960',
    nonzeros: '60236322',
    num_explicit_zeros: '2920368',
    num_strongly_connected_components: '66481',
    num_dmperm_blocks: '66481',
    structural_full_rank: 'true',
    structural_rank: '1437960',
    pattern_symmetry: '1.000',
    numeric_symmetry: '1.000',
    rb_type: 'real',
    structure: 'symmetric',
    cholesky_candidate: 'yes',
    positive_definite: 'yes',
    notes: 'Authors: Carlo Janna and Massimiliano Ferronato                 
                                                                
Symmetric Positive Definite Matrix                              
# equations:   1437960                                          
# non-zeroes: 63156690                                          
Problem description: Geomechanical problem                      
                                                                
The matrix Geo_1438 is obtained from a geomechanical problem    
discretizing a region of the earth crust subject to underground 
deformation. The computational domain is a box with an areal    
extent of 50 x 50 km and 10 km deep consisting of regularly     
shaped tetrahedral Finite Elements.  The problem arises from a  
3D discretization with three displacement unknowns associated to
each node of the grid.  This matrix has been used as a test case
in the following paper:                                         
                                                                
1) C. Janna, M. Ferronato, G. Gambolati. "A Block FSAI-ILU      
parallel preconditioner for symmetric positive definite linear  
systems". SIAM Journal on Scientific Computing, 32, pp.         
2468-2484, 2010.                                                
',
    image_files: 'Geo_1438.png,Geo_1438_dmperm.png,Geo_1438_graph.gif,',
}
