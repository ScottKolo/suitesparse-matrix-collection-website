{
    matrix_id: '2786',
    name: 'higgs-twitter',
    group: 'SNAP',
    description: 'SNAP network: Higgs Twitter dataset',
    author: 'M. De Domenico, A. Lima, P. Mougel and M. Musolesi',
    editor: 'J. Leskovec',
    date: '2015',
    kind: 'directed temporal multigraph',
    problem_2D_or_3D: '0',
    num_rows: '456626',
    num_cols: '456626',
    nonzeros: '14855842',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '91664',
    pattern_symmetry: '0.316',
    numeric_symmetry: '0.316',
    rb_type: 'binary',
    structure: 'unsymmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'SNAP (Stanford Network Analysis Platform) Large Network Dataset Collection,
Jure Leskovec and Anrej Krevl, http://snap.stanford.edu/data, June 2014.   
email: jure at cs.stanford.edu                                             
                                                                           
Higgs Twitter Dataset                                                      
                                                                           
https://snap.stanford.edu/data/higgs-twitter.html                          
                                                                           
Dataset information                                                        
                                                                           
The Higgs dataset has been built after monitoring the spreading processes  
on Twitter before, during and after the announcement of the discovery of a 
new particle with the features of the elusive Higgs boson on 4th July 2012.
The messages posted in Twitter about this discovery between 1st and 7th    
July 2012 are considered.                                                  
                                                                           
The four directional networks made available here have been extracted from 
user activities in Twitter as:                                             
                                                                           
    1. re-tweeting (retweet network)                                       
    2. replying (reply network) to existing tweets                         
    3. mentioning (mention network) other users                            
    4. friends/followers social relationships among user involved          
       in the above activities                                             
    5. information about activity on Twitter during the discovery of       
       Higgs boson                                                         
                                                                           
It is worth remarking that the user IDs have been anonimized, and the same 
user ID is used for all networks. This choice allows to use the Higgs      
dataset in studies about large-scale interdependent/interconnected         
multiplex/multilayer networks, where one layer accounts for the social     
structure and three layers encode different types of user dynamics.        
                                                                           
For more information about data collection, please refer to our paper.     
                                                                           
Dataset statistics are calculated for the graph with the highest number of 
nodes and edges:                                                           
                                                                           
Social Network statistics                                                  
Nodes   456,626                                                            
Edges   14,855,842                                                         
Nodes in largest WCC    456290 (0.999)                                     
Edges in largest WCC    14855466 (1.000)                                   
Nodes in largest SCC    360210 (0.789)                                     
Edges in largest SCC    14102605 (0.949)                                   
Average clustering coefficient  0.1887                                     
Number of triangles 83023401                                               
Fraction of closed triangles    0.002901                                   
Diameter (longest shortest path)    9                                      
90-percentile effective diameter    3.7                                    
                                                                           
Retweet Network statistics                                                 
Nodes   256,491                                                            
Edges   328,132                                                            
Nodes in largest WCC    223833 (0.873)                                     
Edges in largest WCC    308596 (0.940)                                     
Nodes in largest SCC    984 (0.004)                                        
Edges in largest SCC    3850 (0.012)                                       
Average clustering coefficient  0.0156                                     
Number of triangles 21172                                                  
Fraction of closed triangles    0.0001085                                  
Diameter (longest shortest path)    19                                     
90-percentile effective diameter    6.8                                    
                                                                           
Reply Network statistics                                                   
Nodes   38,918                                                             
Edges   32,523                                                             
Nodes in largest WCC    12839 (0.330)                                      
Edges in largest WCC    14944 (0.459)                                      
Nodes in largest SCC    322 (0.008)                                        
Edges in largest SCC    708 (0.022)                                        
Average clustering coefficient  0.0058                                     
Number of triangles 244                                                    
Fraction of closed triangles    0.0001561                                  
Diameter (longest shortest path)    29                                     
90-percentile effective diameter    10                                     
                                                                           
Mention Network statistics                                                 
Nodes   116,408                                                            
Edges   150,818                                                            
Nodes in largest WCC    91606 (0.787)                                      
Edges in largest WCC    132068 (0.876)                                     
Nodes in largest SCC    1801 (0.015)                                       
Edges in largest SCC    7069 (0.047)                                       
Average clustering coefficient  0.0825                                     
Number of triangles 23068                                                  
Fraction of closed triangles    0.0002417                                  
Diameter (longest shortest path)    18                                     
90-percentile effective diameter    6.5                                    
                                                                           
Data format - higgs-activity_time.txt                                      
                                                                           
    userA userB timestamp interaction                                      
                                                                           
    Interaction can be RT (retweet), MT (mention) or RE (reply). Each link 
    is directed. The user IDs in this dataset corresponds to the ones      
    adopted to anonymize the social structure, thus the datasets (1) - (5) 
    can be used together for complex analysis involving structure and      
    dynamics.                                                              
                                                                           
    Note 1: the direction of links depends on the application, in general. 
    For instance, if one is interested in building a network of how        
    information flows, then the direction of RT should be reversed when    
    used in the analysis. Nevertheless, the choice is left to the          
    researcher and his/her own interpretation of the data, whereas we just 
    provide the observed actions, i.e., who                                
    retweets/mentions/replies/follows whom.                                
                                                                           
    Note 2: users mentioned in retweeted tweets are considered as mentions.
    For instance, if @A retweets the tweet “hello @C @D" sent by @B, then  
    the following links are created: @A @B timeX RT, @A @C timeX MT, @A @D 
    timeX MT, because @C and @D can be notified that they have been        
    mentioned in a retweet. Similarly in the case of a reply. If for some  
    reason the researcher does not agree with this choice, he/she can      
    easily identify this type of links and remove the mentions, for        
    instance.                                                              
                                                                           
Source (citation)                                                          
M. De Domenico, A. Lima, P. Mougel and M. Musolesi. The Anatomy of a       
Scientific Rumor. (Nature Open Access) Scientific Reports 3, 2980 (2013).  
http://www.nature.com/srep/2013/131018/srep02980/full/srep02980.html       
                                                                           
Files                                                                      
File    Description                                                        
social_network.edgelist.gz  Friends/follower graph (directed)              
retweet_network.edgelist.gz                                                
    Graph of who retweets whom (directed and weighted)                     
reply_network.edgelist.gz                                                  
    Graph of who replies to who (directed and weighted)                    
mention_network.edgelist.gz                                                
    Graph of who mentions whom (directed and weighted)                     
higgs-activity_time.txt.gz                                                 
    The dataset provides information about activity on                     
    Twitter during the discovery of Higgs boson                            
                                                                           
---------------------------------------------------------------------------
Notes on inclusion into the SuiteSparse Matrix Collection, July 2018:      
---------------------------------------------------------------------------
                                                                           
The SNAP data set is 1-based, with all nodes in all graphs numbered 1      
to n=456,626.                                                              
                                                                           
In the SuiteSparse Matrix Collection, each matrix is the same size, n-by-n 
where n=456,626, so that row/column i in each matrix refers to the same    
person i across all matrices.  This means that some rows and columns of    
the Retweet, Mention, and Reply matrices are empty, but these are left in  
so all four matrices can be compared with each other.                      
                                                                           
Problem.A is the primary social network, and is a directed graph           
with no edge weights (an unsymmetric binary matrix).  A(i,j)=1 if          
person i follows person j.  It is not a multigraph.                        
                                                                           
Retweet = Problem.aux.retweet is the Retweet network, where Retweet(i,j)   
is the number of times that person i retweets a tweet of person j.         
                                                                           
Mention = Problem.aux.mention is the Mention network, where Mention(i,j)   
is the number of times that person i mentions person j.                    
                                                                           
Reply = Problem.aux.reply is the Reply network, where Reply(i,j)           
is the number of times that person i replies to person j.                  
                                                                           
The Retweet, Mention, and Reply matrices represent multigraphs since each  
(i,j,t) with the same i and j but different timestamp t is considered a    
separate edge.  The timestamps do not appear in these matrices, however.   
                                                                           
The higgs-activity_time.txt is a set of labeled temporal edges.  Each edge 
in the SNAP data set has the form (i,j,time,interaction) where interaction 
is string (RT, MT, or RE).  In the SuiteSparse Matrix collection, these    
edges are stored as a dense matrix, Problem.aux.temporal_edges, where the  
kth row of the matrix holds the kth line of the higgs-activity_time.txt    
file as the temporal edge [i j interaction time].  The interaction is      
converted to an integer, where 1=RT (retweet), 2=MT (mention), and 3=RE    
(reply).                                                                   
',
    aux_fields: 'retweet: sparse 456626-by-456626
reply: sparse 456626-by-456626
mention: sparse 456626-by-456626
temporal_edges: full 563069-by-4
',    image_files: 'higgs-twitter.png,higgs-twitter_scc.png,',
}
