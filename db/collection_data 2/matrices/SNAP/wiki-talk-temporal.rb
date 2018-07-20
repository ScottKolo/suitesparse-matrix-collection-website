{
    matrix_id: '2798',
    name: 'wiki-talk-temporal',
    group: 'SNAP',
    description: 'SNAP network: wiki-talk temporal network',
    author: 'A. Paranjape, A. R. Benson, and J. Leskovec',
    editor: 'J. Leskovec',
    date: '2017',
    kind: 'directed temporal multigraph',
    problem_2D_or_3D: '0',
    num_rows: '1140149',
    num_cols: '1140149',
    nonzeros: '3309592',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1027333',
    pattern_symmetry: '0.219',
    numeric_symmetry: '0.078',
    rb_type: 'integer',
    structure: 'unsymmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'SNAP (Stanford Network Analysis Platform) Large Network Dataset Collection,
Jure Leskovec and Anrej Krevl, http://snap.stanford.edu/data, June 2014.   
email: jure at cs.stanford.edu                                             
                                                                           
wiki-talk temporal network                                                 
                                                                           
https://snap.stanford.edu/data/wiki-talk-temporal.html                     
                                                                           
Dataset information                                                        
                                                                           
This is a temporal network representing Wikipedia users editing each       
other\'s Talk page. A directed edge (u, v, t) means that user u edited user 
v\'s talk page at time t.                                                   
                                                                           
Dataset statistics                                                         
Nodes   1,140,149                                                          
Temporal Edges  7,833,140                                                  
Edges in static graph   3,309,592                                          
Time span   2320 days                                                      
                                                                           
Source (citation)                                                          
Ashwin Paranjape, Austin R. Benson, and Jure Leskovec. "Motifs in Temporal 
Networks." In Proceedings of the Tenth ACM International Conference on Web 
Search and Data Mining, 2017.                                              
                                                                           
Jure Leskovec, Daniel P. Huttenlocher, and Jon M. Kleinberg. "Governance in
social media: A case study of the wikipedia promotion process." ICWSM.     
2010.                                                                      
                                                                           
Files                                                                      
File    Description                                                        
wiki-talk-temporal.txt.gz   talk page edits temporal network               
wiki-talk-temporal-usernames.txt.gz usernames corresponding to nodes       
                                                                           
Data format                                                                
                                                                           
    SRC DST UNIXTS                                                         
                                                                           
where edges are separated by a new line and                                
                                                                           
    SRC: id of the source node (a user)                                    
    TGT: id of the target node (a user)                                    
    UNIXTS: Unix timestamp (seconds since the epoch)                       
                                                                           
---------------------------------------------------------------------------
Notes on inclusion into the SuiteSparse Matrix Collection, July 2018:      
---------------------------------------------------------------------------
                                                                           
The SNAP graph is 0-based, with nodes numbered 0 to n-1 with n=1,140,149.  
It is converted to 1-based in the SuiteSparse Matrix Collection.           
                                                                           
In the SuiteSparse Matrix Collection, the graph A has 3,309,592 entries.   
A(i,j) is the number of times user 1+i editted the talk page of user 1+j,  
at any time (1+ to make the graph 1-based, where i and j refer to node     
numbers in the SNAP data set).  The usernames are held in                  
Problem.aux.usernames, as a char array of size 1,140,149-by-229.           
The kth row of this array (and the kth line of the text file in the        
MatrixMarket and Rutherford-Boeing format) is the username for the kth row 
and column of the Problem.A matrix.  The username file in the SNAP data    
set has both the node number (0 to n-1) and the user name itself; the      
node number is removed in SuiteSparse collection since it is redundant.    
                                                                           
A single user name is blank.  Line 411185 in the SNAP data file            
wiki-talk-temporal-usernames.txt contains just the string "411184 ".  It   
is converted here to "user_411185" (1+ to account for the change from      
0-based numbering in the SNAP data set to 1-based in the SuiteSparse       
Matrix Collection).                                                        
                                                                           
The temporal edges are held in the Problem.aux.temporal_edges array, of    
size 7,833,140-by-3, where each row holds a single (source,target,time)    
edge.  The source and target in this list are 1-based, ranging from 1      
to n=1,140,149.                                                            
',
    aux_fields: 'temporal_edges: full 7833140-by-3
usernames: full 1140149-by-229
',    image_files: 'wiki-talk-temporal.png,wiki-talk-temporal_scc.png,',
}
