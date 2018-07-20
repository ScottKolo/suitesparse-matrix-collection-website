{
    matrix_id: '2832',
    name: 'Hardesty2',
    group: 'Hardesty',
    description: 'surface fitting problem (smaller version)',
    author: 'S. Hardesty',
    editor: 'T. Davis',
    date: '2015',
    kind: 'computer graphics/vision problem',
    problem_2D_or_3D: '1',
    num_rows: '929901',
    num_cols: '303645',
    nonzeros: '4020731',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '303645',
    pattern_symmetry: '0.000',
    numeric_symmetry: '0.000',
    rb_type: 'real',
    structure: 'rectangular',
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
    b_field: 'full 929901-by-1
',
    image_files: 'Hardesty2.png,',
}
