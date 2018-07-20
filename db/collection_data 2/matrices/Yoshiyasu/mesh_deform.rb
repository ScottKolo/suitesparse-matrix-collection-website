{
    matrix_id: '2249',
    name: 'mesh_deform',
    group: 'Yoshiyasu',
    description: 'image mesh deformation problem, Y. Yoshiyasu, Keio Univ, Japan',
    author: 'Y Yoshiyasu',
    editor: 'T. Davis',
    date: '2009',
    kind: 'computer graphics/vision problem',
    problem_2D_or_3D: '1',
    num_rows: '234023',
    num_cols: '9393',
    nonzeros: '853829',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '9393',
    pattern_symmetry: '0.000',
    numeric_symmetry: '0.000',
    rb_type: 'real',
    structure: 'rectangular',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'This problem one is template deformation using the vector field from the   
Yoshiyasu/image_interp problem, solved with v=(A2\'*D*A2)/(A2\'*D*b2), where 
D is a diagonal matrix containing weights.  Structures of A2 and b2 are a  
little bit more complex than A1 and b1 (in the image_interp problem), but  
they are similar.  Both systems are not very time-consuming themselves, but
this process iterates more than 10 times for 10 views.  [Note by T. Davis: 
since C is of high rank, update/downdate will not be effective, since it is
meant for low-rank changes.]                                               
',
    b_field: 'full 234023-by-3
',
    aux_fields: 'D: sparse 234023-by-234023
',    norm: '4.453382e+01',
    min_singular_value: '3.817279e-02',
    condition_number: '1.166638e+03',
    svd_rank: '9393',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
    image_files: 'mesh_deform.png,mesh_deform_svd.png,mesh_deform_graph.gif,',
}
