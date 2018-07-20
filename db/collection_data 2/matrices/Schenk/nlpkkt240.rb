{
    matrix_id: '1905',
    name: 'nlpkkt240',
    group: 'Schenk',
    description: 'Symmetric indefinite KKT matrix, O. Schenk, Univ. of Basel',
    author: 'O. Schenk, A. Waechter, M. Weiser',
    editor: 'T. Davis',
    date: '2008',
    kind: 'optimization problem',
    problem_2D_or_3D: '0',
    num_rows: '27993600',
    num_cols: '27993600',
    nonzeros: '760648352',
    num_explicit_zeros: '13824000',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '27993600',
    pattern_symmetry: '1.000',
    numeric_symmetry: '1.000',
    rb_type: 'real',
    structure: 'symmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'Symmetric indefinite KKT matrices, O. Schenk, Univ. of Basel,         
Switzerland                                                           
Nonlinear programming problems for a 3D PDE-constrained optimization  
problem with boundary control as a function of the discretization     
parameter N using 2nd-order finite difference approximations.         
                                                                      
O. Schenk, A. W\"achter, and M. Weiser, Inertia Revealing             
Preconditioning For Large-Scale Nonconvex Constrained Optimization,   
Technical Report, Unversity of Basel, 2008, submitted.                
                                                                      
Abstract: Fast nonlinear programming methods following the            
all-at-once approach usually employ Newton\'s method for solving       
linearized Karush-Kuhn-Tucker (KKT) systems. In nonconvex problems,   
the Newton direction is only guaranteed to be a descent direction if  
the Hessian of the Lagrange function is positive definite on the      
nullspace of the active constraints, otherwise some modifications to  
Newton\'s method are necessary. This condition can be verified using   
the signs of the KKT\'s eigenvalues (inertia), which are usually       
available from direct solvers for the arising linear saddle point     
problems. Iterative solvers are mandatory for very large-scale        
problems, but in general do not provide the inertia. Here we present  
a preconditioner based on a multilevel incomplete LBL^T               
factorization, from which an approximation of the inertia can be      
obtained. The suitability of the heuristics for application in        
optimization methods is verified on an interior point method applied  
to the CUTE and COPS test problems, on large-scale 3D PDE-constrained 
optimal control problems, as well as 3D PDE-constrained optimization  
in biomedical cancer hyperthermia treatment planning.  The efficiency 
of the preconditioner is demonstrated on convex and nonconvex         
problems with 1503 state variables and 1502 control variables, both   
subject to bound constraints.                                         
',
    image_files: 'nlpkkt240.png,nlpkkt240_graph.gif,',
}
