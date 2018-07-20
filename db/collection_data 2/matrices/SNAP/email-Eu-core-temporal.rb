{
    matrix_id: '2785',
    name: 'email-Eu-core-temporal',
    group: 'SNAP',
    description: 'SNAP network: email-EU-core-temporal network',
    author: 'A. Paranjape, A. R. Benson, and J. Leskovec',
    editor: 'J. Leskovec',
    date: '2017',
    kind: 'directed temporal multigraph',
    problem_2D_or_3D: '0',
    num_rows: '1005',
    num_cols: '1005',
    nonzeros: '24929',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '203',
    pattern_symmetry: '0.711',
    numeric_symmetry: '0.144',
    rb_type: 'integer',
    structure: 'unsymmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'SNAP (Stanford Network Analysis Platform) Large Network Dataset Collection,
Jure Leskovec and Anrej Krevl, http://snap.stanford.edu/data, June 2014.   
email: jure at cs.stanford.edu                                             
                                                                           
email-Eu-core temporal network                                             
                                                                           
https://snap.stanford.edu/data/email-Eu-core-temporal.html                 
                                                                           
Dataset information                                                        
                                                                           
The network was generated using email data from a large European research  
institution. We have anonymized information about all incoming and outgoing
email between members of the research institution. The e-mails only        
represent communication between institution members (the core), and the    
dataset does not contain incoming messages from or outgoing messages to the
rest of the world. A directed edge (u, v, t) means that person u sent an   
e-mail to person v at time t. A separate edge is created for each recipient
of the e-mail. We also have four sub-networks corresponding to the         
communication between members of four different departments at the         
institution. Node IDs in the sub-networks do not correspond to the same    
node ID in the entire network.                                             
                                                                           
The static version of this network is the same as the largest weakly       
connected component of the email-Eu-core network                           
(https://snap.stanford.edu/data/email-Eu-core.html) (although the node IDs 
are not the same).                                                         
                                                                           
Dataset statistics (email-Eu-core-temporal)                                
Nodes   986                                                                
Temporal Edges  332,334                                                    
Edges in static graph   24,929                                             
Time span   803 days                                                       
                                                                           
Dataset statistics (email-Eu-core-temporal-Dept1)                          
Nodes   309                                                                
Temporal Edges  61,046                                                     
Edges in static graph   3,031                                              
Time span   803 days                                                       
                                                                           
Dataset statistics (email-Eu-core-temporal-Dept2)                          
Nodes   162                                                                
Temporal Edges  46,772                                                     
Edges in static graph   1,772                                              
Time span   803 days                                                       
                                                                           
Dataset statistics (email-Eu-core-temporal-Dept3)                          
Nodes   89                                                                 
Temporal Edges  12,216                                                     
Edges in static graph   1,506                                              
Time span   802 days                                                       
                                                                           
Dataset statistics (email-Eu-core-temporal-Dept4)                          
Nodes   142                                                                
Temporal Edges  48,141                                                     
Edges in static graph   1,375                                              
Time span   803 days                                                       
                                                                           
Source (citation)                                                          
Ashwin Paranjape, Austin R. Benson, and Jure Leskovec. "Motifs in Temporal 
Networks." In Proceedings of the Tenth ACM International Conference on Web 
Search and Data Mining, 2017.                                              
                                                                           
Files                                                                      
File    Description                                                        
email-Eu-core-temporal.txt.gz                                              
    All e-mails between members of the institution                         
email-Eu-core-temporal-Dept1.txt.gz                                        
    All e-mails between members of Department 1 at the institution         
email-Eu-core-temporal-Dept2.txt.gz                                        
    All e-mails between members of Department 2 at the institution         
email-Eu-core-temporal-Dept3.txt.gz                                        
    All e-mails between members of Department 3 at the institution         
email-Eu-core-temporal-Dept4.txt.gz                                        
    All e-mails between members of Department 4 at the institution         
                                                                           
Data format                                                                
                                                                           
    SRC DST UNIXTS                                                         
    where edges are separated by a new line and                            
    SRC: id of the source node (a user)                                    
    TGT: id of the target node (a user)                                    
    TS: timestamp (in seconds), starting from 0                            
                                                                           
---------------------------------------------------------------------------
Notes on inclusion into the SuiteSparse Matrix Collection, July 2018:      
---------------------------------------------------------------------------
                                                                           
The graphs in the SNAP data set are 0-based, with nodes numbered 0         
to n-1 for each graph.                                                     
                                                                           
In the SuiteSparse Matrix Collection, Problem.A is the static graph        
of all 1005 members where A(i,j) is the number of emails that              
person 1+i sent to person 1+j (1+ offset in the MATLAB matrix since        
the SNAP graph is 0-based), for all time.  Problem.aux.temporal_edges      
is a dense 332,334-by-3 matrix where each edge is a row in the             
matrix, with source, target, and timestamp (starting from time = 0).       
                                                                           
Problem.aux.Dept{1:4} is a cell array of each departmental static          
graph.  Problem.aux.Dept_temporal_edges{1:4} has the temporal              
edges of each departmental graph.                                          
                                                                           
The Problem.A and Problem.aux.Dept{1:4} matrices are larger than           
the # of nodes listed above, to preserve the node numbers of               
the largest weakly component as provided in the SNAP data set.             
                                                                           
Since the networks in the SuiteSparse Matrix Collection are all            
1-based, the temporal edges are (1+i,1+j,t) for each SNAP                  
temporal edge (i,j,t), which is 0-based.                                   
',
    aux_fields: 'temporal_edges: full 332334-by-3
Dept: cell 4-by-1
Dept_temporal_edges: cell 4-by-1
',    image_files: 'email-Eu-core-temporal.png,email-Eu-core-temporal_scc.png,',
}
