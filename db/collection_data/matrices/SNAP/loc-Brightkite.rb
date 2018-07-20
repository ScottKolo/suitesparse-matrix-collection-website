{
    matrix_id: '2787',
    name: 'loc-Brightkite',
    group: 'SNAP',
    description: 'SNAP network: loc-Brightkite location network',
    author: 'E. Cho, S. A. Myers, J. Leskovec',
    editor: 'J. Leskovec',
    date: '2011',
    kind: 'undirected graph',
    problem_2D_or_3D: '0',
    num_rows: '58228',
    num_cols: '58228',
    nonzeros: '428156',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '547',
    pattern_symmetry: '1.000',
    numeric_symmetry: '1.000',
    rb_type: 'binary',
    structure: 'symmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'SNAP (Stanford Network Analysis Platform) Large Network Dataset Collection,
Jure Leskovec and Anrej Krevl, http://snap.stanford.edu/data, June 2014.   
email: jure at cs.stanford.edu                                             
                                                                           
loc-Brightkite                                                             
                                                                           
https://snap.stanford.edu/data/loc-Brightkite.html                         
                                                                           
Dataset information                                                        
                                                                           
Brightkite (http://www.brightkite.com/) was once a location-based social   
networking service provider where users shared their locations by          
checking-in.  The friendship network was collected using their public API, 
and consists of 58,228 nodes and 214,078 edges. The network is originally  
directed but we have constructed a network with undirected edges when there
is a friendship in both ways. We have also collected a total of 4,491,143  
checkins of these users over the period of Apr.  2008 - Oct. 2010.         
                                                                           
Dataset statistics                                                         
Nodes   58,228                                                             
Edges   214,078                                                            
Nodes in largest WCC    56739 (0.974)                                      
Edges in largest WCC    212945 (0.995)                                     
Nodes in largest SCC    56739 (0.974)                                      
Edges in largest SCC    212945 (0.995)                                     
Average clustering coefficient  0.1723                                     
Number of triangles 494728                                                 
Fraction of closed triangles    0.03979                                    
Diameter (longest shortest path)    16                                     
90-percentile effective diameter    6                                      
Checkins    4,491,143                                                      
                                                                           
Source (citation)                                                          
E. Cho, S. A. Myers, J. Leskovec. Friendship and Mobility: Friendship and  
Mobility: User Movement in Location-Based Social Networks ACM SIGKDD       
International Conference on Knowledge Discovery and Data Mining (KDD),     
2011.  http://cs.stanford.edu/people/jure/pubs/mobile-kdd11.pdf            
                                                                           
Files                                                                      
File    Description                                                        
loc-brightkite_edges.txt.gz Friendship network of Brightkite users         
loc-brightkite_totalCheckins.txt.gz                                        
    Time and location information of check-ins made by users               
                                                                           
Example of check-in information                                            
                                                                           
    [user][check-in time]     [latitude]  [longitude] [location id]        
    58186 2008-12-03T21:09:14Z  39.633321 -105.317215 ee8b88dea22411       
    58186 2008-11-30T22:30:12Z  39.633321 -105.317215 ee8b88dea22411       
    58186 2008-11-28T17:55:04Z -13.158333  -72.531389 e6e86be2a22411       
    58186 2008-11-26T17:08:25Z  39.633321 -105.317215 ee8b88dea22411       
    58187 2008-08-14T21:23:55Z  41.257924  -95.938081 4c2af967eb5df8       
    58187 2008-08-14T07:09:38Z  41.257924  -95.938081 4c2af967eb5df8       
    58187 2008-08-14T07:08:59Z  41.295474  -95.999814 f3bb9560a2532e       
    58187 2008-08-14T06:54:21Z  41.295474  -95.999814 f3bb9560a2532e       
    58188 2010-04-06T06:45:19Z  46.521389   14.854444 ddaa40aaa22411       
    58188 2008-12-30T15:30:08Z  46.522621   14.849618 58e12bc0d67e11       
    58189 2009-04-08T07:36:46Z  46.554722   15.646667 ddaf9c4ea22411       
    58190 2009-04-08T07:01:28Z  46.421389   15.869722 dd793f96a22411       
                                                                           
---------------------------------------------------------------------------
Notes on inclusion into the SuiteSparse Matrix Collection, July 2018:      
---------------------------------------------------------------------------
                                                                           
The SNAP data set is 0-based, with nodes numbered 0 to 58,227.             
                                                                           
In the SuiteSparse Matrix Collection the graph is converted to 1-based.    
The Problem.A matrix is the undirected friendship network, where           
A(i,j)=1 if person 1+i and person 1+j are friends in the SNAP data set.    
                                                                           
There are 4,747,287 checkins in the loc-brightkite_totalCheckins.txt       
file, but 6 lines are empty with a user id but no other data (those        
are discarded here).  In the SuiteSparse Matrix Collection, the checkin    
data is held in 5 vectors of length 4,747,281.  These are in the           
Problem.aux component of the MATLAB struct.  The kth entry of each of      
these vectors holds the data in the kth line of the                        
loc-brightkite_totalCheckins.txt file (after deleting the 6 empty lines).  
                                                                           
    userid: the SNAP user id is an integer in the range 0 to 58,227.  It   
        has been incremented by one, here, to reflect the corresponding    
        row and column of the Problem.A matrix.  It contains 51,406        
        unique user id\'s.                                                  
    checkin_time: a string of length 20                                    
    latitude: a double precision number                                    
    longitude: a double precision number                                   
    location_id: a string of length 61.                                    
',
    aux_fields: 'userid: full 4747281-by-1
checkin_time: full 4747281-by-20
latitude: full 4747281-by-1
longitude: full 4747281-by-1
location_id: full 4747281-by-61
',    image_files: 'loc-Brightkite.png,loc-Brightkite_scc.png,',
}
