{
    matrix_id: '2424',
    name: 'whitaker3',
    group: 'AG-Monien',
    description: '2D finite element problem',
    author: 'R. Diekmann, R. Preis',
    editor: 'R. Diekmann, R. Preis',
    date: '1998',
    kind: '2D/3D problem',
    problem_2D_or_3D: '1',
    num_rows: '9800',
    num_cols: '9800',
    nonzeros: '57978',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '9800',
    pattern_symmetry: '1.000',
    numeric_symmetry: '1.000',
    rb_type: 'binary',
    structure: 'symmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'AG-Monien Graph Collection, Ralf Diekmann and Robert Preis                     
http://www2.cs.uni-paderborn.de/fachbereich/AG/monien/RESEARCH/PART/graphs.html
                                                                               
A collection of test graphs from various sources.  Many of the graphs          
include XY or XYZ coordinates.  This set also includes some graphs from        
the Harwell-Boeing collection, the NASA matrices, and some random matrices     
which are not included here in the AG-Monien/ group of the UF Collection.      
In addition, two graphs already appear in other groups:                        
                                                                               
   AG-Monien/big : same as Nasa/barth5, Pothen/barth5 (not included here)      
   AG-Monien/cage_3_11 : same as Pajek/GD98_c (included here)                  
                                                                               
The AG-Monien/GRID subset is not included.  It contains square grids that      
are already well-represented in the UF Collection.                             
                                                                               
Six of the problem sets are included as sequences, each sequence being         
a single problem instance in the UF Collection:                                
                                                                               
   bfly:  10 butterfly graphs 3..12                                            
   cage:  45 cage graphs 3..12                                                 
   cca:   10 cube-connected cycle graphs, no wrap                              
   ccc:   10 cube-connected cycle graphs, with wrap                            
   debr:  18 De Bruijn graphs                                                  
   se:    13 shuffle-exchange graphs                                           
                                                                               
Problem.aux.G{:} are the graphs in these 6 sequences.  Problem.aux.Gname{:}    
are the original names of each graph, and Problemm.aux.Gcoord{:} are the       
xy or xyz coordinates of each node, if present.                                
',
    aux_fields: 'coord: full 9800-by-2
',    norm: '6.024024e+00',
    min_singular_value: '1.919927e-06',
    condition_number: '3.137632e+06',
    svd_rank: '9800',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
    image_files: 'whitaker3.png,whitaker3_dual.png,whitaker3_dual_gplot.png,whitaker3_dual_svd.png,whitaker3_gplot.png,whitaker3_svd.png,whitaker3_dual_graph.gif,whitaker3_graph.gif,',
}
