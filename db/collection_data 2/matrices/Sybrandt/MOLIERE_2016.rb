{
    matrix_id: '2810',
    name: 'MOLIERE_2016',
    group: 'Sybrandt',
    description: 'MOLIERE: Automatic Biomedical Hypothesis Generation System',
    author: 'J. Sybrandt, M. Shtutman, I. Safro',
    editor: 'T. Davis',
    date: '2017',
    kind: 'undirected weighted graph',
    problem_2D_or_3D: '0',
    num_rows: '30239687',
    num_cols: '30239687',
    nonzeros: '6669254694',
    num_explicit_zeros: '4023336',
    num_strongly_connected_components: '28946',
    pattern_symmetry: '0.999',
    numeric_symmetry: '1.000',
    rb_type: 'real',
    structure: 'symmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'MOLIERE Hypothesis Generation Network, J. Sybrandt, Clemson Univ.        
                                                                         
Justin Sybrandt, jsybran at clemson.edu                                  
Matrix Name: MOLIERE_2016 Hypothesis Generation Network                  
Kind/Problem Domain: Term/Document Graph                                 
                                                                         
This network was presented in "MOLIERE: Automatic Biomedical Hypothesis  
Generation System (KDD\'17)." Nodes in this network are either MEDLINE    
documents, UMLS terms, or n-grams we extracted through ToPMine.          
                                                                         
citation:                                                                
Justin Sybrandt (Clemson University, Clemson, SC, USA),                  
Michael Shtutman (University of South Carolina, Columbia, SC, USA)       
Ilya Safro (Clemson University, Clemson, SC, USA),                       
"MOLIERE: Automatic Biomedical Hypothesis Generation System",            
23rd ACM SIGKDD Conference on Knowledge Discovery and Data Mining        
August 13-17, 2017, Halifax, Nova Scotia - Canada                        
https://doi.org/10.1145/3097983.3098057                                  
                                                                         
The original data was 0-based with nodes numbered 0 to n-1.  Converted   
to 1-based for the SuiteSparse Matrix Collection, July 2018.             
                                                                         
The graph has n=30,239,687 nodes.  Node labels are held in the char array
Problem.aux.labels.  Nodes 1 to 22,281,874 all have labels starting with 
the capital letter "P", and are PubMed indentification numbers of the    
MEDLINE documents.  Nodes 27,683,534 to n all start with the letter "C", 
and refer to UMLS terms.  Nodes between these two sets of nodes refer to 
n-grams; none of them start with P or C (or any capital letter). The     
label of the kth node is also the kth line in the labels text file, and  
to the kth row and column of the matrix.                                 
                                                                         
The graph has 4,023,336 explicit zero edges, which are very important    
to the problem.  They link automatically mined n-grams to UMLS terms     
representing the same concept.  The goal is to find shortest-paths,      
so an edge of zero-length is important, and not the same as no edge      
at all.  The pattern of the explicit zeros is held in Problem.Zeros      
in the MATLAB representation, and are part of the files for the Matrix   
Market and Rutherford-Boeing formats.  To operate on the graph G in      
MATLAB, use G = Problem.A + 1e-100 * Problem.Zeros, or some other        
suitable tiny value.  The nonzero edge weights in the graph range in     
value between 5e-15 and 3.0.  There are no negative edge weights.        
                                                                         
The graph also has d=3,106,164 duplicate edges; it could be considered   
a multigraph.  However, since the problem is to find shortest paths, the 
duplicate edges are not needed.  The matrix in the SuiteSparse Matrix    
Collection holds the smallest edge weight for any duplicate.  The        
duplicates not in the matrix are held in Problem.aux.duplicate_edges,    
as a d-by-3 dense matrix, where each row holds [i j eij] for the edge    
(i,j) with weight eij.                                                   
',
    aux_fields: 'labels: full 30239687-by-133
duplicate_edges: full 3106164-by-3
',    image_files: 'MOLIERE_2016.png,MOLIERE_2016_scc.png,',
}
