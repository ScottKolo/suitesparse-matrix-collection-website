{
    matrix_id: '2549',
    name: 'Cube_Coup_dt6',
    group: 'Janna',
    description: '3D coupled consolidation problem (3D cube)',
    author: 'C. Janna, M. Ferronato',
    editor: 'T. Davis',
    date: '2012',
    kind: 'structural problem',
    problem_2D_or_3D: '1',
    num_rows: '2164760',
    num_cols: '2164760',
    nonzeros: '124406070',
    num_explicit_zeros: '2800074',
    num_strongly_connected_components: '47061',
    num_dmperm_blocks: '47061',
    structural_full_rank: 'true',
    structural_rank: '2164760',
    pattern_symmetry: '1.000',
    numeric_symmetry: '1.000',
    rb_type: 'real',
    structure: 'symmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'Authors: Carlo Janna and Massimiliano Ferronato                        
Symmetric Indefinite Matrix                                            
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
                                                                       
Further information may be found in the following papers:              
                                                                       
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
',
}
