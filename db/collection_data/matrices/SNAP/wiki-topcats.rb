{
    matrix_id: '2799',
    name: 'wiki-topcats',
    group: 'SNAP',
    description: 'SNAP network:  Wikipedia network of top categories',
    author: 'H. Yin, A. R. Benson, J. Leskovec, D. F. Gleich',
    editor: 'J. Leskovec',
    date: '2011',
    kind: 'directed graph with communities',
    problem_2D_or_3D: '0',
    num_rows: '1791489',
    num_cols: '1791489',
    nonzeros: '28511807',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    pattern_symmetry: '0.215',
    numeric_symmetry: '0.215',
    rb_type: 'binary',
    structure: 'unsymmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'SNAP (Stanford Network Analysis Platform) Large Network Dataset Collection,
Jure Leskovec and Anrej Krevl, http://snap.stanford.edu/data, June 2014.   
email: jure at cs.stanford.edu                                             
                                                                           
Wikipedia network of top categories                                        
                                                                           
https://snap.stanford.edu/data/wiki-topcats.html                           
                                                                           
Dataset information                                                        
                                                                           
This is a web graph of Wikipedia hyperlinks collected in September 2011.   
The network was constructed by first taking the largest strongly connected 
component of Wikipedia, then restricting to pages in the top set of        
categories (those with at least 100 pages), and finally taking the largest 
strongly connected component of the restricted graph.                      
                                                                           
In addition to the graph, we also provide the page names of the articles   
and the categories of the articles. The categories can serve as            
"ground-truth" communities. The categories are overlapping as each article 
may be classified into several categories.                                 
                                                                           
Dataset statistics                                                         
Nodes   1,791,489                                                          
Edges   28,511,807                                                         
Nodes in largest WCC    1791489 (1.000)                                    
Edges in largest WCC    28511807 (1.000)                                   
Nodes in largest SCC    1791489 (1.000)                                    
Edges in largest SCC    28511807 (1.000)                                   
Average clustering coefficient  0.2746                                     
Number of triangles 52106893                                               
Fraction of closed triangles    0.00165                                    
Diameter (longest shortest path)    9                                      
90-percentile effective diameter    3.8                                    
                                                                           
Source (citation)                                                          
Hao Yin, Austin R. Benson, Jure Leskovec, and David F. Gleich. "Local      
Higher-order Graph Clustering." In Proceedings of the 23rd ACM SIGKDD      
International Conference on Knowledge Discovery and Data Mining. 2017.     
                                                                           
Christine Klymko, David F. Gleich, and Tamara G. Kolda. "Using triangles to
improve community detection in directed networks." In Proceedings of the   
ASE BigData Conference. 2014.                                              
                                                                           
Files                                                                      
File    Description                                                        
wiki-topcats.txt.gz Hyperlink network of Wikipedia                         
wiki-topcats-categories.txt.gz                                             
    Which articles are in which of the top categories                      
wiki-topcats-page-names.txt.gz  Names of the articles                      
                                                                           
---------------------------------------------------------------------------
Notes on inclusion into the SuiteSparse Matrix Collection, July 2018:      
---------------------------------------------------------------------------
                                                                           
The SNAP data set is 0-based, with nodes numbered 0 to n-1 with            
n=1,791,489.  It is converted to 1-based in the SuiteSparse Matrix         
Collection.                                                                
                                                                           
Problem.A is the directed graph, where A(i,j)=1 if the ith page has a link 
to the jth page (with i and j in the range 1 to n, so they are 1+ offset   
from the SNAP node numbers).  The number of links is not in the SNAP data  
set, so if page i has multiple links to page j, it still counts as just a  
single edge; this is not a multigraph.                                     
                                                                           
Problem.aux.pagenames is a char array of size n-by-TODO, with the kth row  
equal to the name of the kth page, and also the kth line of the text file  
in the MatrixMarket and Rutherford-Boeing format.  In the SNAP data set,   
the name was prepended with the node number, but that has been removed here
since the node numbering has changed from 0-based to 1-based.              
                                                                           
81 of the pages have no names; these have been named as "page_#" where # is
the node number in the 1-based graph.                                      
                                                                           
The wiki-topcats-categories.txt data defines 17,364 categories, and is held
in two parts in the SuiteSparse collection.  Problem.aux.Category_names is 
a char array of size 17,364-by-96 with the name of each category           
(Category_names(k,:) is the name of the kth category).  The sparse matrix C
= Problem.aux.Categories defines the pages in each category.  The kth      
category is represented as C(:,k), where C(i,k)=1 if page i is in the kth  
category.                                                                  
                                                                           
All categories in the SNAP data set are preserved, including four empty    
categories:                                                                
                                                                           
    Category 5207 [Shanghai_Metro_stations]                                
    Category 6554 [Disused_railway_stations_in_Pomeranian_Voivodeship]     
    Category 8404 [Colostethus]                                            
    Category 17358 [Days_in_2004]                                          
                                                                           
and thus columns 5207, 6554, 8404, and 17358 are all zero in the matrix C. 
All top categories consisted of at least 100 pages in the raw data, but    
only the largest strongly-connected component was kept in the final        
published SNAP data set.                                                   
',
    aux_fields: 'pagenames: full 1791489-by-208
Category_names: full 17364-by-96
Categories: sparse 1791489-by-17364
',    image_files: 'wiki-topcats.png,',
}
