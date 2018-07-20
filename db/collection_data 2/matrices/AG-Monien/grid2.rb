{
    matrix_id: '2418',
    name: 'grid2',
    group: 'AG-Monien',
    description: '2D finite element problem',
    author: 'R. Diekmann, R. Preis',
    editor: 'R. Diekmann, R. Preis',
    date: '1998',
    kind: '2D/3D problem',
    problem_2D_or_3D: '1',
    num_rows: '3296',
    num_cols: '3296',
    nonzeros: '12864',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '2',
    structural_full_rank: 'true',
    structural_rank: '3296',
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
    aux_fields: 'coord: full 3296-by-2
',    norm: '3.988827e+00',
    min_singular_value: '1.987524e-17',
    condition_number: '200693295611335616',
    svd_rank: '3284',
    sprank_minus_rank: '12',
    null_space_dimension: '12',
    full_numerical_rank: 'no',
    svd_gap: '4347447643982.125977',
    image_files: 'grid2.png,grid2_dmperm.png,grid2_dual.png,grid2_dual_gplot.png,grid2_dual_svd.png,grid2_gplot.png,grid2_svd.png,grid2_dual_graph.gif,grid2_graph.gif,',
}
