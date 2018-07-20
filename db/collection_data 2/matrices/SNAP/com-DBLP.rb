{
    matrix_id: '2779',
    name: 'com-DBLP',
    group: 'SNAP',
    description: 'SNAP network: DBLP collaboration network and ground-truth communities',
    author: 'J. Yang, J. Leskovec',
    editor: 'J. Leskovec',
    date: '2012',
    kind: 'undirected graph with communities',
    problem_2D_or_3D: '0',
    num_rows: '317080',
    num_cols: '317080',
    nonzeros: '2099732',
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
                                                                           
DBLP collaboration network and ground-truth communities                    
                                                                           
https://snap.stanford.edu/data/com-DBLP.html                               
                                                                           
Dataset information                                                        
                                                                           
The DBLP (http://dblp.uni-trier.de/) computer science bibliography provides
a comprehensive list of research papers in computer science. We construct a
co-authorship network where two authors are connected if they publish at   
least one paper together.  Publication venue, e.g, journal or conference,  
defines an individual ground-truth community; authors who published to a   
certain journal or conference form a community.                            
                                                                           
We regard each connected component in a group as a separate ground-truth   
community. We remove the ground-truth communities which have less than 3   
nodes.  We also provide the top 5,000 communities with highest quality     
which are described in our paper (http://arxiv.org/abs/1205.6233). As for  
the network, we provide the largest connected component.                   
                                                                           
Dataset statistics                                                         
Nodes   317080                                                             
Edges   1049866                                                            
Nodes in largest WCC    317080 (1.000)                                     
Edges in largest WCC    1049866 (1.000)                                    
Nodes in largest SCC    317080 (1.000)                                     
Edges in largest SCC    1049866 (1.000)                                    
Average clustering coefficient  0.6324                                     
Number of triangles 2224385                                                
Fraction of closed triangles    0.1283                                     
Diameter (longest shortest path)    21                                     
90-percentile effective diameter    8                                      
                                                                           
Source (citation)                                                          
J. Yang and J. Leskovec. Defining and Evaluating Network Communities based 
on Ground-truth. ICDM, 2012.  http://arxiv.org/abs/1205.6233               
                                                                           
Files                                                                      
File    Description                                                        
com-dblp.ungraph.txt.gz Undirected DBLP co-authorship network              
com-dblp.all.cmty.txt.gz    DBLP communities                               
com-dblp.top5000.cmty.txt.gz    DBLP communities (Top 5,000)               
                                                                           
---------------------------------------------------------------------------
Notes on inclusion into the SuiteSparse Matrix Collection, July 2018:      
---------------------------------------------------------------------------
                                                                           
The graph in the SNAP data set is 0-based, with nodes numbering 0 to       
425,956.                                                                   
                                                                           
In the SuiteSparse Matrix Collection, Problem.A is the undirected          
collaboration graph, a matrix of size n-by-n with n=317,080, which is the  
number of unique author id\'s appearing in any edge.  Problem.aux.nodeid is 
a list of the node id\'s that appear in the SNAP data set.  A(i,j)=1 if the 
author with nodeid(i) is a coauthor with the author with nodeid(j).        
The node id\'s are the same as the SNAP data set (0-based).                 
                                                                           
C = Problem.aux.Communities_all is a sparse matrix of size n by 13,477,    
which represents the 13,477 communities in the com-dblp.all.cmty.txt file. 
The kth line in that file defines the kth community, and is the column     
C(:,k), where C(i,k)=1 if author nodeid(i) is in the kth community.  Row   
C(i,:) and row/column i of the A matrix thus refer to the same author.     
There are a few duplicate communities in this list with 13,423 unique      
communities out of 13,477 total.                                           
                                                                           
Ctop = Problem.aux.Communities_top5000 is n-by-5000, with the same         
structure as the C array above.  This list has duplicates, which are       
preserved here.  There are 4,961 unique communities.                       
',
    aux_fields: 'nodeid: full 317080-by-1
Communities_all: sparse 317080-by-13477
Communities_top5000: sparse 317080-by-5000
',    image_files: 'com-DBLP.png,',
}
