{
    matrix_id: '1606',
    name: 's2rmq4m1',
    group: 'Cylshell',
    description: 'FEM, cylindrical shell, 30x30 quad. mesh, stabilized MITC4 elements, R/t=100',
    author: 'R. Kouhia',
    editor: 'R. Boisvert, R. Pozo, K. Remington, B. Miller, R. Lipman, R. Barrett, J. Dongarra',
    date: '1997',
    kind: 'structural problem',
    problem_2D_or_3D: '1',
    num_rows: '5489',
    num_cols: '5489',
    nonzeros: '263351',
    num_explicit_zeros: '17760',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '5489',
    pattern_symmetry: '1.000',
    numeric_symmetry: '1.000',
    rb_type: 'real',
    structure: 'symmetric',
    cholesky_candidate: 'yes',
    positive_definite: 'yes',
    notes: '%                                                                              
%FILE  s2rmq4m1.mtx                                                            
%TITLE Cyl shell R/t = 100 unif 30x30 quad mesh stab MITC4 elem with drill rot 
%KEY   s2rmq4m1                                                                
%                                                                              
%                                                                              
%CONTRIBUTOR Reijo Kouhia (reijo.kouhia@hut.fi)                                
%                                                                              
%REFERENCE   M. Benzi, R. Kouhia, M.Tuma: An assesment of some                 
%            preconditioning techniques in shell problems                      
%            Technical Report LA-UR-97-3892, Los Alamos National Laboratory    
%                                                                              
%BEGIN DESCRIPTION                                                             
% Matrix from a static analysis of a cylindrical shell                         
% Radius to thickness ratio R/t = 100                                          
% Length to radius ratio    R/L = 1                                            
% One octant discretized with uniform 30 x 30 quadrilateral mesh               
% element:                                                                     
% facet-type shell element where the bending part is formulated                
% using the stabilized MITC theory (stabilization paramater 0.4)               
% the membrane part includes drilling rotations using                          
% the Hughes-Brezzi formulation with (regularizing parameter = G/1000,         
% where G is the shear modulus)                                                
% full 2x2 Gauss-Legendre integration                                          
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
    aux_fields: 'coord: full 5489-by-3
',    norm: '6.874340e+04',
    min_singular_value: '3.874633e-04',
    condition_number: '1.774191e+08',
    svd_rank: '5489',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
}
