{
    matrix_id: '2437',
    name: 'cca',
    group: 'AG-Monien',
    description: 'cube-connected cycle (no wrap) graph sequence',
    author: 'R. Diekmann, R. Preis',
    editor: 'R. Diekmann, R. Preis',
    date: '1998',
    kind: 'undirected graph sequence',
    problem_2D_or_3D: '0',
    num_rows: '49152',
    num_cols: '49152',
    nonzeros: '139264',
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
                                                                               
Graphs in the cca sequence:                                                    
                                                                               
     1 : CCA3         :      24 nodes      28 edges      56 nonzeros           
     2 : CCA4         :      64 nodes      80 edges     160 nonzeros           
     3 : CCA5         :     160 nodes     208 edges     416 nonzeros           
     4 : CCA6         :     384 nodes     512 edges    1024 nonzeros           
     5 : CCA7         :     896 nodes    1216 edges    2432 nonzeros           
     6 : CCA8         :    2048 nodes    2816 edges    5632 nonzeros           
     7 : CCA9         :    4608 nodes    6400 edges   12800 nonzeros           
     8 : CCA10        :   10240 nodes   14336 edges   28672 nonzeros           
     9 : CCA11        :   22528 nodes   31744 edges   63488 nonzeros           
    10 : CCA12        :   49152 nodes   69632 edges  139264 nonzeros           
                                                                               
The primary graph (Problem.A) in this sequence is the last graph               
in the sequence.                                                               
',
    aux_fields: 'coord: full 49152-by-3
G: cell 10-by-1
Gname: cell 10-by-1
Gcoord: cell 10-by-1
',    image_files: 'cca.png,cca_gplot.png,cca_graph.gif,',
}
