{
    matrix_id: '1868',
    name: 'viscoplastic1',
    group: 'Quaglino',
    description: 'FEM discretization of a viscoplastic collision problem, Alessio Quaglino',
    author: 'A. Quaglino',
    editor: 'T. Davis',
    date: '2007',
    kind: 'materials problem',
    problem_2D_or_3D: '1',
    num_rows: '4326',
    num_cols: '4326',
    nonzeros: '61166',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '4326',
    pattern_symmetry: '0.741',
    numeric_symmetry: '0.000',
    rb_type: 'real',
    structure: 'unsymmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'The matrix is in the form [A11 A12 ; A21 A22] where A11 and A22 are diagonal. 
Originally, the matrices in this set were poorly scaled, but this was resolved
by a scale factor of the form [A11 A12*e ; A21/e A4] where the scalar e is    
of magnitude 1e2 but can be 1e6 or 1e7 for a stiff material.  The Problem.A   
matrix is the properly scaled problem.  The Problem.aux.C{1:7} matrices have  
been "unscaled" with a factor e = 10.^(-(1:7)), to give a sequence of matrices
that are well scaled to poorly scaled, and thus well conditioned (C{1}) to    
poorly conditioned (C{7}).  This mimics the original poorly scaled and ill-   
conditioned problem, and may be of interest for those developing algorithms   
for automatic scaling.  From a FEM discretization of a viscoplastic collision 
problem, Alessio Quaglino.                                                    
',
    b_field: 'full 4326-by-1
',
    aux_fields: 'C: cell 7-by-1
',    norm: '7.387435e+01',
    min_singular_value: '5.290540e-04',
    condition_number: '1.396348e+05',
    svd_rank: '4326',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
    image_files: 'viscoplastic1.png,viscoplastic1_svd.png,viscoplastic1_APlusAT_graph.gif,viscoplastic1_graph.gif,',
}
