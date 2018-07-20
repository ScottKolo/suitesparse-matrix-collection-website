{
    matrix_id: '2647',
    name: 'CoupCons3D',
    group: 'Janna',
    description: '3D fully coupled poroelastic problem',
    author: 'C. Janna, M. Ferronato, G. Pini',
    editor: 'T. Davis',
    date: '2012',
    kind: 'structural problem',
    problem_2D_or_3D: '1',
    num_rows: '416800',
    num_cols: '416800',
    nonzeros: '17277420',
    num_explicit_zeros: '5044916',
    num_strongly_connected_components: '84321',
    num_dmperm_blocks: '84321',
    structural_full_rank: 'true',
    structural_rank: '416800',
    pattern_symmetry: '1.000',
    numeric_symmetry: '0.009',
    rb_type: 'real',
    structure: 'unsymmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'Authors: Carlo Janna, Massimiliano Ferronato Giorgio Pini       
Matrix type: Unsymmetric                                        
# equations:      416,800                                       
# non-zeroes:   22,322,336                                      
                                                                
Problem description: Fully coupled poroelastic problem          
(structural problem)                                            
                                                                
                                                                
The matrix CoupCons3D has been obtained through a Finite Element
transient simulation of a fully coupled consolidation problem on
a three-dimensional domain using Finite Differences for the     
discretization in time.                                         
                                                                
Further information can be found in the following papers:       
                                                                
1) M. Ferronato, G. Pini, and G. Gambolati. The role of         
preconditioning in the solution to FE coupled consolidation     
equations by Krylov subspace methods.  International Journal for
Numerical and Analytical Methods in Geomechanics 33 (2009), pp. 
405-423.                                                        
                                                                
2) M. Ferronato, C. Janna, and G. Pini. Parallel solution to    
ill-conditioned FE geomechanical problems. International Journal
for Numerical and Analytical Methods in Geomechanics 36 (2012), 
pp. 422-437.                                                    
                                                                
3) M. Ferronato, C. Janna and G. Pini. A generalized Block FSAI 
preconditioner for unsymmetric indefinite matrices. Journal of  
Computational and Applied Mathematics (2012), submitted.        
',
    image_files: 'CoupCons3D.png,CoupCons3D_dmperm.png,CoupCons3D_graph.gif,',
}
