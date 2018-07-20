{
    name: 'Janna',
    num_matrices: '18',
    notes: 'Finite element simulations: gas reservoir and structural problems. Univ Padova.
C. Janna, Univ. of Padova.  Authors: Carlo Janna and Massimiliano Ferronato
All matrices in the set are symmetric and positive definite.

Serena:

    Gas reservoir simulation for CO2 sequestration.

    # equations:   1,391,349
    # non-zeroes: 64,531,701
    Problem description: structural problem

    The matrix Serena is obtained from a structural problem discretizing a gas
    reservoir with tetrahedral Finite Elements. The medium is strongly
    heterogeneous and characterized by a complex geometry consisting of
    alternating sequences of thin clay and sand layers.  References: [1]

Emilia_923:

    # equations:  923136
    # non-zeroes: 41005206
    Problem description: Geomechanical problem

    The matrix Emilia_923 is obtained from a structural problem discretizing a
    gas reservoir with tetrahedral Finite Elements. Due to the complex
    geometry of the geological formation it was not possible to obtain a
    computational grid characterized by regularly shaped elements.  The
    problem arises from a 3D discretization with three displacement unknowns
    associated to each node of the grid.  References: [1], [2]

Fault_639:

    # equations:  638802
    # non-zeroes: 28614564
    Problem description: contact mechanics

    The matrix Fault_639 is obtained from a structural problem discretizing a
    faulted gas reservoir with tetrahedral Finite Elements and triangular
    Interface Elements.  The Interface Elements are used with a Penalty
    formulation to simulate the faults behaviour.  The problem arises from a
    3D discretization with three displacement unknowns associated to each node
    of the grid.  References [3,4,5,6]

Flan_1565:

    # equations:    1564794
    # non-zeroes: 117406044
    Problem description: Structural problem

    The matrix Flan_1565 is obtained from a 3D mechanical problem discretizing
    a steel flange with hexahedral Finite Elements. Due to the regular shape
    of the mechanical piece, the computational grid is a structured mesh with
    regularly shaped elements. Three displacement unknowns are associated to
    each node of the grid.  References [6,7]

Geo_1438:

    # equations:   1437960
    # non-zeroes: 63156690
    Problem description: Geomechanical problem

    The matrix Geo_1438 is obtained from a geomechanical problem discretizing
    a region of the earth crust subject to underground deformation. The
    computational domain is a box with an areal extent of 50 x 50 km and 10 km
    deep consisting of regularly shaped tetrahedral Finite Elements.  The
    problem arises from a 3D discretization with three displacement unknowns
    associated to each node of the grid.  Reference: [6]

Hook_1498:

    # equations:   1498023
    # non-zeroes: 60917445
    Problem description: Structural problem

    The matrix Hook_1498 is obtained from a 3D mechanical problem discretizing
    a steel hook with tetrahedral Finite Elements. The computational grid
    consists of regularly shaped elements with three displacement unknowns
    associated to each node.

StocF-1465:

    # equations:   1465137
    # non-zeroes: 21005389
    Problem description: Flow in porous medium with a stochastic permeabilies

    The matrix StocF_1465 is obtained from a fluid-dynamical problem of flow
    in porous medium.  The computational grid consists of tetrahedral Finite
    Elements discretizing an underground aquifer with stochastic
    permeabilties.  References: [2,8]

References:

[1] M. Ferronato, G. Gambolati, C. Janna, P. Teatini. "Geomechanical
    issues of anthropogenic CO2 sequestration in exploited gas fields", Energy
    Conversion and Management, 51, pp. 1918-1928, 2010.

[2] C. Janna, M. Ferronato. "Adaptive pattern research for block FSAI
    preconditionig". SIAM Journal on Scientific Computing, to appear.

[3] M. Ferronato, G. Gambolati, C. Janna, P. Teatini. "Numerical modelling
    of regional faults in land subsidence prediction above gas/oil
    reservoirs", International Journal for Numerical and Analytical Methods in
    Geomechanics, 32, pp. 633-657, 2008.

[4] M. Ferronato, C. Janna, G. Gambolati. "Mixed constraint preconditioning
    in computational contact mechanics", Computer Methods in Applied Mechanics
    and Engineering, 197, pp. 3922-3931, 2008. 

[5] C. Janna, M. Ferronato, G. Gambolati. "Multilevel incomplete
    factorizations for the iterative solution of non-linear FE problems".
    International Journal for Numerical Methods in Engineering, 80, pp.
    651-670, 2009. 

[6] C. Janna, M. Ferronato, G. Gambolati. "A Block FSAI-ILU parallel
    preconditioner for symmetric positive definite linear systems". SIAM
    Journal on Scientific Computing, 32, pp. 2468-2484, 2010.

[7] C. Janna, A. Comerlati, G. Gambolati. "A comparison of projective and
    direct solvers for finite elements in elastostatics". Advances in
    Engineering Software, 40, pp. 675-685, 2009.

[8] M. Ferronato, C. Janna, G. Pini. "Shifted FSAI preconditioners for the
    efficient parallel solution of non-linear groundwater flow models".
    International Journal for Numerical Methods in Engineering, to appear.


--------------------------------------------------------------------------------
Cube_Coup_* and Long_Coup_* matrices:
--------------------------------------------------------------------------------

Authors: Carlo Janna and Massimiliano Ferronato

Cube_Coup_*:  Symmetric Indefinite Matrix
# equations:    2,164,760
# non-zeroes: 127,206,144
Problem description: Coupled consolidation problem

The matrix Cube_Coup is obtained from a 3D coupled consolidation
problem of a cube discretized with tetrahedral Finite Elements. The
computational grid is characterized by regularly shaped elements.  The
copuled consolidation problem gives rise to a matrix having 4 unknowns
associated to each node: the first three are displacement unknowns, the
fourth is a pressure. Coupled consolidation is a transient problem with
the matrix ill-conditioning strongly depending on the time step size.
We provide a relatively simple problem, "dt0" with  a time step size of
10^0 seconds, and a more difficult one, "dt6" with a time step of 10^6
seconds.  The two Cube_Coup_* matrices are symmetric indefinite.

Long_Coup_*: Symmetric Indefinite Matrix
# equations:   1,470,152
# non-zeroes: 87,088,992
Problem description: Coupled consolidation problem

The matrix Long_Coup is obtained from a 3D coupled consolidation
problem of a geological formation discretized with tetrahedral Finite
Elements. Due its complex geometry it was not possible to obtain a
computational grid characterized by regularly shaped elements.  The
copuled consolidation problem gives rise to a matrix having 4 unknowns
associated to each node: the first three are displacement unknowns, the
fourth is a pressure. Coupled consolidation is a transient problem with
the matrix ill-conditioning strongly depending on the time step size.
We provide a relatively simple problem, "dt0" with  a time step size of
10^0 seconds, and a more difficult one, "dt6" with a time step of 10^6
seconds.  The two Long_Coup_* matrices are symmetric indefinite.

Further information on the 4 matrices may be found in the following papers:

1) C. Janna, M. Ferronato, G. Gambolati. "Parallel inexact constraint
preconditioning for ill-conditioned consolidation problems".
Computational Geosciences, submitted.

