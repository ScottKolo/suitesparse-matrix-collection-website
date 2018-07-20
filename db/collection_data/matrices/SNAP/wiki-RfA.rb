{
    matrix_id: '2797',
    name: 'wiki-RfA',
    group: 'SNAP',
    description: 'SNAP network:  Wikipedia requests for adminship',
    author: 'R. West, H. S. Paskov, J. Leskovec, C. Potts',
    editor: 'J. Leskovec',
    date: '2014',
    kind: 'directed weighted temporal multigraph',
    problem_2D_or_3D: '0',
    num_rows: '11380',
    num_cols: '11380',
    nonzeros: '188077',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '8931',
    pattern_symmetry: '0.075',
    numeric_symmetry: '0.065',
    rb_type: 'integer',
    structure: 'unsymmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'SNAP (Stanford Network Analysis Platform) Large Network Dataset Collection,
Jure Leskovec and Anrej Krevl, http://snap.stanford.edu/data, June 2014.   
email: jure at cs.stanford.edu                                             
                                                                           
Wikipedia Requests for Adminship (with text)                               
                                                                           
https://snap.stanford.edu/data/wiki-RfA.html                               
                                                                           
Dataset information                                                        
                                                                           
For a Wikipedia editor to become an administrator, a request for adminship 
(RfA) (http://en.wikipedia.org/wiki/Wikipedia:RfA) must be submitted,      
either by the candidate or by another community member. Subsequently, any  
Wikipedia member may cast a supporting, neutral, or opposing vote.         
                                                                           
We crawled and parsed all votes since the adoption of the RfA process in   
2003 through May 2013. The dataset contains 11,381 users (voters and       
votees) forming 189,004 distinct voter/votee pairs, for a total of 198,275 
votes (this is larger than the number of distinct voter/votee pairs        
because, if the same user ran for election several times, the same         
voter/votee pair may contribute several votes).                            
                                                                           
This induces a directed, signed network in which nodes represent Wikipedia 
members and edges represent votes. In this sense, the present dataset is a 
more recent version of the Wikipedia adminship election data               
(https://snap.stanford.edu/data/wiki-Elec.html). However, there is also a  
rich textual component in RfAs, which was not included in the older        
version: each vote is typically accompanied by a short comment             
(median/mean: 19/34 tokens). A typical positive comment reads, "I\'ve no    
concerns, will make an excellent addition to the admin corps", while an    
example of a negative comment is, "Little evidence of collaboration with   
other editors and limited content creation."                               
                                                                           
Network statistics                                                         
Nodes    10,835                                                            
Edges   159,388                                                            
Triangles 956,428                                                          
                                                                           
[The above statistics were computed after transforming the data into a     
directed network. The number of edges (159,388) is smaller than the number 
of voter/votee pairs (189,004) because neutral votes were discarded in the 
network we used for computing the statistics (but they are included in the 
dataset).]                                                                 
                                                                           
Sources (citations)                                                        
Robert West, Hristo S. Paskov, Jure Leskovec, and Christopher Potts:       
Exploiting Social Network Structure for Person-to-Person Sentiment         
Analysis. Transactions of the Association for Computational Linguistics,   
2(Oct):297–310, 2014.  http://infolab.stanford.edu/~west1/pubs/            
West-Paskov-Leskovec-Potts_TACL-14.pdf                                     
                                                                           
Files                                                                      
File Description                                                           
wiki-RfA.txt.gz     Wikipedia Requests for Adminship (RfA) 2003–2013       
                                                                           
Data format                                                                
                                                                           
    SRC:Guettarda                                                          
    TGT:Lord Roem                                                          
    VOT:1                                                                  
    RES:1                                                                  
    YEA:2013                                                               
    DAT:19:53, 25 January 2013                                             
    TXT:\'\'\'Support\'\'\' per [[WP:DEAL]]: clueful,                            
        and unlikely to break Wikipedia.                                   
                                                                           
where entries are separated by a single empty line and                     
                                                                           
    SRC: user name of source, i.e., voter                                  
    TGT: user name of target, i.e., the user running for election          
    VOT: the source\'s vote on the target                                   
         (-1 = oppose; 0 = neutral; 1 = support)                           
    RES: the outcome of the election                                       
         (-1 = target was rejected as admin; 1 = target was accepted)      
    YEA: the year in which the election was started                        
    DAT: the date and time of this vote                                    
    TXT: the comment written by the source, in wiki markup                 
                                                                           
---------------------------------------------------------------------------
Notes on inclusion into the SuiteSparse Matrix Collection, July 2018:      
---------------------------------------------------------------------------
                                                                           
In the SuiteSparse Matrix Collection, the 6 data items are split into      
6 different arrays in the MATLAB struct, and 6 different files in the      
MatrixMarket and Rutherford-Boeing formats.  Each have 198,275 rows        
(one per vote).  The votes appear in the same order as they do in the      
wiki-Rfa.txt file in the SNAP data set.                                    
                                                                           
Problem.aux.Source      source user name (a string, length <= 48)          
Problem.aux.Target      target user name                                   
Problem.aux.Vote        -1 (oppose), 0 (neutral), or 1 (support)           
Problem.aux.Result      result of the election (-1:reject, 1:accept)       
Problem.aux.Year        year of the vote (a number, 2003 to 2013)          
Problem.aux.Date        time and date (a string: HH:MM, day Month Year)    
Problem.aux.Text        text of the comments (a string, len <= 7609)       
                                                                           
In addition, the user names from the SRC: and TGT: of the votes have been  
collected in a single list, of size 11,380, and appear in                  
Problem.aux.UserId (each of length <= 48).  This list of user names has    
been sorted alplabetically.                                                
                                                                           
In 1,661 votes, the SRC: field is blank. These votes appear in the aux     
fields listed above, but are excluded from the graphs described below.     
For these votes, the DAT: and TXT: are also empty.  This "user id" is      
excluded in the list of user id\'s, giving 11,380 total users instead       
of 11,381.                                                                 
                                                                           
The user names in Problem.aux.Source and Problem.aux.Target have been      
translated into node numbers for the graph, into the two arrays            
Problem.aux.SourceNode and Problem.aux.TargetNode.  For the kth vote, the  
string Source(k,:) is equal to UserId (SourceNode (k),:), and likewise for 
the target nodes.  For votes with empty SRC: fields, however,              
SourceNode(k)=0.                                                           
                                                                           
Four graphs are constructed from the votes, after pruning votes with       
empty SRC: fields.  The primary graph, Problem.A, counts the number of     
votes, where A(i,j) is the number of times the ith user voted on the       
jth user (either positive, neutral, or negative, regardless of the vote).  
                                                                           
Each kind of vote is captured in three graphs.  For the source i and       
target j:                                                                  
                                                                           
Problem.aux.Positive (i,j) is the number of VOT:+1 votes that i voted on j 
Problem.aux.Neutral  (i,j) is the number of VOT:0 (neutral) votes that     
    i voted on j.  Note that a neutral vote is not the same thing as       
    no vote at all.                                                        
Problem.aux.Negative (i,j) is the number of VOT:-1 votes that i voted on j 
                                                                           
Thus, each graph is a multigraph, where the value of the (i,j) edge        
captures the number of edges, or votes, of the form (i,j) where            
i=source and j=target.  The overall graph A = Problem.A, is equal          
to the sum, A = Positive + Neutral + Negative.                             
                                                                           
    graph A nnz 188077 sum 196614                                          
    vote max multiplicity: 6                                               
    # votes: 1  : count 180284                                             
    # votes: 2  : count 7153                                               
    # votes: 3  : count 550                                                
    # votes: 4  : count 77                                                 
    # votes: 5  : count 12                                                 
    # votes: 6  : count 1                                                  
                                                                           
    graph Positive nnz 139326 sum 143879                                   
    vote max multiplicity: 6                                               
    # votes: 1  : count 135128                                             
    # votes: 2  : count 3884                                               
    # votes: 3  : count 278                                                
    # votes: 4  : count 32                                                 
    # votes: 5  : count 3                                                  
    # votes: 6  : count 1                                                  
                                                                           
    graph Neutral  nnz 11846 sum 12068                                     
    vote max multiplicity: 3                                               
    # votes: 1  : count 11627                                              
    # votes: 2  : count 216                                                
    # votes: 3  : count 3                                                  
                                                                           
    graph Negative nnz 39206 sum 40667                                     
    vote max multiplicity: 5                                               
    # votes: 1  : count 37840                                              
    # votes: 2  : count 1289                                               
    # votes: 3  : count 63                                                 
    # votes: 4  : count 10                                                 
    # votes: 5  : count 4                                                  
                                                                           
That is, the full graph A includes all 196,614 votes with non-empty SRC:   
fields (198275-1661).  The graphs do not capture the temporal nature of    
the edges; this data is preserved in the votes themselves, in the          
Problem.aux.[Source Target Vote Result Year Date Text] components.         
',
    aux_fields: 'Source: full 198275-by-48
Target: full 198275-by-34
Vote: full 198275-by-1
Result: full 198275-by-1
Year: full 198275-by-1
Date: full 198275-by-24
Text: cell 198275-by-1
UserId: full 11380-by-48
SourceNode: full 198275-by-1
TargetNode: full 198275-by-1
Positive: sparse 11380-by-11380
Neutral: sparse 11380-by-11380
Negative: sparse 11380-by-11380
',    image_files: 'wiki-RfA.png,wiki-RfA_scc.png,',
}
