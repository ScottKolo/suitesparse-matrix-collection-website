{
    matrix_id: '2782',
    name: 'com-Orkut',
    group: 'SNAP',
    description: 'SNAP network: Orkut social network and ground-truth communities',
    author: 'J. Yang, J. Leskovec',
    editor: 'J. Leskovec',
    date: '2012',
    kind: 'undirected graph with communities',
    problem_2D_or_3D: '0',
    num_rows: '3072441',
    num_cols: '3072441',
    nonzeros: '234370166',
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
                                                                           
Orkut social network and ground-truth communities                          
                                                                           
https://snap.stanford.edu/data/com-Orkut.html                              
                                                                           
Dataset information                                                        
                                                                           
Orkut (http://www.orkut.com/) is a free on-line social network where users 
form friendship each other.  Orkut also allows users form a group which    
other members can then join. We consider such user-defined groups as       
ground-truth communities. We provide the Orkut friendship social network   
and ground-truth communities. This data is provided by Alan Mislove et al. 
(http://socialnetworks.mpi-sws.org/data-imc2007.html)                      
                                                                           
We regard each connected component in a group as a separate ground-truth   
community. We remove the ground-truth communities which have less than 3   
nodes.  We also provide the top 5,000 communities with highest quality     
which are described in our paper (http://arxiv.org/abs/1205.6233). As for  
the network, we provide the largest connected component.                   
                                                                           
Dataset statistics                                                         
Nodes   3,072,441                                                          
Edges   117,185,083                                                        
Nodes in largest WCC    3072441 (1.000)                                    
Edges in largest WCC    117185083 (1.000)                                  
Nodes in largest SCC    3072441 (1.000)                                    
Edges in largest SCC    117185083 (1.000)                                  
Average clustering coefficient  0.1666                                     
Number of triangles 627584181                                              
Fraction of closed triangles    0.01414                                    
Diameter (longest shortest path)    9                                      
90-percentile effective diameter    4.8                                    
                                                                           
Source (citation)                                                          
J. Yang and J. Leskovec. Defining and Evaluating Network Communities based 
on Ground-truth. ICDM, 2012.  http://arxiv.org/abs/1205.6233               
                                                                           
Files                                                                      
File    Description                                                        
com-orkut.ungraph.txt.gz    Undirected Orkut network                       
com-orkut.all.cmty.txt.gz   Orkut communities                              
com-orkut.top5000.cmty.txt.gz   Orkut communities (Top 5,000)              
                                                                           
---------------------------------------------------------------------------
Notes on inclusion into the SuiteSparse Matrix Collection, July 2018:      
---------------------------------------------------------------------------
                                                                           
The graph in the SNAP data set is 1-based, with nodes numbered 1 to        
3,072,626.                                                                 
                                                                           
In the SuiteSparse Matrix Collection, Problem.A is the undirected          
Orkut network, a matrix of size n-by-n with n=3,072,441, which is          
the number of unique user id\'s appearing in any edge.                      
                                                                           
Problem.aux.nodeid is a list of the node id\'s that appear in the SNAP data 
set.  A(i,j)=1 if person nodeid(i) is friends with person nodeid(j).  The  
node id\'s are the same as the SNAP data set (1-based).                     
                                                                           
C = Problem.aux.Communities_all is a sparse matrix of size n by 15,301,901 
which represents the same number communities in the com-orkut.all.cmty.txt 
file.  The kth line in that file defines the kth community, and is the     
column C(:,k), where where C(i,k)=1 if person nodeid(i) is in the kth      
community.  Row C(i,:) and row/column i of the A matrix thus refer to the  
same person, nodeid(i).                                                    
                                                                           
Ctop = Problem.aux.Communities_top5000 is n-by-5000, with the same         
structure as the C array above, with the content of the top 5000           
communities in the com-orkut.top5000.cmty.txt file.                        
',
    aux_fields: 'nodeid: full 3072441-by-1
Communities_all: sparse 3072441-by-15301901
Communities_top5000: sparse 3072441-by-5000
',    image_files: 'com-Orkut.png,',
}
