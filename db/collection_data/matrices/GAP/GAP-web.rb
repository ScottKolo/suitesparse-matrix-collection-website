{
    matrix_id: '2853',
    name: 'GAP-web',
    group: 'GAP',
    description: 'GAP benchmark: web',
    author: 'Laboratory for Web Algorithmics (LAW), Universita degli Studi di Milano, http://law.di.unimi.it/index.php',
    editor: 'S. Beamer, K. Asanovic, D. Patterson',
    date: '2017',
    kind: 'directed weighted graph',
    problem_2D_or_3D: '0',
    num_rows: '50636151',
    num_cols: '50636151',
    nonzeros: '1930292948',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '8815054',
    pattern_symmetry: '0.125',
    numeric_symmetry: '0.000',
    rb_type: 'integer',
    structure: 'unsymmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'GAP/GAP-web matrix:  this is the \'web\' graph from the GAP            
benchmark suite, as described in "The GAP Benchmark Suite", by Scott 
Beamer, Krste Asanovic\', and David Patterson,                        
https://arxiv.org/abs/1508.03619 .                                   
                                                                     
In that paper, the Web graph is described as follows:                
                                                                     
    Web (|V|=50.6M, |E|=1,949.4M, directed) is a web-crawl of the    
    .sk domain (sk-2005) [9].  Despite its large size, it exhibits   
    substantial locality due to its topology and high average        
    degree.                                                          
                                                                     
    [9] Timothy Davis and Yifan Hu. The University of Florida sparse 
    matrix collection. ACM Transactions on Mathematical Software,    
    38:1:1 – 1:25, 2011.                                             
                                                                     
The graph comes from the following source:                           
                                                                     
    Laboratory for Web Algorithmics (LAW), Universita degli Studi di 
    Milano, http://law.di.unimi.it/index.php.  When using matrices   
    in the LAW/ group in the collection, please follow the citation  
    instructions at http://law.di.unimi.it/datasets.php.  If you     
    publish results based on these graphs, please acknowledge the    
    usage of WebGraph and LLP by quoting the following papers:       
                                                                     
    [1] "The WebGraph Framework I: Compression Techniques," Paolo    
    Boldi and Sebastiano Vigna, Proc. of the Thirteenth              
    International World Wide Web Conference (WWW 2004), 2004,        
    Manhattan, USA, pp.  595--601, ACM Press.                        
                                                                     
    [2] "Layered Label Propagation: A MultiResolution                
    Coordinate-Free Ordering for Compressing Social Networks," Paolo 
    Boldi, Marco Rosa, Massimo Santini, and Sebastiano Vigna,        
    Proceedings of the 20th international conference on World Wide   
    Web, 2011, ACM Press.                                            
                                                                     
    The graph was gathered by UbiCrawler; please acknowledge the     
    usage of UbiCrawler by quoting the following paper:              
                                                                     
    [3] "UbiCrawler: A Scalable Fully Distributed Web Crawler",      
    Paolo Boldi, Bruno Codenotti, Massimo Santini, and Sebastiano    
    Vigna, Software: Practice & Experience, 2004, vol 34, no. 8, pp. 
    711--726                                                         
                                                                     
    "This graph has been obtained from a 2005 crawl of the .sk       
    domain performed by UbiCrawler for a group of Slovakian          
    researchers. An interesting feature of this crawl is that we     
    were provided a very large seed."                                
                                                                     
    For additional graph properties and statistics, including node   
    labels, see http://law.di.unimi.it/webdata/sk-2005               
                                                                     
The graph already appears in the SuiteSparse Matrix Collection as    
LAW/sk-2005, but this GAP/GAP-web version is slightly different.     
                                                                     
The number of nodes differs by three.  In the original LAW/sk-2005   
graph, with 50,636,154 nodes, the last three nodes of the graph have 
no edges at all.  These have been dropped from the GAP/GAP-web       
graph.  The LAW graph includes 19,119,653 self-edges, but the        
GAP/GAP-web graph discards these.  Finally, the LAW/sk-2005 graph is 
binary, but the GAP/GAP-web graph adds random edge weights.  That is:
                                                                     
    Prob1 = ssget (\'LAW/sk-2005\') ;                                  
    Prob2 = ssget (\'GAP/GAP-web\') ;                                  
    A1 = Prob1.A ;                                                   
    A2 = Prob2.A ;                                                   
                                                                     
    % the LAW/sk-2005 graph is binary                                
    assert (isequal (A1, spones (A1))) ;                             
                                                                     
    % discard diagonal entries from LAW/sk-2005, and last 3 nodes    
    S1 = tril (A1, -1) + triu (A1,1) ;                               
    S1 = S1 (1:end-3, 1:end-3) ;                                     
                                                                     
    % discard the edge weights from GAP/GAP-web                      
    S2 = spones (A2) ;                                               
                                                                     
    % now the graphs are identical:                                  
    assert (isequal (S1, S2))                                        
                                                                     
The original graph is from the Laboratory for Web Algorithmics       
(LAW), Universita degli Studi di Milano,                             
http://law.di.unimi.it/index.php .                                   
                                                                     
It was added to the SuiteSparse Matrix Collection by Tim Davis,      
from the original LAW data, as the LAW/sk-2005 matrix.  It was       
then incorporated from there into the GAP benchmark suite by         
Scott Beamer, Krste Asanovic\', and David Patternson, with random     
edge weights added, based on the version of the graph at             
https://sparse.tamu.edu/LAW/sk-2005.  Finally, the new GAP graph     
has been re-imported back into the SuiteSparse Matrix Collection,    
as the GAP/GAP-web graph.  This is to preserve the random edge       
weights and source nodes added by S. Beamer et al., so that the GAP  
benchmark can be fully replicated in the SuiteSparse Matrix          
Collection.                                                          
                                                                     
The GAP breadth-first-search (BFS) benchmark generates 64 random     
source nodes and evaluates the time to compute the BFS from each of  
the 64 sources.  The betweenness-centrality (BC) runs 16 trials with 
4 source nodes each.  These source nodes are the same, in the same   
order.  That is, the first 4 BFS source nodes are the same 4 source  
nodes for the first trial of BC.  In one-based notation (where nodes 
are numbered 1 to n), the 64 source nodes are:                       
                                                                     
    10219453    44758212      890672    13843757                     
    14168063    20906931    12189585    26352336                     
    43500687     8987025     5699763    41436456                     
     5030728    40735219    16533564    28700167                     
       64712    39634751    16037780    27152740                     
    16404062    20491964     5322424    21420954                     
    26622110     5882876    18091041    10665897                     
    18634423    18138716     2355536    32885206                     
    40657441    35196168    45544427     6175520                     
    40058319    50626231    36571020    49397053                     
    23434266     2299445    32873824    25978283                     
     2461716    22787315    30759948     7428895                     
    39173871    43194210    26361510    39747212                     
    30670030    41483034     9358667     9945009                     
     3355245    33831270    45124745    16137878                     
    11235449    37509145    27402415    39546084                     
                                                                     
The first row are the 4 source nodes for the first BC trial,         
the 2nd row is for the second BC trial, and so on.                   
                                                                     
These node ids also appear as Problem.aux.sources, in one-based      
notation.  One-based notation is used because the Matrix Market      
format is one-based, as is MATLAB.  If you use a zero-based method   
(such as the GAP benchmark itself, or the C API to GraphBLAS), be    
sure to subtract one from the node ids above (and in                 
Problem.aux.sources) to obtain the right source nodes.               
',
    aux_fields: 'sources: full 64-by-1
',    image_files: '',
}
