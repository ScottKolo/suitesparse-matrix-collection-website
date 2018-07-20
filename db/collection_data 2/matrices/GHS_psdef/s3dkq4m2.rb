{
    matrix_id: '1275',
    name: 's3dkq4m2',
    group: 'GHS_psdef',
    description: 'FEM, cylindrical shell, 150x100 quad. mesh, R/t=1000',
    author: 'R. Kouhia',
    editor: 'R. Boisvert, R. Pozo, K. Remington, B. Miller, R. Lipman, R. Barrett, J. Dongarra',
    date: '1997',
    kind: 'structural problem',
    problem_2D_or_3D: '1',
    num_rows: '90449',
    num_cols: '90449',
    nonzeros: '4427725',
    num_explicit_zeros: '393166',
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
%FILE  s3dkq4m2.mtx                                                            
%TITLE Cyl shell R/t=1000 unif 150x100 quad mesh DKQ elem with drill rot       
%KEY   s3dkq4m2                                                                
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
% Radius to thickness ratio R/t = 1000                                         
% Length to radius ratio    R/L = 1                                            
% One octant discretized with uniform 150 x 100 quadrilateral mesh             
% element:                                                                     
% facet-type shell element where the bending part is formulated                
% using the discrete Kirchhoff quadrilateral (Lyons-Crisfield version),        
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
    aux_fields: 'coord: full 90449-by-3
',    image_files: 's3dkq4m2.png,s3dkq4m2_gplot.png,s3dkq4m2_graph.gif,',
}
