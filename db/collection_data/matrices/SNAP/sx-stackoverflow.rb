{
    matrix_id: '2794',
    name: 'sx-stackoverflow',
    group: 'SNAP',
    description: 'SNAP network: StackOverflow temporal network',
    author: 'A. Paranjape, A. R. Benson, and J. Leskovec',
    editor: 'J. Leskovec',
    date: '2017',
    kind: 'directed temporal multigraph',
    problem_2D_or_3D: '0',
    num_rows: '2601977',
    num_cols: '2601977',
    nonzeros: '36233450',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '953658',
    pattern_symmetry: '0.384',
    numeric_symmetry: '0.215',
    rb_type: 'integer',
    structure: 'unsymmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'SNAP (Stanford Network Analysis Platform) Large Network Dataset Collection,
Jure Leskovec and Anrej Krevl, http://snap.stanford.edu/data, June 2014.   
email: jure at cs.stanford.edu                                             
                                                                           
Stack Overflow temporal network                                            
                                                                           
https://snap.stanford.edu/data/sx-stackoverflow.html                       
                                                                           
Dataset information                                                        
                                                                           
This is a temporal network of interactions on the stack exchange web site  
Stack Overflow (http://stackoverflow.com/). There are three different types
of interactions represented by a directed edge (u, v, t):                  
                                                                           
user u answered user v\'s question at time t (in the graph                  
sx-stackoverflow-a2q) user u commented on user v\'s question at time t (in  
the graph sx-stackoverflow-c2q) user u commented on user v\'s answer at time
t (in the graph sx-stackoverflow-c2a)                                      
                                                                           
The graph sx-stackoverflow contains the union of these graphs. These graphs
were constructed from the Stack Exchange Data Dump                         
https://archive.org/details/stackexchange). Node ID numbers correspond to  
the \'OwnerUserId\' tag in that data dump.                                   
                                                                           
Dataset statistics (sx-stackoverflow)                                      
Nodes   2,601,977                                                          
Temporal Edges  63,497,050                                                 
Edges in static graph   36,233,450                                         
Time span   2774 days                                                      
                                                                           
Dataset statistics (sx-stackoverflow-a2q)                                  
Nodes   2,464,606                                                          
Temporal Edges  17,823,525                                                 
Edges in static graph   16,266,395                                         
Time span   2774 days                                                      
                                                                           
Dataset statistics (sx-stackoverflow-c2q)                                  
Nodes   1,655,353                                                          
Temporal Edges  20,268,151                                                 
Edges in static graph   11,226,829                                         
Time span   2773 days                                                      
                                                                           
Dataset statistics (sx-stackoverflow-c2a)                                  
Nodes   1,646,338                                                          
Temporal Edges  25,405,374                                                 
Edges in static graph   11,370,342                                         
Time span   2773 days                                                      
                                                                           
Source (citation)                                                          
Ashwin Paranjape, Austin R. Benson, and Jure Leskovec. "Motifs in Temporal 
Networks." In Proceedings of the Tenth ACM International Conference on Web 
Search and Data Mining, 2017.                                              
                                                                           
Files                                                                      
                                                                           
File    Description                                                        
sx-stackoverflow.txt.gz All interactions                                   
sx-stackoverflow-a2q.txt.gz Answers to questions                           
sx-stackoverflow-c2q.txt.gz Comments to questions                          
sx-stackoverflow-c2a.txt.gz Comments to answers                            
                                                                           
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
n=6,024,270.                                                               
                                                                           
In the SuiteSparse Matrix Collection, the primary matrix, Problem.A, is    
the overall static graph, with 36,233,450 edges, of size n-by-n with       
n=2,601,977.  These edges represent the 63,497,050 temporal edges.  A(i,j) 
is the number of times person u=nodeid(i) interacted with person           
v=nodeid(j), with a temporal edge (u,v,t), with any kind of interaction.   
Problem.aux.nodeid is a list of the node id\'s that appear in the SNAP data 
set.                                                                       
                                                                           
A2Q = Problem.aux.Q2A is the static sx-stackoverflow-a2q graph.            
C2Q = Problem.aux.C2Q is the static sx-stackoverflow-c2q graph.            
C2A = Problem.aux.C2A is the static sx-stackoverflow-c2a graph.            
These sum together to give the the overall graph.  That is,                
A = A2Q + C2Q + C2A.                                                       
                                                                           
A2Q(u,v) is the number of times person u answered v\'s questions.           
C2Q(u,v) is the number of times person u commented on v\'s question.        
C2A(u,v) is the number of times person u commented on v\'s answer.          
                                                                           
The temporal edges are held in:                                            
Problem.aux.temporal_edges:     [63,497,050 x 3]                           
Problem.aux.temporal_edges_a2q: [17,823,525 x 3]                           
Problem.aux.temporal_edges_c2q: [20,268,151 x 3]                           
Problem.aux.temporal_edges_c2a: [25,405,374 x 3]                           
                                                                           
Each row in these matrices is a single temporal edge, (u,v,t).  Summing up 
all entries in A gives  63,497,050 and likewise the sum of entries in the  
other graphs gives the number of temporal edges they represent.            
',
    aux_fields: 'temporal_edges: full 63497050-by-3
temporal_edges_a2q: full 17823525-by-3
temporal_edges_c2a: full 25405374-by-3
temporal_edges_c2q: full 20268151-by-3
nodeid: full 2601977-by-1
A2Q: sparse 2601977-by-2601977
C2A: sparse 2601977-by-2601977
C2Q: sparse 2601977-by-2601977
',    image_files: 'sx-stackoverflow.png,sx-stackoverflow_scc.png,',
}
