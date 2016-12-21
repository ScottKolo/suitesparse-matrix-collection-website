{
    matrix_id: '2262',
    name: 'shallow_water2',
    group: 'MaxPlanck',
    description: 'shallow water modelling, Max-Planck Inst. of Meteorology',
    author: 'K. Leppkes, U. Naumann',
    editor: 'T. Davis',
    date: '2009',
    kind: 'computational fluid dynamics problem',
    problem_2D_or_3D: '1',
    num_rows: '81920',
    num_cols: '81920',
    nonzeros: '327680',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '81920',
    pattern_symmetry: '1.000',
    numeric_symmetry: '1.000',
    rb_type: 'real',
    structure: 'symmetric',
    cholesky_candidate: 'yes',
    positive_definite: 'yes',
    notes: 'The two shallow_water* matrices arise from weather shallow water equations   
(see http://www.icon.enes.org), from the Max-Plank Institute of Meteorology. 
The problem gives rise to an automatic differentiation problem.  An iterative
solver is used for the larger problem, but a direct sovler is used for       
finding the adjoints of a linear problem.  The velocity field is integrated  
over a time loop with a semi-implicit method.  The implicit part leads to    
a linear problem A*x=b, whose entries vary with time.  Two of these matrices 
A are in this collection, with shallow_water1 at dtime=100 and shallow_water2
at dtime=200.  The nonzero patterns of the two matrices are the same, but    
shallow_water1 is much slower.  The reason is that many denormals appear     
during factorization, which greatly slows down the BLAS.  This can be solved 
by compiling with gcc -ffast-math, to flush denormals to zero.               
',
}
