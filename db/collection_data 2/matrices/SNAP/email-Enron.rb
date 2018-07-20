{
    matrix_id: '2290',
    name: 'email-Enron',
    group: 'SNAP',
    description: 'Email communication network from Enron',
    author: 'L. Kaelbling, M. Gervasio, W. Cohen',
    editor: 'J. Leskovec',
    date: '2003',
    kind: 'directed graph',
    problem_2D_or_3D: '0',
    num_rows: '36692',
    num_cols: '36692',
    nonzeros: '367662',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1065',
    pattern_symmetry: '1.000',
    numeric_symmetry: '1.000',
    rb_type: 'binary',
    structure: 'symmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'Networks from SNAP (Stanford Network Analysis Platform) Network Data Sets,     
Jure Leskovec http://snap.stanford.edu/data/index.html                         
email jure at cs.stanford.edu                                                  
                                                                               
Enron email network                                                            
                                                                               
Dataset information                                                            
                                                                               
Enron email communication network covers all the email communication within a  
dataset of around half million emails. This data was originally made public,   
and posted to the web, by the Federal Energy Regulatory Commission during its  
investigation. Nodes of the network are email addresses and if an address i    
sent at least one email to address j, the graph contains a directed edge from i
to j. Note that non-Enron email addresses act as sinks and sources in the      
network as we only observe their communication with the Enron email addresses. 
                                                                               
The Enron email data was originally released by William Cohen at CMU.          
                                                                               
Dataset statistics                                                             
Nodes   36692                                                                  
Edges   367662                                                                 
Nodes in largest WCC    33696 (0.918)                                          
Edges in largest WCC    361622 (0.984)                                         
Nodes in largest SCC    33696 (0.918)                                          
Edges in largest SCC    361622 (0.984)                                         
Average clustering coefficient  0.4970                                         
Number of triangles     727044                                                 
Fraction of closed triangles    0.08531                                        
Diameter (longest shortest path)    12                                         
90-percentile effective diameter    4.8                                        
                                                                               
Source (citation)                                                              
                                                                               
J. Leskovec, J. Kleinberg and C. Faloutsos. Graphs over Time: Densification    
Laws, Shrinking Diameters and Possible Explanations. ACM SIGKDD International  
Conference on Knowledge Discovery and Data Mining (KDD), 2005.                 
                                                                               
File    Description                                                            
email-Enron.txt.gz  Enron email network                                        
Enron email data    Complete Enron email dataset (includes full email message  
                    text and attachments), at http://www.cs.cmu.edu/~enron/    
                                                                               
',
    norm: '1.184177e+02',
    min_singular_value: '1.255839e-285',
    condition_number: '9.429370e+286',
    svd_rank: '24939',
    null_space_dimension: '11753',
    full_numerical_rank: 'no',
    svd_gap: '2130469.225897',
    image_files: 'email-Enron.png,email-Enron_scc.png,email-Enron_svd.png,email-Enron_graph.gif,',
}
