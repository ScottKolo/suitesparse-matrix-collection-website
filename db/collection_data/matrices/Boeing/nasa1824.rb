{
    matrix_id: '363',
    name: 'nasa1824',
    group: 'Boeing',
    description: 'STRUCTURE FROM NASA LANGLEY, 1824 DEGREES OF FREEDOM',
    author: 'R. Grimes',
    editor: 'T. Davis',
    date: '1995',
    kind: 'duplicate structural problem',
    problem_2D_or_3D: '1',
    num_rows: '1824',
    num_cols: '1824',
    nonzeros: '39208',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '1824',
    pattern_symmetry: '1.000',
    numeric_symmetry: '1.000',
    rb_type: 'real',
    structure: 'symmetric',
    cholesky_candidate: 'yes',
    positive_definite: 'no',
    notes: 'Let A1=Nasa/nasa1824 and A2=Boeing/nasa1824.  A1 and A2 have the same 
nonzero pattern.  A1 and A2 differ in value in only 386 entries out of
39208, and only in 21 columns of the lower triangular part;           
tril(A(196:321,196:216)) and the same rows of the upper triangular    
part.  The magnitudes of the entries in A2 in this region of the      
matrix are all tiny, and have only 9 digits if printed in base-10     
(unlike the other entries, which have full precision).  I suspect A2  
(Boeing/nasa1824) is a corrupted version of A1 (Nasa/nasa1824).       
',
    b_field: 'full 1824-by-1
',
    norm: '2.121717e+07',
    min_singular_value: '3.601133e+00',
    condition_number: '5.891804e+06',
    svd_rank: '1824',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
}
