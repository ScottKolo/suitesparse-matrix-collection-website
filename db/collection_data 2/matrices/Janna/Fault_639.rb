{
    matrix_id: '2543',
    name: 'Fault_639',
    group: 'Janna',
    description: 'contact mechanics for model of a faulted gas reservoir',
    author: 'C. Janna, M. Ferronato',
    editor: 'T. Davis',
    date: '2011',
    kind: 'structural problem',
    problem_2D_or_3D: '1',
    num_rows: '638802',
    num_cols: '638802',
    nonzeros: '27245944',
    num_explicit_zeros: '1368620',
    num_strongly_connected_components: '21880',
    num_dmperm_blocks: '21880',
    structural_full_rank: 'true',
    structural_rank: '638802',
    pattern_symmetry: '1.000',
    numeric_symmetry: '1.000',
    rb_type: 'real',
    structure: 'symmetric',
    cholesky_candidate: 'yes',
    positive_definite: 'yes',
    notes: 'Authors: Carlo Janna and Massimiliano Ferronato                 
                                                                
Symmetric Positive Definite Matrix                              
# equations:  638802                                            
# non-zeroes: 28614564                                          
Problem description: contact mechanics                          
                                                                
The matrix Fault_639 is obtained from a structural problem      
discretizing a faulted gas reservoir with tetrahedral Finite    
Elements and triangular Interface Elements.  The Interface      
Elements are used with a Penalty formulation to simulate the    
faults behaviour.  The problem arises from a 3D discretization  
with three displacement unknowns associated to each node of the 
grid.  Some further information may be found in the following   
papers:                                                         
                                                                
1) M. Ferronato, G. Gambolati, C. Janna, P. Teatini. "Numerical 
modelling of regional faults in land subsidence prediction above
gas/oil reservoirs", International Journal for Numerical and    
Analytical Methods in Geomechanics, 32, pp. 633-657, 2008.      
                                                                
2) M. Ferronato, C. Janna, G. Gambolati. "Mixed constraint      
preconditioning in computational contact mechanics", Computer   
Methods in Applied Mechanics and Engineering, 197, pp.          
3922-3931, 2008.                                                
                                                                
3) C. Janna, M. Ferronato, G. Gambolati. "Multilevel incomplete 
factorizations for the iterative solution of non-linear FE      
problems". International Journal for Numerical Methods in       
Engineering, 80, pp. 651-670, 2009.                             
                                                                
4) C. Janna, M. Ferronato, G. Gambolati. "A Block FSAI-ILU      
parallel preconditioner for symmetric positive definite linear  
systems". SIAM Journal on Scientific Computing, 32, pp.         
2468-2484, 2010.                                                
',
    image_files: 'Fault_639.png,Fault_639_dmperm.png,Fault_639_graph.gif,',
}
