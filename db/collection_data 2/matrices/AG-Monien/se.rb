{
    matrix_id: '2440',
    name: 'se',
    group: 'AG-Monien',
    description: 'shuffle-exchange graph sequence',
    author: 'R. Diekmann, R. Preis',
    editor: 'R. Diekmann, R. Preis',
    date: '1998',
    kind: 'undirected graph sequence',
    problem_2D_or_3D: '0',
    num_rows: '32768',
    num_cols: '32768',
    nonzeros: '98300',
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
                                                                               
Graphs in the se sequence:                                                     
                                                                               
     1 : SE3          :       8 nodes      10 edges      20 nonzeros           
     2 : SE4          :      16 nodes      21 edges      42 nonzeros           
     3 : SE5          :      32 nodes      46 edges      92 nonzeros           
     4 : SE6          :      64 nodes      93 edges     186 nonzeros           
     5 : SE7          :     128 nodes     190 edges     380 nonzeros           
     6 : SE8          :     256 nodes     381 edges     762 nonzeros           
     7 : SE9          :     512 nodes     766 edges    1532 nonzeros           
     8 : SE10         :    1024 nodes    1533 edges    3066 nonzeros           
     9 : SE11         :    2048 nodes    3070 edges    6140 nonzeros           
    10 : SE12         :    4096 nodes    6141 edges   12282 nonzeros           
    11 : SE13         :    8192 nodes   12286 edges   24572 nonzeros           
    12 : SE14         :   16384 nodes   24573 edges   49146 nonzeros           
    13 : SE15         :   32768 nodes   49150 edges   98300 nonzeros           
                                                                               
The primary graph (Problem.A) in this sequence is the last graph               
in the sequence.                                                               
',
    aux_fields: 'G: cell 13-by-1
Gname: cell 13-by-1
',    norm: '2.999977e+00',
    min_singular_value: '7.960670e-19',
    condition_number: '3768498719885449216',
    svd_rank: '32311',
    null_space_dimension: '457',
    full_numerical_rank: 'no',
    svd_gap: '2423381648311.489746',
    image_files: 'se.png,se_svd.png,se_graph.gif,',
}
