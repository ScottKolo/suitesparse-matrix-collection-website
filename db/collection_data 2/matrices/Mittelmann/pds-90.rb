{
    matrix_id: '1652',
    name: 'pds-90',
    group: 'Mittelmann',
    description: 'Patient distribution (evacuation) system',
    author: 'W. Carolan, J. Hill, J. Kennington, S. Niemi, S. Wichmann',
    editor: 'H. Mittelmann',
    date: '1990',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '142823',
    num_cols: '475448',
    nonzeros: '1014136',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '228',
    num_dmperm_blocks: '1546',
    structural_full_rank: 'false',
    structural_rank: '142596',
    pattern_symmetry: '0.000',
    numeric_symmetry: '0.000',
    rb_type: 'integer',
    structure: 'rectangular',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'Hans Mittelmann test set, http://plato.asu.edu/ftp/lptestset       
minimize c\'*x, subject to A*x=b and lo <= x <= hi                  
                                                                   
PDS:  Patient distribution (evacuation) system. see                
W. Carolan, J. Hill, J. Kennington, S. Niemi, and S. Wichmann, "An 
Empirical Evaluation of the KORBX Algorithms for Military Airlift,"
Applications, Operations Research, 38, (1990), 240-248.            
',
    b_field: 'full 142823-by-1
',
    aux_fields: 'c: full 475448-by-1
lo: full 475448-by-1
hi: full 475448-by-1
z0: full 1-by-1
',    image_files: 'pds-90.png,pds-90_dmperm.png,pds-90_scc.png,pds-90_graph.gif,',
}
