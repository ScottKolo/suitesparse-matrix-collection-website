{
    matrix_id: '1531',
    name: 'Wordnet3',
    group: 'Pajek',
    description: 'Pajek network: Wordnet3 dictionary network',
    author: '',
    editor: 'V. Batagelj',
    date: '2006',
    kind: 'directed weighted graph',
    problem_2D_or_3D: '0',
    num_rows: '82670',
    num_cols: '82670',
    nonzeros: '132964',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '67689',
    pattern_symmetry: '0.177',
    numeric_symmetry: '0.174',
    rb_type: 'integer',
    structure: 'unsymmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: '------------------------------------------------------------------------------
Pajek network converted to sparse adjacency matrix for inclusion in UF sparse 
matrix collection, Tim Davis.  For Pajek datasets, See V. Batagelj & A. Mrvar,
http://vlado.fmf.uni-lj.si/pub/networks/data/.                                
------------------------------------------------------------------------------
NOTE: this is a binary graph in the Pajek dataset, but where each edge has a  
label (not a weight) in the range 1 to 9.  The following labels are used:     
1  hypernym pointer                                                           
2  entailment pointer                                                         
3  similar pointer                                                            
4  member meronym pointer                                                     
5  substance meronym pointer                                                  
6  part meronym pointer                                                       
7  cause pointer                                                              
8  grouped pointer                                                            
9  attribute pointer                                                          
This is not a multigraph.  There are no edges (i,j) between the same nodes    
with the same label.  Thus, in the sparse matrix, the edge weight A(i,j)      
represents the label 1 through 9 of edge (i,j).  No loss of information       
occurs in this translation.  The above table is in aux.edgecode(1:9,:).       
Each node is a word in a dictionary.  aux.category(i) gives the category      
of the word:                                                                  
   1: n (noun?)       63099 words                                             
   3: a (adjective?)   5501 words                                             
   4: r (?)            2846 words                                             
   5: s (?)            6728 words.                                            
------------------------------------------------------------------------------
',
    aux_fields: 'edgecode: full 9-by-28
nodecode: full 5-by-4
category: full 82670-by-1
nodename: full 82670-by-69
',}
