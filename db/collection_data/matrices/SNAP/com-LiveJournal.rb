{
    matrix_id: '2781',
    name: 'com-LiveJournal',
    group: 'SNAP',
    description: 'SNAP network: LiveJournal social network and ground-truth communities',
    author: 'J. Yang, J. Leskovec',
    editor: 'J. Leskovec',
    date: '2012',
    kind: 'undirected graph with communities',
    problem_2D_or_3D: '0',
    num_rows: '3997962',
    num_cols: '3997962',
    nonzeros: '69362378',
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
                                                                           
LiveJournal social network and ground-truth communities                    
                                                                           
https://snap.stanford.edu/data/com-LiveJournal.html                        
                                                                           
Dataset information                                                        
                                                                           
LiveJournal (http://www.livejournal.com/) is a free on-line blogging       
community where users declare friendship each other. LiveJournal also      
allows users form a group which other members can then join. We consider   
such user-defined groups as ground-truth communities. We provide the       
LiveJournal friendship social network and ground-truth communities.        
                                                                           
We regard each connected component in a group as a separate ground-truth   
community. We remove the ground-truth communities which have less than 3   
nodes.  We also provide the top 5,000 communities with highest quality     
which are described in our paper (http://arxiv.org/abs/1205.6233). As for  
the network, we provide the largest connected component.                   
                                                                           
Dataset statistics                                                         
Nodes    3,997,962                                                         
Edges   34,681,189                                                         
Nodes in largest WCC    3997962 (1.000)                                    
Edges in largest WCC    34681189 (1.000)                                   
Nodes in largest SCC    3997962 (1.000)                                    
Edges in largest SCC    34681189 (1.000)                                   
Average clustering coefficient  0.2843                                     
Number of triangles 177820130                                              
Fraction of closed triangles    0.04559                                    
Diameter (longest shortest path)    17                                     
90-percentile effective diameter    6.5                                    
                                                                           
Source (citation)                                                          
J. Yang and J. Leskovec. Defining and Evaluating Network Communities based 
on Ground-truth. ICDM, 2012.  http://arxiv.org/abs/1205.6233               
                                                                           
Files                                                                      
File    Description                                                        
com-lj.ungraph.txt.gz   Undirected LiveJournal network                     
com-lj.all.cmty.txt.gz  LiveJournal communities                            
com-lj.top5000.cmty.txt.gz  LiveJournal communities (Top 5,000)            
                                                                           
---------------------------------------------------------------------------
Notes on inclusion into the SuiteSparse Matrix Collection, July 2018:      
---------------------------------------------------------------------------
                                                                           
The graph in the SNAP data set is 0-based, with nodes numbering 0 to       
4,036,537.                                                                 
                                                                           
In the SuiteSparse Matrix Collection, Problem.A is the undirected          
LiveJournal network, a matrix of size n-by-n with n=3,997,962, which is    
the number of unique user id\'s appearing in any edge.                      
                                                                           
Problem.aux.nodeid is a list of the node id\'s that appear in the SNAP data 
set.  A(i,j)=1 if person nodeid(i) is friends with person nodeid(j).  The  
node id\'s are the same as the SNAP data set (0-based).                     
                                                                           
C = Problem.aux.Communities_all is a sparse matrix of size n by 664,414    
which represents the communities in the com-lj.all.cmty.txt file.  The kth 
line in that file defines the kth community, and is the column C(:,k),     
where C(i,k)=1 if person nodeid(i) is in the kth community.  Row C(i,:)    
and row/column i of the A matrix thus refer to the same person, nodeid(i). 
                                                                           
Ctop = Problem.aux.Communities_top5000 is n-by-5000, with the same         
structure as the C array above, with the content of the                    
com-lj.top5000.cmty.txt file.                                              
',
    aux_fields: 'nodeid: full 3997962-by-1
Communities_all: sparse 3997962-by-664414
Communities_top5000: sparse 3997962-by-5000
',    image_files: 'com-LiveJournal.png,',
}
