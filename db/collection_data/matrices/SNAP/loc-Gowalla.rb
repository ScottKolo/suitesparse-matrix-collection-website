{
    matrix_id: '2788',
    name: 'loc-Gowalla',
    group: 'SNAP',
    description: 'SNAP network: loc-Gowalla location network',
    author: 'E. Cho, S. A. Myers, J. Leskovec',
    editor: 'J. Leskovec',
    date: '2011',
    kind: 'undirected graph',
    problem_2D_or_3D: '0',
    num_rows: '196591',
    num_cols: '196591',
    nonzeros: '1900654',
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
                                                                           
loc-Gowalla                                                                
                                                                           
https://snap.stanford.edu/data/loc-Gowalla.html                            
                                                                           
Dataset information                                                        
                                                                           
Gowalla (http://www.gowalla.com/) is a location-based social networking    
website where users share their locations by checking-in. The friendship   
network is undirected and was collected using their public API, and        
consists of 196,591 nodes and 950,327 edges. We have collected a total of  
6,442,890 check-ins of these users over the period of Feb. 2009 - Oct.     
2010.                                                                      
                                                                           
Dataset statistics                                                         
Nodes   196,591                                                            
Edges   950,327                                                            
Nodes in largest WCC    196591 (1.000)                                     
Edges in largest WCC    950327 (1.000)                                     
Nodes in largest SCC    196591 (1.000)                                     
Edges in largest SCC    950327 (1.000)                                     
Average clustering coefficient  0.2367                                     
Number of triangles 2273138                                                
Fraction of closed triangles    0.007952                                   
Diameter (longest shortest path)    14                                     
90-percentile effective diameter    5.7                                    
Check-ins   6,442,890                                                      
                                                                           
Source (citation)                                                          
E. Cho, S. A. Myers, J. Leskovec. Friendship and Mobility: Friendship and  
Mobility: User Movement in Location-Based Social Networks ACM SIGKDD       
International Conference on Knowledge Discovery and Data Mining (KDD),     
2011.  http://cs.stanford.edu/people/jure/pubs/mobile-kdd11.pdf            
                                                                           
Files                                                                      
File    Description                                                        
loc-gowalla_edges.txt.gz    Friendship network of Gowalla users            
loc-gowalla_totalCheckins.txt.gz    Time and location information          
                                    of check-ins made by users             
                                                                           
Example of check-in information                                            
                                                                           
    [user]  [check-in time]      [latitude]    [longitude] [location id]   
    196514  2010-07-24T13:45:06Z 53.3648119    -2.2723465833   145064      
    196514  2010-07-24T13:44:58Z 53.360511233  -2.276369017    1275991     
    196514  2010-07-24T13:44:46Z 53.3653895945 -2.2754087046   376497      
    196514  2010-07-24T13:44:38Z 53.3663709833 -2.2700764333   98503       
    196514  2010-07-24T13:44:26Z 53.3674087524 -2.2783813477   1043431     
    196514  2010-07-24T13:44:08Z 53.3675663377 -2.278631763    881734      
    196514  2010-07-24T13:43:18Z 53.3679640626 -2.2792943689   207763      
    196514  2010-07-24T13:41:10Z 53.364905     -2.270824       1042822     
                                                                           
---------------------------------------------------------------------------
Notes on inclusion into the SuiteSparse Matrix Collection, July 2018:      
---------------------------------------------------------------------------
                                                                           
The SNAP data set is 0-based, with nodes numbered 0 to 196,590.            
                                                                           
In the SuiteSparse Matrix Collection the graph is converted to 1-based.    
The Problem.A matrix is the undirected friendship network, where A(i,j)=1  
if person 1+i and person 1+j are friends in the SNAP data set.             
                                                                           
There are 6,442,892 checkins in the loc-gowalla_totalCheckins.txt          
(the SNAP web page states 6,442,890).                                      
                                                                           
In the SuiteSparse Matrix Collection, the checkin data is held in 5 vectors
of length 6,442,892.  These are in the Problem.aux component of the MATLAB 
struct.  The kth entry of each of these vectors holds the data in the kth  
line of the loc-gowalla_totalCheckins.txt file.                            
                                                                           
    userid: the SNAP user id is an integer in the range 0 to 196,590.      
        It has been incremented by one, here, to reflect the               
        corresponding row and column of the Problem.A matrix.              
        There are 107,092 unique user id\'s in the checkins.                
    checkin_time: a string of length 20                                    
    latitude: a double precision number                                    
    longitude: a double precision number                                   
    location_id: an integer                                                
',
    aux_fields: 'userid: full 6442892-by-1
checkin_time: full 6442892-by-20
latitude: full 6442892-by-1
longitude: full 6442892-by-1
location_id: full 6442892-by-1
',    image_files: 'loc-Gowalla.png,',
}
