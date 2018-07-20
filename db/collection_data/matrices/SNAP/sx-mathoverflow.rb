{
    matrix_id: '2793',
    name: 'sx-mathoverflow',
    group: 'SNAP',
    description: 'SNAP network: Math Overflow temporal network',
    author: 'A. Paranjape, A. R. Benson, and J. Leskovec',
    editor: 'J. Leskovec',
    date: '2017',
    kind: 'directed temporal multigraph',
    problem_2D_or_3D: '0',
    num_rows: '24818',
    num_cols: '24818',
    nonzeros: '239978',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '11626',
    pattern_symmetry: '0.351',
    numeric_symmetry: '0.161',
    rb_type: 'integer',
    structure: 'unsymmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'SNAP (Stanford Network Analysis Platform) Large Network Dataset Collection,
Jure Leskovec and Anrej Krevl, http://snap.stanford.edu/data, June 2014.   
email: jure at cs.stanford.edu                                             
                                                                           
Math Overflow temporal network                                             
                                                                           
https://snap.stanford.edu/data/sx-mathoverflow.html                        
                                                                           
Dataset information                                                        
                                                                           
This is a temporal network of interactions on the stack exchange web site  
Math Overflow (http://mathoverflow.net/). There are three different types  
of interactions represented by a directed edge (u, v, t):                  
                                                                           
user u answered user v\'s question at time t (in the graph                  
sx-mathoverflow-a2q) user u commented on user v\'s question at time t (in   
the graph sx-mathoverflow-c2q) user u commented on user v\'s answer at time 
t (in the graph sx-mathoverflow-c2a)                                       
                                                                           
The graph sx-mathoverflow contains the union of these graphs. These graphs 
were constructed from the Stack Exchange Data Dump. Node ID numbers        
correspond to the \'OwnerUserId\' tag in that data dump.                     
                                                                           
Dataset statistics (sx-mathoverflow)                                       
Nodes   24,818                                                             
Temporal Edges  506,550                                                    
Edges in static graph   239,978                                            
Time span   2350 days                                                      
                                                                           
Dataset statistics (sx-mathoverflow-a2q)                                   
Nodes   21,688                                                             
Temporal Edges  107,581                                                    
Edges in static graph   90,489                                             
Time span   2350 days                                                      
                                                                           
Dataset statistics (sx-mathoverflow-c2q)                                   
Nodes   16,836                                                             
Temporal Edges  203,639                                                    
Edges in static graph   101,329                                            
Time span   2349 days                                                      
                                                                           
Dataset statistics (sx-mathoverflow-c2a)                                   
Nodes   13,840                                                             
Temporal Edges  195,330                                                    
Edges in static graph   81,121                                             
Time span   2350 days                                                      
                                                                           
Source (citation)                                                          
Ashwin Paranjape, Austin R. Benson, and Jure Leskovec. "Motifs in Temporal 
Networks." In Proceedings of the Tenth ACM International Conference on Web 
Search and Data Mining, 2017.                                              
                                                                           
Files                                                                      
File    Description                                                        
sx-mathoverflow.txt.gz  All interactions                                   
sx-mathoverflow-a2q.txt.gz  Answers to questions                           
sx-mathoverflow-c2q.txt.gz  Comments to questions                          
sx-mathoverflow-c2a.txt.gz  Comments to answers                            
                                                                           
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
n=88,580.                                                                  
                                                                           
In the SuiteSparse Matrix Collection, the primary matrix, Problem.A, is    
the overall static graph, with 239,978 edges, of size n-by-n with          
n=24,818.  These edges represent the 506,550 temporal edges.  A(i,j) is    
the number of times person u=nodeid(i) interacted with person v=nodeid(j), 
with a temporal edge (u,v,t), with any kind of interaction.                
Problem.aux.nodeid is a list of the node id\'s that appear in the SNAP data 
set.                                                                       
                                                                           
A2Q = Problem.aux.Q2A is the static sx-mathoverflow-a2q graph.             
C2Q = Problem.aux.C2Q is the static sx-mathoverflow-c2q graph.             
C2A = Problem.aux.C2A is the static sx-mathoverflow-c2a graph.             
These sum together to give the the overall graph.  That is,                
A = A2Q + C2Q + C2A.                                                       
                                                                           
A2Q(u,v) is the number of times person u answered v\'s questions.           
C2Q(u,v) is the number of times person u commented on v\'s question.        
C2A(u,v) is the number of times person u commented on v\'s answer.          
                                                                           
The temporal edges are held in:                                            
Problem.aux.temporal_edges:     [506550x3]                                 
Problem.aux.temporal_edges_a2q: [107581x3]                                 
Problem.aux.temporal_edges_c2q: [203639x3]                                 
Problem.aux.temporal_edges_c2a: [195330x3]                                 
                                                                           
Each row in these matrices is a single temporal edge, (u,v,t).  Summing up 
all entries in A gives 506,550, and likewise the sum of entries in the     
other graphs gives the number of temporal edges they represent.            
',
    aux_fields: 'temporal_edges: full 506550-by-3
temporal_edges_a2q: full 107581-by-3
temporal_edges_c2a: full 195330-by-3
temporal_edges_c2q: full 203639-by-3
nodeid: full 24818-by-1
A2Q: sparse 24818-by-24818
C2A: sparse 24818-by-24818
C2Q: sparse 24818-by-24818
',    image_files: 'sx-mathoverflow.png,sx-mathoverflow_scc.png,',
}
