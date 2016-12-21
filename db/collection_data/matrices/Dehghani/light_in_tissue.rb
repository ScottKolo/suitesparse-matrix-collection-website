{
    matrix_id: '1873',
    name: 'light_in_tissue',
    group: 'Dehghani',
    description: 'Light transport in soft tissue. Hamid Dehghani, Univ. Exeter, UK',
    author: 'H. Dehghani',
    editor: 'T. Davis',
    date: '2007',
    kind: 'electromagnetics problem',
    problem_2D_or_3D: '1',
    num_rows: '29282',
    num_cols: '29282',
    nonzeros: '406084',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '29282',
    pattern_symmetry: '1.000',
    numeric_symmetry: '0.000',
    rb_type: 'complex',
    structure: 'unsymmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: '% The problem is solving the fluence (PHI) of light in soft tissue using
% a simplified 3rd spherical harmonic expansion (SPN3) of the Radiative 
% Transport Equation.  There are two coupled equations to solve:        
% M1*phi1 = Q + (M2*phi2)                                   eq(1)       
% (M4 - (M3*inv(M1)*M2))*phi2 = -2/3*Q + M3*inv(M1)*Q       eq(2)       
% PHI = phi1 - (1/3).*phi2                                  eq(3)       
                                                                        
Problem = UFget (\'Dehghani/light_in_tissue\') ;                          
A = Problem.A ;                   % get the problem                     
Q = Problem.aux.Q ;                                                     
k = size (A,1) / 2 ;                                                    
M1 = A (1:k,1:k) ;                                                      
M2 = A (1:k,k+1:end) ;                                                  
M3 = A (k+1:end, 1:k) ;                                                 
M4 = A (k+1:end, k+1:end) ;                                             
elements = Problem.aux.elements ;                                       
nodes = Problem.aux.nodes ;                                             
                                                                        
Q2 = (-(2/3).*Q) + (M3*(M1\Q)) ;  % create rhs for equation 2           
Q2 = [sparse(k,1) ; Q2] ;                                               
phi2 = A\Q2 ;                     % solve for phi2                      
phi2 = phi2 (end/2+1:end,:) ;                                           
Q1 = Q + M2*phi2 ;                % calculate rhs for equation 1        
phi1 = M1\Q1;                     % solve for phi1                      
PHI = phi1 - (1/3).*phi2;                                               
figure (1) ; clf                  % plot results                        
trisurf(elements, nodes(:,1), nodes(:,2), nodes(:,3), log(abs(PHI))) ;  
shading interp ;                                                        
view (2) ;                                                              
colorbar(\'horiz\') ;                                                     
axis equal ;                                                            
axis off ;                                                              
colormap hot ;                                                          
',
    b_field: 'sparse 29282-by-1
',
    aux_fields: 'Q: sparse 14641-by-1
nodes: full 14641-by-3
elements: full 28800-by-3
',    norm: '2.663552e+00',
    min_singular_value: '3.405251e-04',
    condition_number: '7.821896e+03',
    svd_rank: '29282',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
}
