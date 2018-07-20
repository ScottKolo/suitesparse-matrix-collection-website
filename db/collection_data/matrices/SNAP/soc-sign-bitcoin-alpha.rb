{
    matrix_id: '2790',
    name: 'soc-sign-bitcoin-alpha',
    group: 'SNAP',
    description: 'SNAP network: Bitcoin Alpha trust weighted signed network',
    author: 'S. Kumar, F. Spezzano, V.S. Subrahmanian, C. Faloutsos',
    editor: 'J. Leskovec',
    date: '2016',
    kind: 'directed weighted temporal graph',
    problem_2D_or_3D: '0',
    num_rows: '3783',
    num_cols: '3783',
    nonzeros: '24186',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '540',
    pattern_symmetry: '0.832',
    numeric_symmetry: '0.596',
    rb_type: 'integer',
    structure: 'unsymmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'SNAP (Stanford Network Analysis Platform) Large Network Dataset Collection,
Jure Leskovec and Anrej Krevl, http://snap.stanford.edu/data, June 2014.   
email: jure at cs.stanford.edu                                             
                                                                           
Bitcoin Alpha trust weighted signed network                                
                                                                           
https://snap.stanford.edu/data/soc-sign-bitcoin-alpha.html                 
                                                                           
Dataset information                                                        
                                                                           
This is who-trusts-whom network of people who trade using Bitcoin on a     
platform called Bitcoin Alpha (http://www.btcalpha.com/). Since Bitcoin    
users are anonymous, there is a need to maintain a record of users\'        
reputation to prevent transactions with fraudulent and risky users. Members
of Bitcoin Alpha rate other members in a scale of -10 (total distrust) to  
+10 (total trust) in steps of 1. This is the first explicit weighted signed
directed network available for research.                                   
                                                                           
Dataset statistics                                                         
Nodes   3,783                                                              
Edges   24,186                                                             
Range of edge weight    -10 to +10                                         
Percentage of positive edges    93%                                        
                                                                           
Similar network from another Bitcoin platform, Bitcoin OTC, is available at
https://snap.stanford.edu/data/soc-sign-bitcoinotc.html (and as            
SNAP/bitcoin-otc in the SuiteSparse Matrix Collection).                    
                                                                           
Source (citation) Please cite the following paper if you use this dataset: 
S. Kumar, F. Spezzano, V.S. Subrahmanian, C. Faloutsos. Edge Weight        
Prediction in Weighted Signed Networks. IEEE International Conference on   
Data Mining (ICDM), 2016.                                                  
http://cs.stanford.edu/~srijan/pubs/wsn-icdm16.pdf                         
                                                                           
The following BibTeX citation can be used:                                 
@inproceedings{kumar2016edge,                                              
  title={Edge weight prediction in weighted signed networks},              
  author={Kumar, Srijan and Spezzano, Francesca and                        
     Subrahmanian, VS and Faloutsos, Christos},                            
  booktitle={Data Mining (ICDM), 2016 IEEE 16th Intl. Conf. on},           
  pages={221--230},                                                        
  year={2016},                                                             
  organization={IEEE}                                                      
}                                                                          
                                                                           
The project webpage for this paper, along with its code to calculate two   
signed network metrics---fairness and goodness---is available at           
http://cs.umd.edu/~srijan/wsn/                                             
                                                                           
Files                                                                      
File    Description                                                        
soc-sign-bitcoinalpha.csv.gz                                               
    Weighted Signed Directed Bitcoin Alpha web of trust network            
                                                                           
Data format                                                                
Each line has one rating with the following format:                        
                                                                           
    SOURCE, TARGET, RATING, TIME                                           
                                                                           
where                                                                      
                                                                           
    SOURCE: node id of source, i.e., rater                                 
    TARGET: node id of target, i.e., ratee                                 
    RATING: the source\'s rating for the target,                            
            ranging from -10 to +10 in steps of 1                          
    TIME: the time of the rating, measured as seconds since Epoch.         
                                                                           
---------------------------------------------------------------------------
Notes on inclusion into the SuiteSparse Matrix Collection, July 2018:      
---------------------------------------------------------------------------
                                                                           
The SNAP data set is 1-based, with nodes numbered 1 to 7,604.              
                                                                           
In the SuiteSparse Matrix Collection, Problem.A is the directed rating     
graph, a matrix of size n-by-n with n=3,783, which is the number of        
unique node id\'s appearing in the SOURCE or TARGET of any edge.            
                                                                           
Problem.aux.nodeid is an array of size 3783 that gives the node id\'s       
corresponding to each row and column of the matrix.  nodeid(i)=id if the   
id in the temporal edge appears as the ith row and column of the A matrix. 
A(i,j) is the rating that member nodeid(i) gave member nodeid(j).          
                                                                           
Since there are no duplicate ratings, the Problem.A matrix can hold all    
the edges without losing any information.  The ratings are in the range    
-10 to 10, but are never zero, so the MATLAB Problem.A sparse matrix       
contains all the edges.                                                    
                                                                           
The timestamps appear in the Problem.aux.Time matrix.  It has the same     
nonzero pattern as Problem.A.                                              
',
    aux_fields: 'nodeid: full 3783-by-1
temporal_edges: full 24186-by-4
Time: sparse 3783-by-3783
',    image_files: 'soc-sign-bitcoin-alpha.png,soc-sign-bitcoin-alpha_scc.png,',
}
