{
    matrix_id: '1493',
    name: 'GD97_b',
    group: 'Pajek',
    description: 'Pajek network: Graph Drawing contest 1997',
    author: 'Graph Drawing Contest',
    editor: 'V. Batagelj',
    date: '1997',
    kind: 'undirected weighted graph',
    problem_2D_or_3D: '0',
    num_rows: '47',
    num_cols: '47',
    nonzeros: '264',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '2',
    pattern_symmetry: '1.000',
    numeric_symmetry: '1.000',
    rb_type: 'real',
    structure: 'symmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: '------------------------------------------------------------------------------
Pajek network converted to sparse adjacency matrix for inclusion in UF sparse 
matrix collection, Tim Davis.  For Pajek datasets, See V. Batagelj & A. Mrvar,
http://vlado.fmf.uni-lj.si/pub/networks/data/.                                
------------------------------------------------------------------------------
Regarding conversion for UF sparse matrix collection: in the original data    
every edge appears exactly twice, with the same edge weight.  It could be a   
multigraph, but it looks more like a graph.  The duplicate edges are removed  
in this version.  You can always add them back in yourself; just look at 2*A. 
------------------------------------------------------------------------------
The original problem had 3D xyz coordinates, but all values of z were equal   
to 0.5, and have been removed.  This graph has 2D coordinates.                
',
    aux_fields: 'nodename: full 47-by-30
coord: full 47-by-2
',    norm: '2.841064e+03',
    min_singular_value: '0',
    condition_number: 'Inf',
    svd_rank: '44',
    null_space_dimension: '3',
    full_numerical_rank: 'no',
    svd_gap: '8487073195.786499',
    image_files: 'GD97_b.png,GD97_b_gplot.png,GD97_b_scc.png,GD97_b_svd.png,GD97_b_graph.gif,',
}
