{
    matrix_id: '1861',
    name: 'F2',
    group: 'Koutsovasilis',
    description: 'AUDI engine piston rod; Panos Koutsovasilis, Technische Univ. Dresden',
    author: 'P. Koutsovasilis',
    editor: 'T. Davis',
    date: '2007',
    kind: 'structural problem',
    problem_2D_or_3D: '1',
    num_rows: '71505',
    num_cols: '71505',
    nonzeros: '5294285',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '71505',
    pattern_symmetry: '1.000',
    numeric_symmetry: '1.000',
    rb_type: 'real',
    structure: 'symmetric',
    cholesky_candidate: 'yes',
    positive_definite: 'no',
    notes: 'Stiffness matrix from an AUDI engine piston rod.  This matrix is an ill-     
condition symmetric indefinite matrix.  In MATLAB 7.4, the matrix is         
factorized three times in x=A\b.  Inside backslash, CHOLMOD is tried first   
since the matrix is symmetric and all diagonal entries are positive.  CHOLMOD
fails since the matrix is indefinite.  Next, UMFPACK is used with default    
pivot tolerances which maintain sparsity at the (rare) expense of a slight   
decrease in accuracy.  This succeeds, but the result is flagged as           
potentially inaccurate because the condition estimate is high.  UMFPACK is   
then used again with more conservative tolerances (but more fill-in).        
',
}
