{
    matrix_id: '2777',
    name: 'CollegeMsg',
    group: 'SNAP',
    description: 'SNAP network: messages on a Facebook-like platform at UC Irvine',
    author: 'P. Panzarasa, T. Opsahl, K. M. Carley',
    editor: 'J. Leskovec',
    date: '2009',
    kind: 'directed temporal multigraph',
    problem_2D_or_3D: '0',
    num_rows: '1899',
    num_cols: '1899',
    nonzeros: '20296',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '601',
    pattern_symmetry: '0.636',
    numeric_symmetry: '0.263',
    rb_type: 'integer',
    structure: 'unsymmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'SNAP (Stanford Network Analysis Platform) Large Network Dataset Collection,
Jure Leskovec and Anrej Krevl, http://snap.stanford.edu/data, June 2014.   
email: jure at cs.stanford.edu                                             
                                                                           
SNAP/CollegeMsg temporal network                                           
                                                                           
https://snap.stanford.edu/data/CollegeMsg.html                             
                                                                           
Dataset information                                                        
                                                                           
This dataset is comprised of private messages sent on an online social     
network at the University of California, Irvine. Users could search the    
network for others and then initiate conversation based on profile         
information. An edge (u, v, t) means that user u sent a private message to 
user v at time t. The dataset here is derived from the one hosted by Tore  
Opsahl (https://toreopsahl.com/datasets/#online_social_network), but we    
have parsed it so that it can be loaded directly into SNAP as a temporal   
network.                                                                   
                                                                           
Dataset statistics                                                         
Nodes   1899                                                               
Temporal Edges  59835                                                      
Edges in static graph   20296                                              
Time span   193 days                                                       
                                                                           
Source (citation)                                                          
Pietro Panzarasa, Tore Opsahl, and Kathleen M. Carley. "Patterns and       
dynamics of users\' behavior and interaction: Network analysis of an online 
community." Journal of the American Society for Information Science and    
Technology 60.5 (2009): 911-932.                                           
                                                                           
Files                                                                      
File    Description                                                        
CollegeMsg.txt.gz   college messaging temporal network                     
                                                                           
Data format                                                                
                                                                           
    SRC DST UNIXTS                                                         
    where edges are separated by a new line and                            
                                                                           
    SRC: id of the source node (a user)                                    
    TGT: id of the target node (a user)                                    
    UNIXTS: Unix timestamp (seconds since the epoch)                       
                                                                           
---------------------------------------------------------------------------
Notes on inclusion into the SuiteSparse Matrix Collection, July 2018:      
---------------------------------------------------------------------------
                                                                           
The SNAP data set is 1-based, with nodes numbered 1 to 1,899.              
                                                                           
In the SuiteSparse Matrix Collection, the primary graph (Problem.A in the  
MATLAB struct) is the static graph (a sparse integer matrix).  A(i,j) is   
the number of edges (i,j,t) that appear in the graph, for any timestamp t. 
The individual edges (u,v,t) are kept in the Problem.aux.temporal_edges    
array, where each row of the array is an edge (i,j,t).                     
',
    aux_fields: 'temporal_edges: full 59835-by-3
',    image_files: 'CollegeMsg.png,CollegeMsg_scc.png,',
}
