{
    matrix_id: '2854',
    name: 'GAP-road',
    group: 'GAP',
    description: 'GAP benchmark: road',
    author: 'C. Demetrescu, A. V. Goldberg, D. S. Johnson',
    editor: 'S. Beamer, K. Asanovic, D. Patterson',
    date: '2017',
    kind: 'directed weighted graph',
    problem_2D_or_3D: '0',
    num_rows: '23947347',
    num_cols: '23947347',
    nonzeros: '57708624',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    pattern_symmetry: '1.000',
    numeric_symmetry: '1.000',
    rb_type: 'integer',
    structure: 'symmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'GAP/GAP-road matrix:  this is the \'road\' graph from the GAP benchmark  
suite, as described in "The GAP Benchmark Suite", by Scott Beamer,     
Krste Asanovic\', and David Patterson, https://arxiv.org/abs/1508.03619.
                                                                       
In that paper, the Road graph is described as follows:                 
                                                                       
    Road (|V|=23.9M, |E|=58.3M, directed) is the distances of all of   
    the roads in the USA [10].  Although it is substantially smaller   
    than the rest of the graphs, it has a high diameter which can      
    cause some synchronous implementations to have long runtimes.      
                                                                       
    [10] 9th DIMACS implementation challenge -- shortest paths.        
    http://www.dis.uniroma1.it/challenge9/, 2006.                      
                                                                       
The pattern already appears in the SuiteSparse Matrix Collection as    
DIMACS10/road_usa, which is a binary matrix, but the GAP benchmark     
includes integer weights for the edges, in the range 1 to 368,885.     
The mean edge weight is 2949.1, the median edge weight is 1447, and    
the standard deviation is 4074.  The graph has exactly n = 23,947,347  
nodes and nnz (A) = 57,708,624 edges.  The DIMACS9 page reports a      
higher number of edges (58,333,344); this higher count includes        
duplicate entries that appear in the DIMACS9 graph but not in the      
GAP/GAP-road graph.  Those duplicates are also discarded here.         
                                                                       
In the GAP/GAP-road gragh, duplicates have been discarded.  If two     
edges (i,j) appear in the file with different edge weights, the edge   
weight appearing earlier in the file is discarded and replaced with    
the latter edge weight.                                                
                                                                       
All three versions of the graph have no self-edges.  Note that         
the GAP paper states that the graph is directed, but the GAP data      
actually reflects a symmetric matrix, including symmetric edge         
weights.  However, the GAP benchmark treats the graph as *directed*,   
not undirected.  Thus, the Problem.kind string for this problem is     
listed here as "directed weighted graph".  The edge count of           
57,708,624 includes edges in both the upper and lower triangular       
part of the adjacency matrix.                                          
                                                                       
The following shows the relationship between the two versions of       
this graph in this collection:                                         
                                                                       
    Prob1 = ssget (\'DIMACS10/road_usa\')                                
    Prob2 = ssget (\'GAP/GAP-road\')                                     
    A1 = Prob1.A ;                                                     
    A2 = Prob2.A ;                                                     
    assert (isequal (A1, spones (A2))) ;                               
                                                                       
If the original data from the DIMACS9 file USA-road-d.USA.gr is        
imported into MATLAB as the vectors I, J, and X (of length             
e = 58,333,344), then the GAP problem is identical to the following    
matrix A3, using the MATLAB interface to GraphBLAS:                    
                                                                       
    A3 = GrB.build (I, J, X, n, n, \'2nd\') ;                            
    assert (isequal (A2, A3)) ;                                        
                                                                       
In fact, the duplicates seem to be identical in edge weight            
since the A4 matrix is also identical to the GAP/GAP-road matrix:      
                                                                       
    A4 = GrB.build (I, J, X, n, n, \'1st\') ;                            
    assert (isequal (A2, A4)) ;                                        
                                                                       
The GAP breadth-first-search (BFS) benchmark generates 64 random       
source nodes and evaluates the time to compute the BFS from each of    
the 64 sources.  The betweenness-centrality (BC) runs 16 trials with   
4 source nodes each.  These source nodes are the same, in the same     
order.  That is, the first 4 BFS source nodes are the same 4 source    
nodes for the first trial of BC.  In ONE-based notation (where nodes   
are numbered 1 to n), the 64 source nodes are:                         
                                                                       
     4795721    21003854      417969     6496512                       
     6648700     9811074    22247479     5720253                       
    12366460    20413730     4217375     2674750                       
    22085558    19445041     2360789    19115969                       
     7758768    13468235       30368    18599548                       
     7526109    16836281    12742068     7697996                       
     5876444     9616341     2497674    10052291                       
    12493058     1670856     2760680     2460942                       
     8489651     5005226     8744646     8512024                       
    21912166     1105391    15432164     1600178                       
    19079470    16516638    20202567    21372804                       
     2898010     8491278    18798318    23757561                       
    17161820    23180740    10997086     3730631                       
     1079069    15426823    12190926     1155219                       
    10693489    14434836    19963340     3486186                       
    18383270    20269909    12370765     7843141                       
                                                                       
The first row are the 4 source nodes for the first BC trial,           
the 2nd row is for the second BC trial, and so on.                     
                                                                       
These node ids also appear as Problem.aux.sources, in one-based        
notation.  One-based notation is used because the Matrix Market        
format is one-based, as is MATLAB.  If you use a zero-based method     
(such as the GAP benchmark itself, or the C API to GraphBLAS), be      
sure to subtract one from the node ids above (and in                   
Problem.aux.sources) to obtain the right source nodes.                 
                                                                       
The original DIMACS9 problem (and edge weights) was currated by        
Camil Demetrescu, Andrew V. Goldberg, and David S. Johnson.  It was    
then added to the GAP benchmark by Scott Beamer, Krste Asanovic\',      
and David Patterson, with duplicate edges removed.  Edge weights       
were discarded when the problem was included in the DIMACS10 data      
set.  GAP/GAP-road was then added to the SuiteSparse Matrix            
Collection by Tim Davis, from the GAP benchmark data set.              
',
    aux_fields: 'sources: full 64-by-1
',    image_files: '',
}
