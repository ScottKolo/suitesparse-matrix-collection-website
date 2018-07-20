{
    matrix_id: '2789',
    name: 'soc-Pokec',
    group: 'SNAP',
    description: 'SNAP network: soc-Pokec Slovakian social network',
    author: 'L. Takac, M. Zabovsky',
    editor: 'J. Leskovec',
    date: '2012',
    kind: 'directed graph',
    problem_2D_or_3D: '0',
    num_rows: '1632803',
    num_cols: '1632803',
    nonzeros: '30622564',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '325892',
    pattern_symmetry: '0.543',
    numeric_symmetry: '0.543',
    rb_type: 'binary',
    structure: 'unsymmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'SNAP (Stanford Network Analysis Platform) Large Network Dataset Collection,
Jure Leskovec and Anrej Krevl, http://snap.stanford.edu/data, June 2014.   
email: jure at cs.stanford.edu                                             
                                                                           
soc-Pokec social network                                                   
                                                                           
https://snap.stanford.edu/data/soc-Pokec.html                              
                                                                           
Dataset information                                                        
                                                                           
Pokec (http://pokec.azet.sk/) is the most popular on-line social network in
Slovakia. The popularity of network has not changed even after the coming  
of Facebook. Pokec has been provided for more than 10 years and connects   
more than 1.6 million people.  Datasets contains anonymized data of the    
whole network.  Profile data contains gender, age, hobbies, interest,      
education etc. Profile data are in Slovak language. Friendships in Pokec   
are oriented.                                                              
                                                                           
Dataset statistics                                                         
Nodes    1,632,803                                                         
Edges   30,622,564                                                         
Nodes in largest WCC  1632803 (1.000)                                      
Edges in largest WCC  30622564 (1.000)                                     
Nodes in largest SCC  1304537 (0.799)                                      
Edges in largest SCC  29183655 (0.953)                                     
Average clustering coefficient  0.1094                                     
Number of triangles  32557458                                              
Fraction of closed triangles  0.01611                                      
Diameter (longest shortest path)  11                                       
90-percentile effective diameter  5.2                                      
                                                                           
Source (citation)                                                          
L. Takac, M. Zabovsky. Data Analysis in Public Social Networks,            
International Scientific Conference & International Workshop Present Day   
Trends of Innovations, May 2012 Lomza, Poland.                             
https://snap.stanford.edu/data/soc-pokec.pdf                               
                                                                           
Files                                                                      
File  Description                                                          
soc-pokec-relationships.txt.gz  User relationship data                     
soc-pokec-profiles.txt.gz  User profile data                               
soc-pokec-readme.txt  Description of files                                 
                                                                           
soc-pokec-readme.txt:                                                      
                                                                           
========================================================================   
Pokec social network                                                       
========================================================================   
                                                                           
Pokec is the most popular Slovak on-line social network. These datasets    
are anonymized and contains relationships and user profile data of the     
whole network. Profile data are in Slovak language. Friendships in the     
Pokec network are oriented. Datasets were crawled during MAY 25-27 2012.   
                                                                           
Author: Lubos Takac, lubos.takac@gmail.com                                 
                                                                           
DATASET STATISTICS:                                                        
                                                                           
Nodes ............................  1,632,803                              
Edges ............................ 30,622,564                              
Nodes in largest WCC .............  1,632,803 (1.000)                      
Edges in largest WCC ............. 30,622,564 (1.000)                      
Nodes in largest SCC .............  1,304,537 (0.799)                      
Edges in largest SCC ............. 29,183,655 (0.953)                      
Average clustering coefficient ...   0.1094                                
Number of triangles .............. 32557458                                
Fraction of closed triangles .....  0.01611                                
Diameter (longest shortest path) .       11                                
90-percentile effective diameter .      5.3                                
                                                                           
FILES:                                                                     
                                                                           
soc-pokec-relationships.txt                                                
  Contains friendship relations between users. There is one relation per   
  line. Values in the line are tab separated. For example if a row         
  contains 3 5, this means that user 3 has a friend: user 5.               
                                                                           
soc-pokec-profiles.txt                                                     
  Contains profile data in a tab separated form. Columns with no data      
  contain the string "null". Data are in Slovak Language.                  
                                                                           
  Columns (attributes):                                                    
    user_id                                                                
    public                                                                 
    completion_percentage                                                  
    gender                                                                 
    region                                                                 
    last_login                                                             
    registration                                                           
    AGE                                                                    
    body                                                                   
    I_am_working_in_field                                                  
    spoken_languages                                                       
    hobbies                                                                
    I_most_enjoy_good_food                                                 
    pets                                                                   
    body_type                                                              
    my_eyesight                                                            
    eye_color                                                              
    hair_color                                                             
    hair_type                                                              
    completed_level_of_education                                           
    favourite_color                                                        
    relation_to_smoking                                                    
    relation_to_alcohol                                                    
    sign_in_zodiac                                                         
    on_pokec_i_am_looking_for                                              
    love_is_for_me                                                         
    relation_to_casual_s_x                                                 
    my_partner_should_be                                                   
    marital_status                                                         
    children                                                               
    relation_to_children                                                   
    I_like_movies                                                          
    I_like_watching_movie                                                  
    I_like_music                                                           
    I_mostly_like_listening_to_music                                       
    the_idea_of_good_evening                                               
    I_like_specialties_from_kitchen                                        
    fun                                                                    
    I_am_going_to_concerts                                                 
    my_active_sports                                                       
    my_passive_sports                                                      
    profession                                                             
    I_like_books                                                           
    life_style                                                             
    music                                                                  
    cars                                                                   
    politics                                                               
    relationships                                                          
    art_culture                                                            
    hobbies_interests                                                      
    science_technologies                                                   
    computers_internet                                                     
    education                                                              
    sport                                                                  
    movies                                                                 
    travelling                                                             
    health                                                                 
    companies_brands                                                       
    more                                                                   
                                                                           
  Column descriptions:                                                     
    user_id:                                                               
      integer, users\' nicknames were mapped to integers                    
    public:                                                                
      bool, 1 - all friendships are public                                 
    completion_percentage:                                                 
      integer, percentage proportion of filled values                      
    gender:                                                                
      bool, 1 - man                                                        
    region:                                                                
      string, mostly regions in Slovakia (example: "zilinsky kraj,         
      kysucke nove mesto" means county Zilina, town Kysucke Nove Mesto,    
      Slovakia), some foreign countries (example: "zahranicie,             
      zahranicie - nemecko" means foreign country Germany (nemecko)),      
      some Czech regions (example: "ceska republika, cz - ostravsky        
      kraj" means Czech Republic, county Ostrava (ostravsky kraj))         
    last_login:                                                            
      datetime, last time at which the user has logged in                  
    registration:                                                          
      datetime, time at which the user registered at the site              
    age:                                                                   
      integer, 0 - age attribute not set                                   
                                                                           
  Notes:                                                                   
    Other attributes are free fillable by user. They contain opinions      
    in text form or URL of club which the user prefer. There are 163       
    records without any data and completion_percentage=0. (I think that    
    these are the profiles of people who have canceled their accounts      
    during the data crawling.)                                             
                                                                           
---------------------------------------------------------------------------
Notes on inclusion into the SuiteSparse Matrix Collection, July 2018:      
---------------------------------------------------------------------------
                                                                           
The SNAP data set is 1-based with nodes numbered 1 to 1,632,803.  In the   
SuiteSparse Matrix Collection, Problem.A is the directed graph, where      
A(i,j)=1 means person i states that person j is their friend.  The value   
A(i,j) can differ from A(j,i).  That is, the friend list of person i is    
A(i,:), and it can include person j.  But the friend list of person j,     
which is A(j,:) need not include person i.                                 
                                                                           
The profiles are stored in Problem.aux, with one array of size n-by-* for  
each component of the profile.  Most fields are strings (even age, which   
can be \'null\').  Only user_id, public, and completion_percentage are       
numeric.                                                                   
',
    aux_fields: 'user_id: full 1632803-by-1
public: full 1632803-by-1
completion_percentage: full 1632803-by-1
gender: full 1632803-by-4
region: full 1632803-by-50
last_login: full 1632803-by-21
registration: full 1632803-by-21
age: full 1632803-by-4
body: cell 1632803-by-1
I_am_working_in_field: full 1632803-by-574
spoken_languages: full 1632803-by-559
hobbies: full 1632803-by-789
I_most_enjoy_good_food: full 1632803-by-680
pets: cell 1632803-by-1
body_type: full 1632803-by-808
my_eyesight: full 1632803-by-579
eye_color: full 1632803-by-579
hair_color: full 1632803-by-559
hair_type: full 1632803-by-617
completed_level_of_education: full 1632803-by-559
favourite_color: full 1632803-by-559
relation_to_smoking: full 1632803-by-559
relation_to_alcohol: full 1632803-by-559
sign_in_zodiac: full 1632803-by-795
on_pokec_i_am_looking_for: full 1632803-by-920
love_is_for_me: full 1632803-by-819
relation_to_casual_s_x: full 1632803-by-819
my_partner_should_be: full 1632803-by-819
marital_status: full 1632803-by-819
children: full 1632803-by-819
relation_to_children: full 1632803-by-932
I_like_movies: full 1632803-by-680
I_like_watching_movie: full 1632803-by-720
I_like_music: cell 1632803-by-1
I_mostly_like_listening_to_music: full 1632803-by-680
the_idea_of_good_evening: cell 1632803-by-1
I_like_specialties_from_kitchen: full 1632803-by-680
fun: cell 1632803-by-1
I_am_going_to_concerts: full 1632803-by-680
my_active_sports: full 1632803-by-680
my_passive_sports: full 1632803-by-684
profession: full 1632803-by-559
I_like_books: full 1632803-by-734
life_style: cell 1632803-by-1
music: cell 1632803-by-1
cars: cell 1632803-by-1
politics: cell 1632803-by-1
relationships: cell 1632803-by-1
art_culture: cell 1632803-by-1
hobbies_interests: cell 1632803-by-1
science_technologies: cell 1632803-by-1
computers_internet: cell 1632803-by-1
education: cell 1632803-by-1
sport: cell 1632803-by-1
movies: cell 1632803-by-1
travelling: cell 1632803-by-1
health: cell 1632803-by-1
companies_brands: cell 1632803-by-1
more: cell 1632803-by-1
',    image_files: 'soc-Pokec.png,soc-Pokec_scc.png,',
}
