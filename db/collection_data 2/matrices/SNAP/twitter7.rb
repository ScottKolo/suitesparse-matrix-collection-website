{
    matrix_id: '2796',
    name: 'twitter7',
    group: 'SNAP',
    description: 'SNAP network: twitter follower network',
    author: 'H. Kwak, C. Lee, H. Park, S. Moon',
    editor: 'J. Leskovec',
    date: '2010',
    kind: 'directed graph',
    problem_2D_or_3D: '0',
    num_rows: '41652230',
    num_cols: '41652230',
    nonzeros: '1468365182',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '8044728',
    pattern_symmetry: '0.362',
    numeric_symmetry: '0.362',
    rb_type: 'binary',
    structure: 'unsymmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'SNAP (Stanford Network Analysis Platform) Large Network Dataset Collection,
Jure Leskovec and Anrej Krevl, http://snap.stanford.edu/data, June 2014.   
email: jure at cs.stanford.edu                                             
                                                                           
476 million Twitter tweets                                                 
                                                                           
Dataset information                                                        
                                                                           
467 million Twitter posts from 20 million users covering a 7 month period  
from June 1 2009 to December 31 2009. We estimate this is about 20-30% of  
all public tweets published on Twitter during the particular time frame.   
                                                                           
For each public tweet the following information was available:             
                                                                           
    Author                                                                 
    Time                                                                   
    Content                                                                
                                                                           
We have no Twitter social graph (who-follows-whom graph) available. You can
find a copy of the graph at http://an.kaist.ac.kr/traces/WWW2010.html      
(thanks to Haewoon Kwak, et al.).                                          
                                                                           
Dataset statistics                                                         
Number of users      17,069,982                                            
Number of tweets    476,553,560                                            
Number of URLs      181,611,080                                            
Number of Hashtags   49,293,684                                            
Number of re-tweets  71,835,017                                            
                                                                           
Source (citation)                                                          
J. Yang, J. Leskovec. Temporal Variation in Online Media. ACM Intl.        
Conf. on Web Search and Data Mining (WSDM \'11), 2011.                      
                                                                           
As per request from Twitter the data is no longer available.               
                                                                           
-------------------------------------------------------------------------  
http://an.kaist.ac.kr/traces/WWW2010.html :                                
-------------------------------------------------------------------------  
                                                                           
What is Twitter, a Social Network or a News Media?                         
                                                                           
Haewoon Kwak (http://an.kaist.ac.kr/~haewoon),                             
Changhyun Lee (http://an.kaist.ac.kr/~chlee),                              
Hosung Park (http://an.kaist.ac.kr/~hosung),                               
and Sue Moon (http://an.kaist.ac.kr/~sbmoon)                               
                                                                           
Proceedings of the 19th International World Wide Web (WWW) Conference,     
April 26-30, 2010, Raleigh NC (USA)                                        
                                                                           
Twitter, a microblogging service less than three years old, commands more  
than 41 million users as of July 2009 and is growing fast. Twitter users   
tweet about any topic within the 140-character limit and follow others to  
receive their tweets. The goal of this paper is to study the topological   
characteristics of Twitter and its power as a new medium of information    
sharing.                                                                   
                                                                           
We have crawled the entire Twitter site and obtained 41.7 million user     
profiles, 1.47 billion social relations, 4,262 trending topics, and 106    
million tweets. In its follower-following topology analysis we have found a
non-power-law follower distribution, a short effective diameter, and low   
reciprocity, which all mark a deviation from known characteristics of human
social networks~\cite{Newman03}. In order to identify influentials on      
Twitter, we have ranked users by the number of followers and by PageRank   
and found two rankings to be similar. Ranking by retweets differs from the 
previous two rankings, indicating a gap in influence inferred from the     
number of followers and that from the popularity of one\'s tweets. We have  
analyzed the tweets of top trending topics and reported on their temporal  
behavior and user participation. We have classified the trending topics    
based on the active period and the tweets and show that the majority (over 
85%) of topics are headline news or persistent news in nature. A closer    
look at retweets reveals that any retweeted tweet is to reach an average of
1,000 users no matter what the number of followers is of the original      
tweet. Once retweeted, a tweet gets retweeted almost instantly on next     
hops, signifying fast diffusion of information after the 1st retweet.      
                                                                           
To the best of our knowledge this work is the first quantitative study on  
the entire Twittersphere and information diffusion on it.                  
                                                                           
http://an.kaist.ac.kr/~haewoon/papers/2010-www-twitter.pdf                 
                                                                           
@inproceedings{Kwak10www,                                                  
author = {Kwak, Haewoon and Lee, Changhyun and Park, Hosung and            
    Moon, Sue},                                                            
title = "{W}hat is {T}witter, a social network or a news media?",          
booktitle = {WWW \'10: Proc. the 19th Intl. Conf. on World Wide Web},       
year = {2010},                                                             
isbn = {978-1-60558-799-8},                                                
pages = {591--600},                                                        
location = {Raleigh, North Carolina, USA},                                 
doi = {http://doi.acm.org/10.1145/1772690.1772751},                        
publisher = {ACM},                                                         
address = {New York, NY, USA},                                             
}                                                                          
                                                                           
Slides:                                                                    
https://www.slideshare.net/haewoon/                                        
    what-is-twitter-a-social-network-or-a-news-media-3922095               
                                                                           
Due to Twitter\'s new Terms of Services, we cannot share data containing    
tweets any more.  (for more info, read RWW\'s article "How Recent Changes to
Twitter\'s Terms of Service Might Hurt Academic Research")                  
                                                                           
Social graph                                                               
                                                                           
Format                                                                     
USER \t FOLLOWER \n                                                        
* USER and FOLLOWER are represented by numeric ID (integer).               
* These numeric IDs are the same as numeric IDs Twitter managed.           
* For details, see Twitter API Page                                        
                                                                           
Example                                                                    
12      13                                                                 
12      14                                                                 
12      15                                                                 
16      17                                                                 
* Users 13, 14 and 15 are followers of user 12.                            
* User 17 is a follower of user 16.                                        
                                                                           
Restricted user profiles (> 10,000 followers):                             
celebrities_profiles.txt                                                   
                                                                           
Format                                                                     
numeric_id \t verified \t profile_sidebar_fill_color \t profile_text_color 
\t followers_count \t protected \t location \t profile_background_color \t 
utc_offset \t statuses_count \t description \t friends_count \t            
profile_link_color \t profile_image_url \t notifications \t                
profile_background_image_url \t screen_name \t profile_background_tile \t  
favourites_count \t name \t url \t created_at \t time_zone \t              
profile_sidebar_border_color \t following \t gender (infered by name) \n   
                                                                           
* All fields except gender are returned by user method of Twitter API      
                                                                           
* For the description of each field see Returns Values page in Twitter     
    API Wiki                                                               
                                                                           
---------------------------------------------------------------------------
Notes on inclusion into the SuiteSparse Matrix Collection, July 2018:      
---------------------------------------------------------------------------
                                                                           
The SNAP data set is 1-based.  In the SuiteSparse Matrix collection, the   
celebrity profiles are stored in Problem.aux.*, using the same names as    
above, except for the first ("numeric_id" is replaced with "celebrity_id").
The gender is excluded from the SuiteSparse Matrix Collection since it is  
only inferred from first names, and not part of the original Twitter data. 
Inferring gender from first names is very error prone.                     
                                                                           
The userid\'s range from 12 to 61,578,414, but of those userid\'s, 19,926,184
have no followers and no one follows them.  The graph Problem.A only holds 
the Twitter follower graph for non-empty nodes.  A(i,j)=1 if user with     
nodeid(i) is followed by user with nodeid(j).  For example, the first two  
non-empty userid\'s are nodeid(1)=12 and nodeid(2)=13, and the first edge is
(12,13).  Thus A(1,2)=1 since nodeid(1)=12 is followed by nodeid(2)=13.    
The user id\'s of the nodes in the graph are held in Problem.aux.nodeid.    
',
    aux_fields: 'nodeid: full 41652230-by-1
celebrity_id: full 6499-by-1
verified: full 6499-by-5
profile_sidebar_fill_color: full 6499-by-7
profile_text_color: full 6499-by-7
followers_count: full 6499-by-1
protected: full 6499-by-5
location: full 6499-by-38
profile_background_color: full 6499-by-7
utc_offset: full 6499-by-6
statuses_count: full 6499-by-1
description: full 6499-by-160
friends_count: full 6499-by-1
profile_link_color: full 6499-by-10
profile_image_url: full 6499-by-234
notifications: full 6499-by-5
profile_background_image_url: full 6499-by-231
screen_name: full 6499-by-15
profile_background_tile: full 6499-by-5
favourites_count: full 6499-by-1
name: full 6499-by-20
url: full 6499-by-100
created_at: full 6499-by-30
time_zone: full 6499-by-28
profile_sidebar_border_color: full 6499-by-8
following: full 6499-by-5
',    image_files: 'twitter7.png,twitter7_scc.png,',
}
