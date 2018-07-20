{
    matrix_id: '2296',
    name: 'ca-CondMat',
    group: 'SNAP',
    description: 'Collaboration network of Arxiv Condensed Matter',
    author: 'J. Leskovec, J. Kleinberg and C. Faloutsos',
    editor: 'J. Leskovec',
    date: '2003',
    kind: 'undirected graph',
    problem_2D_or_3D: '0',
    num_rows: '23133',
    num_cols: '23133',
    nonzeros: '186936',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '567',
    pattern_symmetry: '1.000',
    numeric_symmetry: '1.000',
    rb_type: 'binary',
    structure: 'symmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'Networks from SNAP (Stanford Network Analysis Platform) Network Data Sets,    
Jure Leskovec http://snap.stanford.edu/data/index.html                        
email jure at cs.stanford.edu                                                 
                                                                              
Condense Matter collaboration network                                         
                                                                              
Dataset information                                                           
                                                                              
Arxiv COND-MAT (Condense Matter Physics) collaboration network is from the    
e-print arXiv and covers scientific collaborations between authors papers     
submitted to Condense Matter category. If an author i co-authored a paper with
author j, the graph contains a undirected edge from i to j. If the paper is   
co-authored by k authors this generates a completely connected (sub)graph on k
nodes.                                                                        
                                                                              
The data covers papers in the period from January 1993 to April 2003 (124     
months). It begins within a few months of the inception of the arXiv, and thus
represents essentially the complete history of its COND-MAT section.          
                                                                              
Dataset statistics                                                            
Nodes   23133                                                                 
Edges   186936                                                                
Nodes in largest WCC    21363 (0.923)                                         
Edges in largest WCC    182628 (0.977)                                        
Nodes in largest SCC    21363 (0.923)                                         
Edges in largest SCC    182628 (0.977)                                        
Average clustering coefficient  0.6334                                        
Number of triangles     173361                                                
Fraction of closed triangles    0.2643                                        
Diameter (longest shortest path)    15                                        
90-percentile effective diameter    6.6                                       
                                                                              
Source (citation)                                                             
                                                                              
J. Leskovec, J. Kleinberg and C. Faloutsos. Graph Evolution: Densification and
Shrinking Diameters. ACM Transactions on Knowledge Discovery from Data (ACM   
TKDD), 1(1), 2007.                                                            
                                                                              
Files                                                                         
File    Description                                                           
ca-CondMat.txt.gz   Collaboration network of Arxiv Condensed Matter category  
                                                                              
',
    aux_fields: 'nodename: full 23133-by-1
',    norm: '3.795411e+01',
    min_singular_value: '5.520962e-78',
    condition_number: '6.874547e+78',
    svd_rank: '22177',
    null_space_dimension: '956',
    full_numerical_rank: 'no',
    svd_gap: '12608821481.082088',
    image_files: 'ca-CondMat.png,ca-CondMat_scc.png,ca-CondMat_svd.png,ca-CondMat_graph.gif,',
}
