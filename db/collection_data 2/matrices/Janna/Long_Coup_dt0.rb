{
    matrix_id: '2550',
    name: 'Long_Coup_dt0',
    group: 'Janna',
    description: '3D coupled consolidation problem (geological formation)',
    author: 'C. Janna, M. Ferronato',
    editor: 'T. Davis',
    date: '2012',
    kind: 'structural problem',
    problem_2D_or_3D: '1',
    num_rows: '1470152',
    num_cols: '1470152',
    nonzeros: '84422970',
    num_explicit_zeros: '2666022',
    num_strongly_connected_components: '39045',
    num_dmperm_blocks: '39045',
    structural_full_rank: 'true',
    structural_rank: '1470152',
    pattern_symmetry: '1.000',
    numeric_symmetry: '1.000',
    rb_type: 'real',
    structure: 'symmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'Authors: Carlo Janna and Massimiliano Ferronato                        
Symmetric Indefinite Matrix                                            
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
    image_files: 'Long_Coup_dt0.png,Long_Coup_dt0_dmperm.png,Long_Coup_dt0_graph.gif,',
}
