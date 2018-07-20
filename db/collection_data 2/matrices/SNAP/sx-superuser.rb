{
    matrix_id: '2795',
    name: 'sx-superuser',
    group: 'SNAP',
    description: 'SNAP network: SuperUser temporal network',
    author: 'A. Paranjape, A. R. Benson, and J. Leskovec',
    editor: 'J. Leskovec',
    date: '2017',
    kind: 'directed temporal multigraph',
    problem_2D_or_3D: '0',
    num_rows: '194085',
    num_cols: '194085',
    nonzeros: '924886',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '108289',
    pattern_symmetry: '0.327',
    numeric_symmetry: '0.198',
    rb_type: 'integer',
    structure: 'unsymmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'SNAP (Stanford Network Analysis Platform) Large Network Dataset Collection,
Jure Leskovec and Anrej Krevl, http://snap.stanford.edu/data, June 2014.   
email: jure at cs.stanford.edu                                             
                                                                           
Super User temporal network                                                
                                                                           
https://snap.stanford.edu/data/sx-superuser.html                           
                                                                           
Dataset information                                                        
                                                                           
This is a temporal network of interactions on the stack exchange web site  
Super User (http://superuser.com/). There are three different types of     
interactions represented by a directed edge (u, v, t):                     
                                                                           
user u answered user v\'s question at time t (in the graph sx-superuser-a2q)
user u commented on user v\'s question at time t (in the graph              
sx-superuser-c2q) user u commented on user v\'s answer at time t (in the    
graph sx-superuser-c2a)                                                    
                                                                           
The graph sx-superuser contains the union of these graphs. These graphs    
were constructed from the Stack Exchange Data Dump. Node ID numbers        
correspond to the \'OwnerUserId\' tag in that data dump.                     
                                                                           
Dataset statistics (sx-superuser)                                          
Nodes   194,085                                                            
Temporal Edges  1,443,339                                                  
Edges in static graph   924,886                                            
Time span   2773 days                                                      
                                                                           
Dataset statistics (sx-superuser-a2q)                                      
Nodes   167,981                                                            
Temporal Edges  430,033                                                    
Edges in static graph   403,578                                            
Time span   2773 days                                                      
                                                                           
Dataset statistics (sx-mathoverflow-c2q)                                   
Nodes   94,548                                                             
Temporal Edges  479,067                                                    
Edges in static graph   291,030                                            
Time span   2769 days                                                      
                                                                           
Dataset statistics (sx-superuser-c2a)                                      
Nodes   101,052                                                            
Temporal Edges  534,239                                                    
Edges in static graph   289,487                                            
Time span   2735 days                                                      
                                                                           
Source (citation)                                                          
Ashwin Paranjape, Austin R. Benson, and Jure Leskovec. "Motifs in Temporal 
Networks." In Proceedings of the Tenth ACM International Conference on Web 
Search and Data Mining, 2017.                                              
                                                                           
Files                                                                      
File    Description                                                        
sx-superuser.txt.gz All interactions                                       
sx-superuser-a2q.txt.gz Answers to questions                               
sx-superuser-c2q.txt.gz Comments to questions                              
sx-superuser-c2a.txt.gz Comments to answers                                
                                                                           
Data format                                                                
                                                                           
    SRC DST UNIXTS                                                         
                                                                           
    where edges are separated by a new line and                            
                                                                           
    SRC: id of the source node (a user)                                    
    TGT: id of the target node (a user)                                    
    UNIXTS: Unix timestamp (seconds since the epoch)                       
                                                                           
---------------------------------------------------------------------------
Notes on inclusion into the SuiteSparse Matrix Collection, July 2018:      
---------------------------------------------------------------------------
                                                                           
The SNAP graph is 1-based, with nodes in all graphs numbered 1 to          
n=567,315.                                                                 
                                                                           
In the SuiteSparse Matrix Collection, the primary matrix, Problem.A, is    
the overall static graph, with 924,886 edges, of size n-by-n with          
n=194,085.  These edges represent the 1,443,339 temporal edges.  A(i,j) is 
the number of times person u=nodeid(i) interacted with person v=nodeid(j), 
with a temporal edge (u,v,t), with any kind of interaction.                
Problem.aux.nodeid is a list of the node id\'s that appear in the SNAP data 
set.                                                                       
                                                                           
A2Q = Problem.aux.Q2A is the static sx-superuser-a2q graph.                
C2Q = Problem.aux.C2Q is the static sx-superuser-c2q graph.                
C2A = Problem.aux.C2A is the static sx-superuser-c2a graph.                
These sum together to give the the overall graph.  That is,                
A = A2Q + C2Q + C2A.                                                       
                                                                           
A2Q(u,v) is the number of times person u answered v\'s questions.           
C2Q(u,v) is the number of times person u commented on v\'s question.        
C2A(u,v) is the number of times person u commented on v\'s answer.          
                                                                           
The temporal edges are held in:                                            
Problem.aux.temporal_edges:     [1,443,339 x 3]                            
Problem.aux.temporal_edges_a2q: [  430,033 x 3]                            
Problem.aux.temporal_edges_c2q: [  479,067 x 3]                            
Problem.aux.temporal_edges_c2a: [  534,239 x 3]                            
                                                                           
Each row in these matrices is a single temporal edge, (u,v,t).  Summing up 
all entries in A gives 1,443,339 and likewise the sum of entries in the    
other graphs gives the number of temporal edges they represent.            
',
    aux_fields: 'temporal_edges: full 1443339-by-3
temporal_edges_a2q: full 430033-by-3
temporal_edges_c2a: full 534239-by-3
temporal_edges_c2q: full 479067-by-3
nodeid: full 194085-by-1
A2Q: sparse 194085-by-194085
C2A: sparse 194085-by-194085
C2Q: sparse 194085-by-194085
',    image_files: 'sx-superuser.png,sx-superuser_scc.png,',
}
