{
    matrix_id: '1276',
    name: 's3dkt3m2',
    group: 'GHS_psdef',
    description: 'FEM, cylindrical shell, 150x100 tri. mesh, R/t=1000',
    author: 'R. Kouhia',
    editor: 'R. Boisvert, R. Pozo, K. Remington, B. Miller, R. Lipman, R. Barrett, J. Dongarra',
    date: '1997',
    kind: 'structural problem',
    problem_2D_or_3D: '1',
    num_rows: '90449',
    num_cols: '90449',
    nonzeros: '3686223',
    num_explicit_zeros: '67238',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '90449',
    pattern_symmetry: '1.000',
    numeric_symmetry: '1.000',
    rb_type: 'real',
    structure: 'symmetric',
    cholesky_candidate: 'yes',
    positive_definite: 'yes',
    notes: '%                                                                              
%FILE  s3dkt3m2.mtx                                                            
%TITLE Cyl shell R/t=1000 unif 150x100 triang mesh DKT elem with drill rot     
%KEY   s3dkt3m2                                                                
%                                                                              
%                                                                              
%CONTRIBUTOR Reijo Kouhia (reijo.kouhia@hut.fi)                                
%                                                                              
%BEGIN DESCRIPTION                                                             
% Matrix from a static analysis of a cylindrical shell                         
% Radius to thickness ratio R/t = 1000                                         
% Length to radius ratio    R/L = 1                                            
% One octant discretized with uniform 150 x 100 triangular mesh                
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
% and the FE mesh is  uniform there exist some zeros.                          
% Since the removal of those zero elements is trivial                          
% but the reconstruction of the current sparsity                               
% pattern is impossible from the sparsified structure without any further      
% knowledge of the element connectivity, the zeros are retained in this file.  
% ---------------------------------------------------------------------------  
%END DESCRIPTION                                                               
%                                                                              
%                                                                              
',
    aux_fields: 'coord: full 90449-by-3
',}
