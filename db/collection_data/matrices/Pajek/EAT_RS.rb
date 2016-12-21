{
    matrix_id: '1461',
    name: 'EAT_RS',
    group: 'Pajek',
    description: 'Pajek network: Edinburgh Associative Thesaurus (response-stimulus)',
    author: 'G. Kiss, C. Armstrong R. Milroy, J. Piper',
    editor: 'V. Batagelj',
    date: '1971',
    kind: 'directed weighted graph',
    problem_2D_or_3D: '0',
    num_rows: '23219',
    num_cols: '23219',
    nonzeros: '325592',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '15466',
    pattern_symmetry: '0.124',
    numeric_symmetry: '0.031',
    rb_type: 'integer',
    structure: 'unsymmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: '------------------------------------------------------------------------------
Pajek network converted to sparse adjacency matrix for inclusion in UF sparse 
matrix collection, Tim Davis.  For Pajek datasets, See V. Batagelj & A. Mrvar,
http://vlado.fmf.uni-lj.si/pub/networks/data/.                                
------------------------------------------------------------------------------
 EAT - The Edinburgh Associative Thesaurus /                                  
 response-stimulus                                                            
 --------------------------------------------------------                     
 The EAT is a database of word association norms.                             
 - Original EAT: George Kiss, Christine Armstrong,                            
 Robert Milroy and J.R.I. Piper (1968-1971).                                  
 - MRC Psycholinguistic Database Version modified by:                         
 Max Coltheart, S. James, J. Ramshaw, B.M. Philip,                            
 B. Reid, J. Benyon-Tinker and E. Doctor;                                     
 made available by: Philip Quinlan.                                           
 - The present version was re-structured and documented                       
 by Michael Wilson at the Rutherford Appleton Laboratory.                     
 http://monkey.cis.rl.ac.uk/Eat/htdocs/eat.zip                                
                                                                              
 transformed in Pajek format: V. Batagelj, 31. July 2003                      
 -----                                                                        
------------------------------------------------------------------------------
Regarding conversion for UF sparse matrix collection: in the original data    
there are 325,624 weighted edges.  Of those only 32 edges are duplicates, and 
all of them have identical edge weights as the edges they are duplicates of   
These extraneous edges have been removed, since this this appears to be a     
graph, not a multigraph.                                                      
------------------------------------------------------------------------------
',
    aux_fields: 'nodename: full 23219-by-20
',    norm: '3.124415e+02',
    min_singular_value: '0',
    condition_number: 'Inf',
    svd_rank: '8210',
    null_space_dimension: '15009',
    full_numerical_rank: 'no',
    svd_gap: '1918750624229.903320',
}
