{
    matrix_id: '2288',
    name: 'wiki-Vote',
    group: 'SNAP',
    description: 'Wikipedia who-votes-on-whom network',
    author: 'J. Leskovec, D. Huttenlocher, J. Kleinberg',
    editor: 'J. Leskovec',
    date: '2008',
    kind: 'directed graph',
    problem_2D_or_3D: '0',
    num_rows: '8297',
    num_cols: '8297',
    nonzeros: '103689',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '6998',
    pattern_symmetry: '0.056',
    numeric_symmetry: '0.056',
    rb_type: 'binary',
    structure: 'unsymmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'Networks from SNAP (Stanford Network Analysis Platform) Network Data Sets,     
Jure Leskovec http://snap.stanford.edu/data/index.html                         
email jure at cs.stanford.edu                                                  
                                                                               
Wikipedia vote network                                                         
                                                                               
Dataset information                                                            
                                                                               
Wikipedia is a free encyclopedia written collaboratively by volunteers around  
the world. A small part of Wikipedia contributors are administrators, who are  
users with access to additional technical features that aid in maintenance. In 
order for a user to become an administrator a Request for adminship (RfA) is   
issued and the Wikipedia community via a public discussion or a vote decides   
who to promote to adminship. Using the latest complete dump of Wikipedia page  
edit history (from January 3 2008) we extracted all administrator elections and
vote history data. This gave us 2,794 elections with 103,663 total votes and   
7,066 users participating in the elections (either casting a vote or being     
voted on). Out of these 1,235 elections resulted in a successful promotion,    
while 1,559 elections did not result in the promotion. About half of the votes 
in the dataset are by existing admins, while the other half comes from ordinary
Wikipedia users.                                                               
                                                                               
The network contains all the users and discussion from the inception of        
Wikipedia till January 2008. Nodes in the network represent wikipedia users and
a directed edge from node i to node j represents that user i voted on user j.  
                                                                               
Dataset statistics                                                             
Nodes   7115                                                                   
Edges   103689                                                                 
Nodes in largest WCC    7066 (0.993)                                           
Edges in largest WCC    103663 (1.000)                                         
Nodes in largest SCC    1300 (0.183)                                           
Edges in largest SCC    39456 (0.381)                                          
Average clustering coefficient  0.2089                                         
Number of triangles     608389                                                 
Fraction of closed triangles    0.1255                                         
Diameter (longest shortest path)    7                                          
90-percentile effective diameter    3.8                                        
                                                                               
Source (citation)                                                              
                                                                               
J. Leskovec, D. Huttenlocher, J. Kleinberg. Signed Networks in Social Media.   
CHI 2010.                                                                      
                                                                               
J. Leskovec, D. Huttenlocher, J. Kleinberg. Predicting Positive and Negative   
Links in Online Social Networks. WWW 2010.                                     
                                                                               
Files                                                                          
File    Description                                                            
Wiki-Vote.txt.gz    Wikipedia adminship vote network till January 2008         
',
    norm: '1.031876e+02',
    min_singular_value: '0',
    condition_number: 'Inf',
    svd_rank: '2379',
    null_space_dimension: '5918',
    full_numerical_rank: 'no',
    svd_gap: '68684583049.712608',
}
