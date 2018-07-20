{
    matrix_id: '1648',
    name: 'pds-50',
    group: 'Mittelmann',
    description: 'Patient distribution (evacuation) system',
    author: 'W. Carolan, J. Hill, J. Kennington, S. Niemi, S. Wichmann',
    editor: 'H. Mittelmann',
    date: '1990',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '83060',
    num_cols: '275814',
    nonzeros: '590833',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '224',
    num_dmperm_blocks: '1405',
    structural_full_rank: 'false',
    structural_rank: '82837',
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
    b_field: 'full 83060-by-1
',
    aux_fields: 'c: full 275814-by-1
lo: full 275814-by-1
hi: full 275814-by-1
z0: full 1-by-1
',    image_files: 'pds-50.png,pds-50_dmperm.png,pds-50_scc.png,pds-50_graph.gif,',
}
