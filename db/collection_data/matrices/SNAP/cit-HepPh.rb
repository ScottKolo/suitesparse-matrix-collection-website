{
    matrix_id: '2292',
    name: 'cit-HepPh',
    group: 'SNAP',
    description: 'Arxiv High Energy Physics paper citation network',
    author: 'J. Gehrke, P. Ginsparg, J. Kleinberg',
    editor: 'J. Leskovec',
    date: '2003',
    kind: 'directed graph',
    problem_2D_or_3D: '0',
    num_rows: '34546',
    num_cols: '34546',
    nonzeros: '421578',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '21608',
    pattern_symmetry: '0.003',
    numeric_symmetry: '0.003',
    rb_type: 'binary',
    structure: 'unsymmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'Networks from SNAP (Stanford Network Analysis Platform) Network Data Sets,      
Jure Leskovec http://snap.stanford.edu/data/index.html                          
email jure at cs.stanford.edu                                                   
                                                                                
High-energy physics citation network                                            
Dataset information                                                             
                                                                                
Arxiv HEP-PH (high energy physics phenomenology ) citation graph is from the    
e-print arXiv and covers all the citations within a dataset of 34,546 papers    
with 421,578 edges. If a paper i cites paper j, the graph contains a directed   
edge from i to j. If a paper cites, or is cited by, a paper outside the         
dataset, the graph does not contain any information about this.                 
                                                                                
The data covers papers in the period from January 1993 to April 2003 (124       
months). It begins within a few months of the inception of the arXiv, and thus  
represents essentially the complete history of its HEP-PH section.              
                                                                                
The data was originally released as a part of 2003 KDD Cup.                     
                                                                                
Dataset statistics                                                              
Nodes   34546                                                                   
Edges   421578                                                                  
Nodes in largest WCC    34401 (0.996)                                           
Edges in largest WCC    421485 (1.000)                                          
Nodes in largest SCC    12711 (0.368)                                           
Edges in largest SCC    139981 (0.332)                                          
Average clustering coefficient  0.2962                                          
Number of triangles     1276868                                                 
Fraction of closed triangles    0.1457                                          
Diameter (longest shortest path)    12                                          
90-percentile effective diameter    5                                           
                                                                                
Source (citation)                                                               
                                                                                
J. Leskovec, J. Kleinberg and C. Faloutsos. Graphs over Time: Densification     
Laws, Shrinking Diameters and Possible Explanations. ACM SIGKDD International   
Conference on Knowledge Discovery and Data Mining (KDD), 2005.                  
                                                                                
J. Gehrke, P. Ginsparg, J. M. Kleinberg. Overview of the 2003 KDD Cup. SIGKDD   
Explorations 5(2): 149-151, 2003.                                               
                                                                                
Files                                                                           
File    Description                                                             
cit-HepPh.txt.gz    Paper citation network of Arxiv High Energy Physics category
cit-HepPh-dates.txt.gz  Time of nodes (paper submission time to Arxiv)          
',
    aux_fields: 'nodename: full 34546-by-1
',    norm: '5.707717e+01',
    min_singular_value: '0',
    condition_number: 'Inf',
    svd_rank: '26377',
    null_space_dimension: '8169',
    full_numerical_rank: 'no',
    svd_gap: '3443551919.097826',
}
