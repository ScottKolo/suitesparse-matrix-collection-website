{
    matrix_id: '2384',
    name: 'HV15R',
    group: 'Fluorem',
    description: 'HV15R: 3D engine fan. F. Pacull, Lyon, France',
    author: 'F. Pacull',
    editor: 'T. Davis',
    date: '2011',
    kind: 'computational fluid dynamics problem',
    problem_2D_or_3D: '1',
    num_rows: '2017169',
    num_cols: '2017169',
    nonzeros: '283073458',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '24683',
    num_dmperm_blocks: '24683',
    structural_full_rank: 'true',
    structural_rank: '2017169',
    pattern_symmetry: '0.845',
    numeric_symmetry: '0.001',
    rb_type: 'real',
    structure: 'unsymmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'CFD matrices from Francois Pacull, FLUOREM, in Lyon, France        
                                                                   
We are dealing with CFD and more precisely steady flow             
parametrization. The equations involved are the compressible       
Navier-Stokes ones (RANS).  These matrices are real, square and    
indefinite, they correspond to the Jacobian with respect the       
conservative fluid variables of the discretized governing          
equations (finite-volume discretization). Thus they have a         
block structure (corresponding to the mesh nodes: the block        
size is the number of variables per mesh node), they are not       
symmetric (however, their blockwise structure has a high level     
of symmetry) and they often show some kind of hyperbolic           
behavior. They have not been scaled or reordered.                  
                                                                   
They are generated through automatic differentiation of the        
flow solver around a steady state. A right hand-side is also       
given for each matrix: this represents the derivative of the       
equations with respect to a parameter (of operation or shape).     
Since they are generated automatically, they may have "silent"     
variables: these are variables corresponding to an identity        
submatrix associated with a null right hand-side, for example      
one of the three velocity components in a 2D case, or the          
turbulent variables in a "frozen" turbulence case.                 
                                                                   
We believe that these matrices are good test cases when            
studying preconditioning methods for iterative methods, such as    
block incomplete factorization, or when studying domain            
decomposition methods or deflation. They are actually being        
studied by a few researchers in France regarding numerical         
methods, through the LIBRAERO research project of the ANR (national
research agency): ANR-07-TLOG-011.                                 
                                                                   
Francois Pacull, Lyon, France.  fpacull at fluorem.com             
                                                                   
Specific problem descriptions:                                     
   This is a 3D Reynolds-Averaged-Navier-Stokes case.              
   HV15R: 3D engine fan. The flow has a low Mach number.           
   Number of mesh nodes: 288,167                                   
   block size: 7                                                   
   variables: [rho, rho*u, rho*v, rho*w, rho*E, rho*k, rho*omega]  
   matrix order: 2,017,169                                         
   nnz: 283,073,458                                                
                                                                   
In 2011, this problem took 3.5 hours to solve, using GMRES with    
an adaptive Schwarz preconditioner and ILU withing the subdomains, 
requiring about 100GB of memory.                                   
                                                                   
Reference:  "A Study of ILU Factorization for Schwartz             
Preconditioners with Application to Computational Fluid            
Dynamics", F. Pacull, S. Aubert, M. Buisson, Proceedings           
of the 2nd Intl Conf on Parallel, Distributed, Grid, and           
Cloud Computing for Engineering, B.H.V Topping and P.              
Iva\'nyi, Editors.  Civil-Comp Press, Stirlingshire,                
Scotland, 2011.                                                    
',
    b_field: 'full 2017169-by-1
',
    x_field: 'full 2017169-by-1
',
}
