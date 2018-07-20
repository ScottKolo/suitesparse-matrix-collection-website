{
    matrix_id: '1859',
    name: 'majorbasis',
    group: 'QLi',
    description: 'MCP; mixed complementarity optimization problem; similar to QLi/crashbasis',
    author: 'Q. Li and M. Ferris',
    editor: 'T. Davis',
    date: '2007',
    kind: 'optimization problem',
    problem_2D_or_3D: '0',
    num_rows: '160000',
    num_cols: '160000',
    nonzeros: '1750416',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '160000',
    pattern_symmetry: '0.550',
    numeric_symmetry: '0.000',
    rb_type: 'real',
    structure: 'unsymmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'QLi/crashbasis and QLi/majorbasis have the same nonzero pattern.  However,
UMFPACK 5.1 is much slower for majorbasis than for crashbasis, because of 
the extensive number of denormal floating-point values that occur in      
majorbasis (they do not occur in crashbasis).                             
',
    image_files: 'majorbasis.png,majorbasis_APlusAT_graph.gif,majorbasis_graph.gif,',
}
