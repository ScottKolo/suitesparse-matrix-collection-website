{
    matrix_id: '281',
    name: 'young4c',
    group: 'HB',
    description: 'complex matrix from aero research, David Young, corrected CUA version',
    author: 'D. Young',
    editor: 'I. Duff, R. Grimes, J. Lewis',
    date: '1984',
    kind: 'acoustics problem',
    problem_2D_or_3D: '1',
    num_rows: '841',
    num_cols: '841',
    nonzeros: '4089',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '841',
    pattern_symmetry: '1.000',
    numeric_symmetry: '0.800',
    rb_type: 'complex',
    structure: 'unsymmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'The YOUNG*C matrices originally appeared in the Harwell/Boeing     
collection as type CSA (complex symmetric).  However, both upper   
and lower triangular parts are present in the original files       
(an invalid specification; only the lower part can be present      
in the file).  If the entries in the upper triangular part are     
considered as part of the matrix, the matrices become unsymmetric. 
The matrices have been corrected in the UF Sparse Matrix Collection
by changing their type to CUA so that the entries in the original  
files are not ignored.  In addition, the YOUNG3C matrix has a zero 
imaginary part, and thus appears here as a real matrix.            
',
    norm: '4.593216e+02',
    min_singular_value: '1.936784e-01',
    condition_number: '2.371569e+03',
    svd_rank: '841',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
    image_files: 'young4c.png,young4c_svd.png,young4c_graph.gif,',
}
