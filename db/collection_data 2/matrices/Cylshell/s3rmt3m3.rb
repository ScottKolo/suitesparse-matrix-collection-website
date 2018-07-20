{
    matrix_id: '1611',
    name: 's3rmt3m3',
    group: 'Cylshell',
    description: 'FEM, cylindrical shell, graded tri. mesh w/ 1666 triangles. , R/t=1000',
    author: 'R. Kouhia',
    editor: 'R. Boisvert, R. Pozo, K. Remington, B. Miller, R. Lipman, R. Barrett, J. Dongarra',
    date: '1997',
    kind: 'structural problem',
    problem_2D_or_3D: '1',
    num_rows: '5357',
    num_cols: '5357',
    nonzeros: '207123',
    num_explicit_zeros: '572',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '5357',
    pattern_symmetry: '1.000',
    numeric_symmetry: '1.000',
    rb_type: 'real',
    structure: 'symmetric',
    cholesky_candidate: 'yes',
    positive_definite: 'yes',
    notes: '%                                                                              
%FILE  s3rmt3m3.mtx                                                            
%TITLE Cyl shell R/t=1000 grad trian mesh 1666 stab MITC3 elem with drill rot  
%KEY   s3rmt3m3                                                                
%                                                                              
%                                                                              
%CONTRIBUTOR Reijo Kouhia (reijo.kouhia@hut.fi)                                
%                                                                              
%BEGIN DESCRIPTION                                                             
% Matrix from a static analysis of a cylindrical shell                         
% Radius to thickness ratio R/t = 1000                                         
% Length to radius ratio    R/L = 1                                            
% One octant discretized with graded triangular mesh (1666 elements)           
% element:                                                                     
% facet-type shell element where the bending part is formulated                
% using the stabilized MITC theory (stabilization paramater 0.4)               
% the membrane part includes drilling rotations using                          
% the Hughes-Brezzi formulation with (regularizing parameter = G/1000,         
% where G is the shear modulus)                                                
% full 3-point integration                                                     
% --------------------------------------------------------------------------   
% Note:                                                                        
% The sparsity pattern of the matrix is determined from the element            
% connectivity data assuming that the element matrix is full.                  
% Since this case the  material model is linear isotropically elastic          
% there exist some zeros.                                                      
% Since the removal of those zero elements is trivial                          
% but the reconstruction of the current sparsity                               
% pattern is impossible from the sparsified structure without any further      
% knowledge of the element connectivity, the zeros are retained in this file.  
% ---------------------------------------------------------------------------  
%END DESCRIPTION                                                               
%                                                                              
%                                                                              
',
    aux_fields: 'coord: full 5357-by-3
',    norm: '9.598608e+03',
    min_singular_value: '3.998353e-07',
    condition_number: '2.400640e+10',
    svd_rank: '5357',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
    image_files: 's3rmt3m3.png,s3rmt3m3_gplot.png,s3rmt3m3_svd.png,s3rmt3m3_graph.gif,',
}
