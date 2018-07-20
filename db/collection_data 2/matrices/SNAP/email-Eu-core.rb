{
    matrix_id: '2784',
    name: 'email-Eu-core',
    group: 'SNAP',
    description: 'SNAP network: email-Eu-core network',
    author: 'J. Leskovec, J. Kleinberg and C. Faloutsos',
    editor: 'J. Leskovec',
    date: '2007',
    kind: 'directed graph with communities',
    problem_2D_or_3D: '0',
    num_rows: '1005',
    num_cols: '1005',
    nonzeros: '25571',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '203',
    pattern_symmetry: '0.711',
    numeric_symmetry: '0.711',
    rb_type: 'binary',
    structure: 'unsymmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'SNAP (Stanford Network Analysis Platform) Large Network Dataset Collection,
Jure Leskovec and Anrej Krevl, http://snap.stanford.edu/data, June 2014.   
email: jure at cs.stanford.edu                                             
                                                                           
email-Eu-core network                                                      
                                                                           
https://snap.stanford.edu/data/email-Eu-core.html                          
                                                                           
Dataset information                                                        
                                                                           
The network was generated using email data from a large European research  
institution. We have anonymized information about all incoming and outgoing
email between members of the research institution. There is an edge (u, v) 
in the network if person u sent person v at least one email. The e-mails   
only represent communication between institution members (the core), and   
the dataset does not contain incoming messages from or outgoing messages to
the rest of the world.                                                     
                                                                           
The dataset also contains "ground-truth" community memberships of the      
nodes.  Each individual belongs to exactly one of 42 departments at the    
research institute.                                                        
                                                                           
This network represents the "core" of the email-EuAll                      
(https://snap.stanford.edu/data/email-EuAll.html) network, which also      
contains links between members of the institution and people outside of the
institution (although the node IDs are not the same).                      
                                                                           
Dataset statistics                                                         
Nodes   1,005                                                              
Edges   25,571                                                             
Nodes in largest WCC    986 (0.981)                                        
Edges in largest WCC    25552 (0.999)                                      
Nodes in largest SCC    803 (0.799)                                        
Edges in largest SCC    24729 (0.967)                                      
Average clustering coefficient  0.3994                                     
Number of triangles 105461                                                 
Fraction of closed triangles    0.1085                                     
Diameter (longest shortest path)    7                                      
90-percentile effective diameter    2.9                                    
                                                                           
Source (citation)                                                          
Hao Yin, Austin R. Benson, Jure Leskovec, and David F. Gleich. "Local      
Higher-order Graph Clustering." In Proceedings of the 23rd ACM SIGKDD      
International Conference on Knowledge Discovery and Data Mining. 2017.     
                                                                           
J. Leskovec, J. Kleinberg and C. Faloutsos. Graph Evolution: Densification 
and Shrinking Diameters. ACM Transactions on Knowledge Discovery from Data 
(ACM TKDD), 1(1), 2007.                                                    
http://www.cs.cmu.edu/~jure/pubs/powergrowth-tkdd.pdf                      
                                                                           
File    Description                                                        
email-Eu-core.txt.gz                                                       
    Email communication links between members of the institution           
email-Eu-core-department-labels.txt.gz  Department membership labels       
                                                                           
Data format for community membership                                       
                                                                           
    NODEID DEPARTMENT                                                      
    NODEID: id of the node (a member of the institute)                     
    DEPARTMENT: id of the member\'s department (number in 0, 1, ..., 41)    
                                                                           
---------------------------------------------------------------------------
Notes on inclusion into the SuiteSparse Matrix Collection, July 2018:      
---------------------------------------------------------------------------
                                                                           
The SNAP grqph is 0-based with nodes numbered 0 to 1004.                   
                                                                           
In the SuiteSparse Matrix Collection, Problem.A is the directed graph,     
where A(i,j)=1 if person 1+i sent person 1+j at least one email.           
(1+, since the SNAP graph is 0-based).                                     
                                                                           
Each person is in exactly one community, so this could be represented      
as a vector of size n, as node meta data.  However, to be consistent       
with the other SNAP/com-* problems in the SuiteSparse Matrix               
Collection, the community structure is represented as a sparse matrix,     
created from the file email-Eu-core-department-labels.txt.                 
                                                                           
C = Problem.aux.Communities_all is a sparse matrix of size n by 42.        
C(i,k)=1 if person 1+i is in department 1+k (again, 1+ to convert          
the data to 1-based).  Thus, column C(:,k) represents the (1+k)th          
community, where each community is a member\'s department.                  
',
    aux_fields: 'Communities_all: sparse 1005-by-42
',    image_files: 'email-Eu-core-temporal.png,email-Eu-core-temporal_scc.png,email-Eu-core.png,email-Eu-core_scc.png,',
}
