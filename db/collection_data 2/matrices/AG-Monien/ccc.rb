{
    matrix_id: '2438',
    name: 'ccc',
    group: 'AG-Monien',
    description: 'cube-connected cycle graph sequence',
    author: 'R. Diekmann, R. Preis',
    editor: 'R. Diekmann, R. Preis',
    date: '1998',
    kind: 'undirected graph sequence',
    problem_2D_or_3D: '0',
    num_rows: '49152',
    num_cols: '49152',
    nonzeros: '147456',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
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
                                                                               
Graphs in the ccc sequence:                                                    
                                                                               
     1 : CCC3         :      24 nodes      36 edges      72 nonzeros           
     2 : CCC4         :      64 nodes      96 edges     192 nonzeros           
     3 : CCC5         :     160 nodes     240 edges     480 nonzeros           
     4 : CCC6         :     384 nodes     576 edges    1152 nonzeros           
     5 : CCC7         :     896 nodes    1344 edges    2688 nonzeros           
     6 : CCC8         :    2048 nodes    3072 edges    6144 nonzeros           
     7 : CCC9         :    4608 nodes    6912 edges   13824 nonzeros           
     8 : CCC10        :   10240 nodes   15360 edges   30720 nonzeros           
     9 : CCC11        :   22528 nodes   33792 edges   67584 nonzeros           
    10 : CCC12        :   49152 nodes   73728 edges  147456 nonzeros           
                                                                               
The primary graph (Problem.A) in this sequence is the last graph               
in the sequence.                                                               
',
    aux_fields: 'coord: full 49152-by-3
G: cell 10-by-1
Gname: cell 10-by-1
Gcoord: cell 10-by-1
',    image_files: 'ccc.png,ccc_gplot.png,ccc_graph.gif,',
}
