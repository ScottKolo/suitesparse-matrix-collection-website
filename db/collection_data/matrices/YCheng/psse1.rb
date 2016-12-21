{
    matrix_id: '1871',
    name: 'psse1',
    group: 'YCheng',
    description: 'Power system state simulation matrix, Yunzhi Cheng, UT Arlington',
    author: 'Y. Cheng',
    editor: 'T. Davis',
    date: '2007',
    kind: 'power network problem',
    problem_2D_or_3D: '0',
    num_rows: '14318',
    num_cols: '11028',
    nonzeros: '57376',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1722',
    structural_full_rank: 'true',
    structural_rank: '11028',
    pattern_symmetry: '0.000',
    numeric_symmetry: '0.000',
    rb_type: 'real',
    structure: 'rectangular',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'Power system state simulation matrix from Yunzhi Cheng, UT Arlington.
In MATLAB, the solution to x=A\b is desired, but this can be slow in 
MATLAB 7.3 because of the speed of sparse QR as compared to sparse   
Cholesky.  Using x=(A\'*A)\(A\'*b) is faster, but of course yields     
slightly less accurate (but still acceptable) results.  Note that an 
initial guess to the solution is provided, for use by an iterative   
method.  However, sparse Cholesky with an AMD ordering is very fast  
for this matrix and thus iterative methods are unlikely to be        
competitive.  In MATLAB 7.3 on a 3.2 Ghz Pentium 4 desktop,          
x=(A\'*A)\(A\'*b) takes 0.05 seconds.                                  
',
    b_field: 'full 14318-by-1
',
    aux_fields: 'guess: full 11028-by-1
',    norm: '2.001254e+05',
    min_singular_value: '1.779262e-01',
    condition_number: '1.124767e+06',
    svd_rank: '11028',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
}
