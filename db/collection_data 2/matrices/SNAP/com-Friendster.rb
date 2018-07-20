{
    matrix_id: '2780',
    name: 'com-Friendster',
    group: 'SNAP',
    description: 'SNAP network: Friendster social network and ground-truth communities',
    author: 'J. Yang, J. Leskovec',
    editor: 'J. Leskovec',
    date: '2012',
    kind: 'undirected graph with communities',
    problem_2D_or_3D: '0',
    num_rows: '65608366',
    num_cols: '65608366',
    nonzeros: '3612134270',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    pattern_symmetry: '1.000',
    numeric_symmetry: '1.000',
    rb_type: 'binary',
    structure: 'symmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'SNAP (Stanford Network Analysis Platform) Large Network Dataset Collection,
Jure Leskovec and Anrej Krevl, http://snap.stanford.edu/data, June 2014.   
email: jure at cs.stanford.edu                                             
                                                                           
Friendster social network and ground-truth communities                     
                                                                           
https://snap.stanford.edu/data/com-Friendster.html                         
                                                                           
Dataset information                                                        
                                                                           
Friendster (http://www.friendster.com/) is an on-line gaming network.      
Before re-launching as a game website, Friendster was a social networking  
site where users can form a friendship edge with each other. Friendster    
social network also allows users form a group which other members can then 
join. We consider such user-defined groups as ground-truth communities. For
the social network, we take the induced subgraph of the nodes that either  
belong to at least one community or are connected to other nodes that      
belong to at least one community. This data is provided by The Web Archive 
Project (http://archive.org/details/friendster-dataset-201107), where the  
full graph is available.                                                   
                                                                           
We regard each connected component in a group as a separate ground-truth   
community. We remove the ground-truth communities which have less than 3   
nodes.  We also provide the top 5,000 communities with highest quality     
which are described in our paper (http://arxiv.org/abs/1205.6233). As for  
the network, we provide the largest connected component.                   
                                                                           
Dataset statistics                                                         
Nodes   65,608,366                                                         
Edges   1,806,067,135                                                      
Nodes in largest WCC    65608366 (1.000)                                   
Edges in largest WCC    1806067135 (1.000)                                 
Nodes in largest SCC    65608366 (1.000)                                   
Edges in largest SCC    1806067135 (1.000)                                 
Average clustering coefficient  0.1623                                     
Number of triangles 4173724142                                             
Fraction of closed triangles    0.005859                                   
Diameter (longest shortest path)    32                                     
90-percentile effective diameter    5.8                                    
                                                                           
Source (citation)                                                          
J. Yang and J. Leskovec. Defining and Evaluating Network Communities based 
on Ground-truth. ICDM, 2012.  http://arxiv.org/abs/1205.6233               
                                                                           
Files                                                                      
File    Description                                                        
com-friendster.ungraph.txt.gz   Undirected Friendster network              
com-friendster.all.cmty.txt.gz  Friendster communities                     
com-friendster.top5000.cmty.txt.gz  Friendster communities (Top 5,000)     
                                                                           
---------------------------------------------------------------------------
Notes on inclusion into the SuiteSparse Matrix Collection, July 2018:      
---------------------------------------------------------------------------
                                                                           
The graph in the SNAP data set is 1-based, with nodes numbered 1 to        
124,836,179.                                                               
                                                                           
In the SuiteSparse Matrix Collection, Problem.A is the undirected          
Friendster network, a matrix of size n-by-n with n=65,608,366, which is    
the number of unique user id\'s appearing in any edge.                      
                                                                           
Problem.aux.nodeid is a list of the node id\'s that appear in the SNAP data 
set.  A(i,j)=1 if person nodeid(i) is friends with person nodeid(j).  The  
node id\'s are the same as the SNAP data set (1-based).                     
                                                                           
C = Problem.aux.Communities_all is a sparse matrix of size n by 1,620,991, 
which represents the same number communities in the                        
com-friendster.all.cmty.txt file.  The kth line in that file defines the   
kth community, and is the column C(:,k), where where C(i,k)=1 if person    
nodeid(i) is in the kth community.  Row C(i,:) and row/column i of the A   
matrix thus refer to the same person, nodeid(i).                           
                                                                           
Ctop = Problem.aux.Communities_top5000 is n-by-5000, with the same         
structure as the C array above, with the content of the top 5000           
communities in the com-friendster.top5000.cmty.txt file.                   
',
    aux_fields: 'nodeid: full 65608366-by-1
Communities_all: sparse 65608366-by-1620991
Communities_top5000: sparse 65608366-by-5000
',    image_files: 'com-Friendster.png,',
}
