{
    matrix_id: '2335',
    name: 'GT01R',
    group: 'Fluorem',
    description: 'GT01R: 2D inviscid case. F. Pacull, Lyon, France',
    author: 'F. Pacull',
    editor: 'T. Davis',
    date: '2010',
    kind: 'computational fluid dynamics problem',
    problem_2D_or_3D: '1',
    num_rows: '7980',
    num_cols: '7980',
    nonzeros: '430909',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '4',
    num_dmperm_blocks: '4',
    structural_full_rank: 'true',
    structural_rank: '7980',
    pattern_symmetry: '0.881',
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
    GT01R: 2D inviscid case                                        
    number of mesh nodes: 1596                                     
    block size: 5                                                  
    variables: [rho,rho*u,rho*v,rho*w,rho*E]                       
    (rho w is "silent", the fourth row and column in each          
    block can be removed)                                          
    matrix order: 7980                                             
    nnz: 430909                                                    
    comments: This is a 2D linear cascade turbine case. The grid   
    corresponds to one inter-blade channel. The stencil involved   
    by the convective scheme uses 9 nodes. Thus, there are 9       
    non-zero blocks for each node in the matrix. The specificity   
    is that the computational domain is periodic, which introduces 
    some non-zeros elements far away from the diagonal.            
',
    b_field: 'full 7980-by-1
',
    x_field: 'full 7980-by-1
',
    norm: '1.950065e+05',
    min_singular_value: '3.086683e-02',
    condition_number: '6.317673e+06',
    svd_rank: '7980',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
}