2) M. Ferronato, L. Bergamaschi, G. Gambolati. "Performance and
robustness of block constraint preconditioners in FE coupled
consolidation problems".  International Journal for Numerical Methods
in Engineering, 81, pp. 381-402, 2010.

3) L. Bergamaschi, M. Ferronato, G. Gambolati. "Mixed constraint
preconditioners for the iterative solution to FE coupled consolidation
equations". Journal of Computational Physics, 227, pp. 9885-9897, 2008.

4) L. Bergamaschi, M. Ferronato, G. Gambolati. "Novel preconditioners
for the iterative solution to FE-discretized coupled consolidation
equations". Computer Methods in Applied Mechanics and Engineering, 196,
pp. 2647-2656, 2007.

--------------------------------------------------------------------------------
Janna/CoupCons3D
--------------------------------------------------------------------------------

    Authors: Carlo Janna, Massimiliano Ferronato Giorgio Pini
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
    Authors: Carlo Janna, Massimiliano Ferronato, Giorgio Pini

--------------------------------------------------------------------------------
Janna/ML_Laplace
--------------------------------------------------------------------------------

    Authors: Carlo Janna, Massimiliano Ferronato Giorgio Pini
    Matrix type: Unsymmetric
    # equations:       377,002
    # non-zeroes:   27,689,972

    Problem description: Poisson problem

    The matrix ML_Laplace has been obtained by discretizing a 2D
    Poisson equation with a Meshless Local Petrov-Galerkin method.

    Further information can be found in the following papers:

    1) G. Pini, A. Mazzia, and F. Sartoretto. Accurate MLPG solution
    of 3D potential problems. CMES - Computer Modeling in Engineering
    & Sciences 36 (2008), pp. 43-64.

    2) M. Ferronato, C. Janna and G. Pini. A generalized Block FSAI
    preconditioner for unsymmetric indefinite matrices. Journal of
    Computational and Applied Mathematics (2012), submitted.
    Authors: Carlo Janna, Massimiliano Ferronato, Giorgio Pini

