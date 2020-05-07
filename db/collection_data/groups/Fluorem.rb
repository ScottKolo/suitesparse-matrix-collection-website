{
    name: 'Fluorem',
    num_matrices: '5',
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

    Reference:  "A Study of ILU Factorization for Schwartz             
    Preconditioners with Application to Computational Fluid            
    Dynamics", F. Pacull, S. Aubert, M. Buisson, Proceedings           
    of the 2nd Intl Conf on Parallel, Distributed, Grid, and           
    Cloud Computing for Engineering, B.H.V Topping and P.              
    Iva\'nyi, Editors.  Civil-Comp Press, Stirlingshire,                
    Scotland, 2011.                                                    


Specific problem descriptions:

    DK01R: 1D turbulent case
    number of mesh nodes: 129
    block size: 7
    variables: [rho,rho*u,rho*v,rho*w,rho*E,rho*k,rho*omega]
    (rho v and rho w are "silent", the third and fourth rows
    and columns
    in each block can be removed)
    matrix order: 903
    nnz: 11766
    comments: The DK01R matrix corresponds to a small 1D turbulent
    case. The grid has 129 nodes, non-uniformly spaced
    (geometrical distribution). The number of unknowns per node is
    7, leading to a linear system of 903 real algebraic equations.
    The 1D discretization of the partial differential equations
    uses a 5 points stencil, leading to a block penta-diagonal
    matrix, each block having size 7 by 7. Each diagonal block is
    related to two up- and two down-stream neighboring nodes,
    corresponding respectively to the 14 upper and 14 lower matrix
    rows, the node ordering being coherent with the 1D spatial
    node distribution. The stationary flow on which the matrix is
    based on is dominated by advection, characterized by a Mach
    number around 0.3.

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

    RM07R: 3D viscous case with "frozen" turbulence
    number of mesh nodes: 54527
    block size: 7
    variables: [rho,rho*u,rho*v,rho*w,rho*E,rho*k,rho*omega]
    (rho k and rho omega are "silent", the sixth and seventh rows
    and columns in each block can be removed)
    matrix order: 381689
    nnz: 37464962
    comments: The geometry is a jet engine compressor.

    HV15R: 3D engine fan. The flow has a low Mach number.
    This is a 3D Reynolds-Averaged-Navier-Stokes case.
    Number of mesh nodes: 288,167
    block size: 7
    variables: [rho, rho*u, rho*v, rho*w, rho*E, rho*k, rho*omega]
    matrix order: 2,017,169
    nnz: 283,073,458
',

}

