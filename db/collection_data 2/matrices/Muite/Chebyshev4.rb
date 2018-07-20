{
    matrix_id: '1867',
    name: 'Chebyshev4',
    group: 'Muite',
    description: 'Integration matrix, Chebyshev method, 4th order semilinear initial BVP',
    author: 'B. Muite',
    editor: 'T. Davis',
    date: '2007',
    kind: 'structural problem',
    problem_2D_or_3D: '1',
    num_rows: '68121',
    num_cols: '68121',
    nonzeros: '5377761',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '68121',
    pattern_symmetry: '0.302',
    numeric_symmetry: '0.000',
    rb_type: 'real',
    structure: 'unsymmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'Chebyshev integration matrix from Benson Muite, Oxford.  Details of the  
matrices can be found in a preprint at http://www.maths.ox.ac.uk/~muite  
entitled "A comparison of Chebyshev methods for solving fourth-order     
semilinear initial boundary value problems," June 2007.   These matrices 
are very ill-conditioned, partly because of the dense rows which are hard
to scale when coupled with the rest of the matrix.                       
',
    image_files: 'Chebyshev4.png,Chebyshev4_APlusAT_graph.gif,Chebyshev4_graph.gif,',
}
