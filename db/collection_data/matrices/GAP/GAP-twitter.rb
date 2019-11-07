{
    matrix_id: '2852',
    name: 'GAP-twitter',
    group: 'GAP',
    description: 'GAP benchmark: twitter',
    author: 'H. Kwak, C. Lee, H. Park, S. Moon',
    editor: 'S. Beamer, K. Asanovic, D. Patterson',
    date: '2017',
    kind: 'directed weighted graph',
    problem_2D_or_3D: '0',
    num_rows: '61578415',
    num_cols: '61578415',
    nonzeros: '1468364884',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '27970913',
    pattern_symmetry: '0.362',
    numeric_symmetry: '0.001',
    rb_type: 'integer',
    structure: 'unsymmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'GAP/GAP-twitter matrix:  this is the \'twitter\' graph from the GAP    
benchmark suite, as described in "The GAP Benchmark Suite", by Scott 
Beamer, Krste Asanovic\', and David Patterson,                        
https://arxiv.org/abs/1508.03619 .                                   
                                                                     
In that paper, the Twitter graph is described as follows:            
                                                                     
    Twitter (|V|=61.6M, |E|=1,468.4M, directed) is an example of a   
    social network topology [18]. This particular crawl of Twitter   
    has been commonly used by researchers and thus eases comparisons 
    with prior work. By virtue of it coming from real-world data, it 
    has interesting irregularities and the skew in its degree        
    distribution can be a challenge for some implementations.        
                                                                     
    [18] Haewoon Kwak, Changhyun Lee, Hosung Park, and Sue Moon.     
    What is Twitter, a social network or a news media? International 
    World Wide Web Conference (WWW), 2010.                           
                                                                     
The graph already appears in the SuiteSparse Matrix Collection as    
SNAP/twitter7, but with different numbers of nodes and edges.  The   
GAP/GAP-twitter graph has 61,578,415 and 1,468,364,884 edges.        
The SNAP/twitter7 graph has 41,652,230 nodes and 1,468,365,182 edges.
The edge counts differ by 298, which are 298 self-edges in           
SNAP/twitter7 that do not appear in the GAP-twitter graph.           
                                                                     
The node counts differ because of how nodes with no incident         
edges are treated.  Every node in SNAP/twitter is incident on        
at least one edge (incoming or outgoing).  The GAP/GAP-twitter7      
matrix has 19,926,185 nodes that have no incident edges at all       
(no incoming nor outgoing edges, nor self edges).                    
                                                                     
The original data at http://an.kaist.ac.kr/traces/WWW2010.html       
lists edges with node ids that correspond to active user ids.        
User ids that did not exist at the time the data was collected,      
do not appear in the edge lists.  These are the nodes that appear    
in GAP-twitter but not in SNAP/twitter7.                             
                                                                     
The other difference between GAP-twitter and SNAP/twitter7           
is that the former has been given random integer edge weights (in    
range 1 to 255), whereas SNAP/twitter7 is a binary matrix.           
                                                                     
The following shows the relationship between the two versions of     
this graph in this collection:                                       
                                                                     
    Prob1 = ssget (\'SNAP/twitter7\')                                  
    Prob2 = ssget (\'GAP/GAP-twitter\')                                
    A1 = GrB.offdiag (Prob1.A) ;    % remove 298 diagonal entries    
    id = Prob1.aux.nodeid + 1 ;                                      
    A2 = Prob2.A ;                                                   
    S2 = spones (A2 (id, id)) ;     % pattern of submatrix of A2     
    assert (nnz (S2) == nnz (A2))   % S2 has all entries from A2     
    assert (isequal (A1, S2)) ;     % now they are equal             
                                                                     
The GAP breadth-first-search (BFS) benchmark generates 64 random     
source nodes and evaluates the time to compute the BFS from each of  
the 64 sources.  The betweenness-centrality (BC) runs 16 trials with 
4 source nodes each.  These source nodes are the same, in the same   
order.  That is, the first 4 BFS source nodes are the same 4 source  
nodes for the first trial of BC.  In one-based notation (where nodes 
are numbered 1 to n), the 64 source nodes are:                       
                                                                     
    12441073    54488258    25451916    57714474                     
    14839495    32081105    52957358    50444381                     
    49590702    20127817    34939334    48251002                     
    19524254    43676727    33055509    15244688                     
    24946739     6479473    26077683    22023876                     
    22081916    40034163    49496015    42847508                     
    52409558    55445389    22028098    48766649                     
    44521242    60135543    28528672     9678013                     
    40020307    31625736    37446893    51788953                     
    52584256    20346697    48387910    37337428                     
    50501085    30130062    41185894    56495704                     
    45663306    33359461    48143059    33291514                     
    53461446    29340611    34148499    49171807                     
    35550697    14521508    51633219    46823383                     
    19396274    19871751    36862678    49539127                     
    34016453    36567396    55487794    14391371                     
                                                                     
The first row are the 4 source nodes for the first BC trial,         
the 2nd row is for the second BC trial, and so on.                   
                                                                     
These node ids also appear as Problem.aux.sources, in one-based      
notation.  One-based notation is used because the Matrix Market      
format is one-based, as is MATLAB.  If you use a zero-based method   
(such as the GAP benchmark itself, or the C API to GraphBLAS), be    
sure to subtract one from the node ids above (and in                 
Problem.aux.sources) to obtain the right source nodes.               
                                                                     
The original twitter problem was currated by                         
Haewoon Kwak (http://an.kaist.ac.kr/~haewoon),                       
Changhyun Lee (http://an.kaist.ac.kr/~chlee),                        
Hosung Park (http://an.kaist.ac.kr/~hosung),                         
and Sue Moon (http://an.kaist.ac.kr/~sbmoon).                        
                                                                     
It was added to the GAP benchmark by Scott Beamer, Krste Asanovic\',  
and David Patternson based on the original data at:                  
http://an.kaist.ac.kr/~haewoon/release/twitter_social_graph/         
twitter_rv.tar.gz.  Random integer edge weights (1 to 255) were      
then added to the graph in the GAP benchmark.  It was then included  
into the SuiteSparse Matrix Collection, from the GAP benchmark       
graph, by Tim Davis.                                                 
                                                                     
Note that the SNAP/twitter7 problem in the SuiteSparse Matrix        
Collection preserves all the meta-data, including information        
about 6,499 celebrities in the graph.  This metadata does not        
appear in this GAP/GAP-twitter version of the graph.                 
',
    aux_fields: 'sources: full 64-by-1
',    image_files: '',
}
