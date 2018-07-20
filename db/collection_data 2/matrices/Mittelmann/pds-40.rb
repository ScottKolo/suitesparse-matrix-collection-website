{
    matrix_id: '1647',
    name: 'pds-40',
    group: 'Mittelmann',
    description: 'Patient distribution (evacuation) system',
    author: 'W. Carolan, J. Hill, J. Kennington, S. Niemi, S. Wichmann',
    editor: 'H. Mittelmann',
    date: '1990',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '66844',
    num_cols: '217531',
    nonzeros: '466800',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '204',
    num_dmperm_blocks: '1302',
    structural_full_rank: 'false',
    structural_rank: '66641',
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
    b_field: 'full 66844-by-1
',
    aux_fields: 'c: full 217531-by-1
lo: full 217531-by-1
hi: full 217531-by-1
z0: full 1-by-1
',    image_files: 'pds-40.png,pds-40_dmperm.png,pds-40_scc.png,pds-40_graph.gif,',
}
