{
    matrix_id: '2831',
    name: 'Hardesty1',
    group: 'Hardesty',
    description: '2D biharmonic operator w/Langrage constraints, for smoothing',
    author: 'S. Hardesty',
    editor: 'T. Davis',
    date: '2013',
    kind: 'computer graphics/vision problem',
    problem_2D_or_3D: '1',
    num_rows: '938905',
    num_cols: '938905',
    nonzeros: '12143314',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '7811',
    structural_full_rank: 'true',
    structural_rank: '938905',
    pattern_symmetry: '1.000',
    numeric_symmetry: '1.000',
    rb_type: 'integer',
    structure: 'symmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'Surface fitting problem for visualization, Sean Hardesty              
                                                                      
Visualization of 3D structures in the earth                           
                                                                      
The Hardesty3 matrix is an interpolation matrix stacked above a       
weighted Laplacian, to to fit a surface z(x,y) to a set of points     
in R^3 subject to a smoothness constraint enforced via regularization.
Hardesty2 is a smaller version of this problem.                       
                                                                      
For the big matrix (Hardesty/Hardesty3), sparse QR (via SuiteSparseQR,
or SPQR) finds an R factor and a set of Householder vectors (Q.H) with
about 150 million nonzeros.  Sparse LU factorization (with UMFPACK    
v5.7.1) sees very high fillin (about 2.5 billion nonzeros in L+U).    
                                                                      
The Hardesty1 matrix is a simple discretization of a 2D biharmonic    
operator with some Lagrange multiplier constraints used for smoothing.
',
    image_files: 'Hardesty1.png,Hardesty1_dmperm.png,',
}
