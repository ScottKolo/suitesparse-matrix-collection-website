{
    matrix_id: '2783',
    name: 'com-Youtube',
    group: 'SNAP',
    description: 'SNAP network: Youtube social network and ground-truth communities',
    author: 'J. Yang, J. Leskovec',
    editor: 'J. Leskovec',
    date: '2012',
    kind: 'undirected graph with communities',
    problem_2D_or_3D: '0',
    num_rows: '1134890',
    num_cols: '1134890',
    nonzeros: '5975248',
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
                                                                           
Youtube social network and ground-truth communities                        
                                                                           
https://snap.stanford.edu/data/com-Youtube.html                            
                                                                           
Dataset information                                                        
                                                                           
Youtube (http://www.youtube.com/) is a video-sharing web site that includes
a social network. In the Youtube social network, users form friendship each
other and users can create groups which other users can join. We consider  
such user-defined groups as ground-truth communities. This data is provided
by Alan Mislove et al.                                                     
(http://socialnetworks.mpi-sws.org/data-imc2007.html)                      
                                                                           
We regard each connected component in a group as a separate ground-truth   
community. We remove the ground-truth communities which have less than 3   
nodes.  We also provide the top 5,000 communities with highest quality     
which are described in our paper (http://arxiv.org/abs/1205.6233). As for  
the network, we provide the largest connected component.                   
                                                                           
Network statistics                                                         
Nodes   1,134,890                                                          
Edges   2,987,624                                                          
Nodes in largest WCC    1134890 (1.000)                                    
Edges in largest WCC    2987624 (1.000)                                    
Nodes in largest SCC    1134890 (1.000)                                    
Edges in largest SCC    2987624 (1.000)                                    
Average clustering coefficient  0.0808                                     
Number of triangles 3056386                                                
Fraction of closed triangles    0.002081                                   
Diameter (longest shortest path)    20                                     
90-percentile effective diameter    6.5                                    
Community statistics                                                       
Number of communities   8,385                                              
Average community size  13.50                                              
Average membership size 0.10                                               
                                                                           
Source (citation)                                                          
J. Yang and J. Leskovec. Defining and Evaluating Network Communities based 
on Ground-truth. ICDM, 2012.  http://arxiv.org/abs/1205.6233               
                                                                           
Files                                                                      
File    Description                                                        
com-youtube.ungraph.txt.gz  Undirected Youtube network                     
com-youtube.all.cmty.txt.gz Youtube communities                            
com-youtube.top5000.cmty.txt.gz Youtube communities (Top 5,000)            
                                                                           
---------------------------------------------------------------------------
Notes on inclusion into the SuiteSparse Matrix Collection, July 2018:      
---------------------------------------------------------------------------
                                                                           
The graph in the SNAP data set is 1-based, with nodes numbered 1 to        
1,157,827.                                                                 
                                                                           
In the SuiteSparse Matrix Collection, Problem.A is the undirected Youtube  
network, a matrix of size n-by-n with n=1,134,890, which is the number of  
unique user id\'s appearing in any edge.                                    
                                                                           
Problem.aux.nodeid is a list of the node id\'s that appear in the SNAP data 
set.  A(i,j)=1 if person nodeid(i) is friends with person nodeid(j).  The  
node id\'s are the same as the SNAP data set (1-based).                     
                                                                           
C = Problem.aux.Communities_all is a sparse matrix of size n by 16,386     
which represents the communities in the com-youtube.all.cmty.txt file.     
The kth line in that file defines the kth community, and is the column     
C(:,k), where C(i,k)=1 if person nodeid(i) is in the kth community.  Row   
C(i,:) and row/column i of the A matrix thus refer to the same person,     
nodeid(i).                                                                 
                                                                           
Ctop = Problem.aux.Communities_top5000 is n-by-5000, with the same         
structure as the C array above, with the content of the                    
com-youtube.top5000.cmty.txt.gz file.                                      
',
    aux_fields: 'nodeid: full 1134890-by-1
Communities_all: sparse 1134890-by-16386
Communities_top5000: sparse 1134890-by-5000
',    image_files: 'com-Youtube.png,',
}
