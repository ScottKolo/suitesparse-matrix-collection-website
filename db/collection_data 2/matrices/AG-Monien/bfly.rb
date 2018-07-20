{
    matrix_id: '2435',
    name: 'bfly',
    group: 'AG-Monien',
    description: 'butterfly graph sequence',
    author: 'R. Diekmann, R. Preis',
    editor: 'R. Diekmann, R. Preis',
    date: '1998',
    kind: 'undirected graph sequence',
    problem_2D_or_3D: '0',
    num_rows: '49152',
    num_cols: '49152',
    nonzeros: '196608',
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
                                                                               
Graphs in the bfly sequence:                                                   
                                                                               
     1 : BFLY3        :      24 nodes      48 edges      96 nonzeros           
     2 : BFLY4        :      64 nodes     128 edges     256 nonzeros           
     3 : BFLY5        :     160 nodes     320 edges     640 nonzeros           
     4 : BFLY6        :     384 nodes     768 edges    1536 nonzeros           
     5 : BFLY7        :     896 nodes    1792 edges    3584 nonzeros           
     6 : BFLY8        :    2048 nodes    4096 edges    8192 nonzeros           
     7 : BFLY9        :    4608 nodes    9216 edges   18432 nonzeros           
     8 : BFLY10       :   10240 nodes   20480 edges   40960 nonzeros           
     9 : BFLY11       :   22528 nodes   45056 edges   90112 nonzeros           
    10 : BFLY12       :   49152 nodes   98304 edges  196608 nonzeros           
                                                                               
The primary graph (Problem.A) in this sequence is the last graph               
in the sequence.                                                               
',
    aux_fields: 'coord: full 49152-by-3
G: cell 10-by-1
Gname: cell 10-by-1
Gcoord: cell 10-by-1
',    image_files: 'bfly.png,bfly_gplot.png,bfly_graph.gif,',
}
