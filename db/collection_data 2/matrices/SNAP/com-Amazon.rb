{
    matrix_id: '2778',
    name: 'com-Amazon',
    group: 'SNAP',
    description: 'SNAP network: Amazon product co-purchasing network and ground-truth communities',
    author: 'J. Yang, J. Leskovec',
    editor: 'J. Leskovec',
    date: '2012',
    kind: 'undirected graph with communities',
    problem_2D_or_3D: '0',
    num_rows: '334863',
    num_cols: '334863',
    nonzeros: '1851744',
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
                                                                           
Amazon product co-purchasing network and ground-truth communities          
                                                                           
https://snap.stanford.edu/data/com-Amazon.html                             
                                                                           
Dataset information                                                        
                                                                           
Network was collected by crawling the Amazon.com website. It is based on   
Customers Who Bought This Item Also Bought feature of the Amazon website.  
If a product i is frequently co-purchased with product j, the graph        
contains an undirected edge from i to j. Each product category provided by 
Amazon defines each ground-truth community.                                
                                                                           
We regard each connected component in a product category as a separate     
ground-truth community. We remove the ground-truth communities which have  
less than 3 nodes. We also provide the top 5,000 communities with highest  
quality which are described in our paper (http://arxiv.org/abs/1205.6233). 
As for the network, we provide the largest connected component.            
                                                                           
Dataset statistics                                                         
Nodes   334863                                                             
Edges   925872                                                             
Nodes in largest WCC    334863 (1.000)                                     
Edges in largest WCC    925872 (1.000)                                     
Nodes in largest SCC    334863 (1.000)                                     
Edges in largest SCC    925872 (1.000)                                     
Average clustering coefficient  0.3967                                     
Number of triangles 667129                                                 
Fraction of closed triangles    0.07925                                    
Diameter (longest shortest path)    44                                     
90-percentile effective diameter    15                                     
                                                                           
Source (citation) J. Yang and J. Leskovec. Defining and Evaluating Network 
Communities based on Ground-truth. ICDM, 2012.                             
http://arxiv.org/abs/1205.6233                                             
                                                                           
Files                                                                      
File    Description                                                        
com-amazon.ungraph.txt.gz   Undirected Amazon product co-purchasing network
com-amazon.all.dedup.cmty.txt.gz    Amazon communities                     
com-amazon.top5000.cmty.txt.gz  Amazon communities (Top 5,000)             
                                                                           
---------------------------------------------------------------------------
Notes on inclusion into the SuiteSparse Matrix Collection, July 2018:      
---------------------------------------------------------------------------
                                                                           
The graph in the SNAP data set is 1-based, with nodes numbered 1 to        
548,551.                                                                   
                                                                           
In the SuiteSparse Matrix Collection, Problem.A is the undirected Amazon   
product co-purchasing network, a matrix of size n-by-n with n=334,863,     
which is the number of unique product id\'s appearing in any edge.          
Problem.aux.nodeid is a list of the node id\'s that appear in the SNAP data 
set.  A(i,j)=1 if the product nodeid(i) is co-purchased with product       
nodeid(j).  The node id\'s are the same as the SNAP data set (1-based).     
                                                                           
C = Problem.aux.Communities_all is a sparse matrix of size n by 75,149,    
which holds the 75,149 categories in the com-amazon.all.dedup.cmty.txt     
file.  The kth line in that file defines the kth community, and is the     
column C(:,k), where C(i,k)=1 if product nodeid(i) is in the kth           
community.  Row C(i,:) and row/column i of the A matrix thus refer to the  
same product, nodeid(i).                                                   
                                                                           
Ctop = Problem.aux.Communities_top5000 is n-by-5000, with the same         
structure as the C array above, with the content of the                    
com-amazon.top5000.cmty.txt.                                               
',
    aux_fields: 'nodeid: full 334863-by-1
Communities_all: sparse 334863-by-75149
Communities_top5000: sparse 334863-by-5000
',    image_files: 'com-Amazon.png,',
}
