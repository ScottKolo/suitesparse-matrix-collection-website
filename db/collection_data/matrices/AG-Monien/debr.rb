{
    matrix_id: '2439',
    name: 'debr',
    group: 'AG-Monien',
    description: 'De Bruijn graph sequence',
    author: 'R. Diekmann, R. Preis',
    editor: 'R. Diekmann, R. Preis',
    date: '1998',
    kind: 'undirected graph sequence',
    problem_2D_or_3D: '0',
    num_rows: '1048576',
    num_cols: '1048576',
    nonzeros: '4194298',
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
                                                                               
Graphs in the debr sequence:                                                   
                                                                               
     1 : DEBR3        :       8 nodes      13 edges      26 nonzeros           
     2 : DEBR4        :      16 nodes      29 edges      58 nonzeros           
     3 : DEBR5        :      32 nodes      61 edges     122 nonzeros           
     4 : DEBR6        :      64 nodes     125 edges     250 nonzeros           
     5 : DEBR7        :     128 nodes     253 edges     506 nonzeros           
     6 : DEBR8        :     256 nodes     509 edges    1018 nonzeros           
     7 : DEBR9        :     512 nodes    1021 edges    2042 nonzeros           
     8 : DEBR10       :    1024 nodes    2045 edges    4090 nonzeros           
     9 : DEBR11       :    2048 nodes    4093 edges    8186 nonzeros           
    10 : DEBR12       :    4096 nodes    8189 edges   16378 nonzeros           
    11 : DEBR13       :    8192 nodes   16381 edges   32762 nonzeros           
    12 : DEBR14       :   16384 nodes   32765 edges   65530 nonzeros           
    13 : DEBR15       :   32768 nodes   65533 edges  131066 nonzeros           
    14 : DEBR16       :   65536 nodes  131069 edges  262138 nonzeros           
    15 : DEBR17       :  131072 nodes  262141 edges  524282 nonzeros           
    16 : DEBR18       :  262144 nodes  524285 edges 1048570 nonzeros           
    17 : DEBR19       :  524288 nodes 1048573 edges 2097146 nonzeros           
    18 : DEBR20       : 1048576 nodes 2097149 edges 4194298 nonzeros           
                                                                               
The primary graph (Problem.A) in this sequence is the last graph               
in the sequence.                                                               
',
    aux_fields: 'G: cell 18-by-1
Gname: cell 18-by-1
',}
