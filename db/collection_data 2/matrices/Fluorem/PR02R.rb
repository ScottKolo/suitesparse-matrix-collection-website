{
    matrix_id: '2336',
    name: 'PR02R',
    group: 'Fluorem',
    description: 'PR02R: 2D turbulent case. F. Pacull, Lyon, France',
    author: 'F. Pacull',
    editor: 'T. Davis',
    date: '2010',
    kind: 'computational fluid dynamics problem',
    problem_2D_or_3D: '1',
    num_rows: '161070',
    num_cols: '161070',
    nonzeros: '8185136',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '457',
    num_dmperm_blocks: '457',
    structural_full_rank: 'true',
    structural_rank: '161070',
    pattern_symmetry: '0.948',
    numeric_symmetry: '0.000',
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
    PR02R: 2D turbulent case                                       
    number of mesh nodes: 23010                                    
    block size: 7                                                  
    variables: [rho,rho*u,rho*v,rho*w,rho*E,rho*k,rho*omega]       
    (rho v is "silent", the third row and column in each block     
    can be removed)                                                
    matrix order: 161070                                           
    nnz: 8185136                                                   
    comments: This is a 2D turbulent case, dominated by            
    convection. The geometry is a RAE wing profile and the mesh    
    is C-shaped.                                                   
',
    b_field: 'full 161070-by-1
',
    x_field: 'full 161070-by-1
',
    image_files: 'PR02R.png,PR02R_dmperm.png,PR02R_APlusAT_graph.gif,PR02R_graph.gif,',
}