--------------------------------------------------------------------------------
Janna/Transport
--------------------------------------------------------------------------------

    Authors: Carlo Janna, Massimiliano Ferronato Giorgio Pini
    Matrix type: Unsymmetric
    # equations:       1,602,111
    # non-zeroes:     23,500,731

    Problem description: 3D Finite Element flow and transport

    The matrix Transport has been obtained by a FE tetrahedral
    discretization of a density driven coupled flow and transport.

    Further information can be found in the following papers:

    1) A. Mazzia, and M. Putti. High order Godunov mixed methods on
    tetrahedral meshes for density driven flow simulations in porous
    media. Journal of Computational Physics 208 (2005), pp. 154-174.

    2) M. Ferronato, C. Janna and G. Pini. A generalized Block FSAI
    preconditioner for unsymmetric indefinite matrices. Journal of
    Computational and Applied Mathematics (2012), submitted.

--------------------------------------------------------------------------------
Janna/ML_Geer
--------------------------------------------------------------------------------

    Authors: Carlo Janna, Massimiliano Ferronato, Giorgio Pini
    Matrix type: Unsymmetric
    # equations:      1,504,002
    # non-zeroes:   110,879,972

    Problem description: Poroelastic problem (structural problem)

    The matrix ML_Geer has been obtained to find through a Meshless
    Petrov-Galerkin discretization the deformed configuration of an
    axial-symmetric porous medium subject to a pore-pressure drawdown.

    Further information can be found in the following papers:

    1) M. Ferronato, A. Mazzia, G. Pini, and G. Gambolati. A meshless
    method for axi-symmetric poroelastic simulations: numerical
    study. International Journal for Numerical Methods in Engineering
    70 (2007), pp. 1346-1365.

    2) M. Ferronato, C. Janna and G. Pini. A generalized Block FSAI
    preconditioner for unsymmetric indefinite matrices. Journal of
    Computational and Applied Mathematics (2012), submitted.

--------------------------------------------------------------------------------
Bump_2991
--------------------------------------------------------------------------------

    Matrix Name: Bump_2911

    Authors: Carlo Janna and Massimiliano Ferronato
    Symmetric Positive Definite Matrix
    # equations:     2,911,419
    # non-zeroes:  130,378,257
    Problem description: 3D geomechanical reservoir simulation

    The matrix Bump_2911 is obtained from the 3D geomechanical
    simulation of a gas-reservoir discretized by linear tetrahedral
    Finite Elements. The mechanical properties of the medium vary
    with the depth and the geological formation. Zero displacement
    are applied on bottom and lateral boundary, while a traction-free
    top boundary is assumed.

    Further information may be found in the following papers:

    1) C. Janna, M. Ferronato, G. Gambolati. "Enhanced Block FSAI
    preconditioning using Domain Decomposition techniques". SIAM
    Journal on Scientific Computing, 35, pp. S229-S249, 2013.

    2) C. Janna, M. Ferronato, G. Gambolati. "The use of supernodes
    in factored sparse approximate inverse preconditioning". SIAM
    Journal on Scientific Computing, submitted.

--------------------------------------------------------------------------------
Queen_4147
--------------------------------------------------------------------------------

    Matrix Name: Queen_4147

    Authors: Carlo Janna and Massimiliano Ferronato
    Symmetric Positive Definite Matrix
    # equations:     4,147,110
    # non-zeroes:  329,499,288
    Problem description: 3D structural problem

    The matrix Queen_4147 is obtained from the 3D discretizaion
    of a structural problem by isoparametric hexahedral Finite
    Elements. The solid material is strongly heterogeneous and
    several elements exhibit shape distortion thus producing an
    ill-conditioned stiffness matrix.

    Further information may be found in the following paper:

    1) C. Janna, M. Ferronato, G. Gambolati. "The use of supernodes
    in factored sparse approximate inverse preconditioning". SIAM
    Journal on Scientific Computing, submitted.

--------------------------------------------------------------------------------
PFlow_742
--------------------------------------------------------------------------------

    Matrix Name: PFlow_742

    Authors: Carlo Janna and Massimiliano Ferronato
    Symmetric Positive Definite Matrix
    # equations:     742,793
    # non-zeroes: 37,138,461
    Problem description: 3D pressure-temperature evolution
    in porous media

    The matrix PFlow_742 is obtained from a 3D simulation of the
    pressure-temperature field in a multilayered porous media
    discretized by hexahedral Finite Elements. The ill-conditioning
    of the matrix is due to the strong contrasts in the material
    properties fo different layers.

    Further information may be found in the following paper:

    1) C. Janna, M. Ferronato, G. Gambolati. "The use of supernodes
    in factored sparse approximate inverse preconditioning". SIAM
    Journal on Scientific Computing, submitted.

',

}

