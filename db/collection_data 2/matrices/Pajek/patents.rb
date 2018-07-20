{
    matrix_id: '1514',
    name: 'patents',
    group: 'Pajek',
    description: 'Pajek network: NBER US Patent Citations, 1963-1999, cites 1975-1999',
    author: 'B. Hall, A. Jaffe, M. Tratjenberg',
    editor: 'V. Batagelj',
    date: '2001',
    kind: 'directed graph',
    problem_2D_or_3D: '0',
    num_rows: '3774768',
    num_cols: '3774768',
    nonzeros: '14970767',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '3774768',
    pattern_symmetry: '0.000',
    numeric_symmetry: '0.000',
    rb_type: 'binary',
    structure: 'unsymmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: '------------------------------------------------------------------------------
Pajek network converted to sparse adjacency matrix for inclusion in UF sparse 
matrix collection, Tim Davis.  For Pajek datasets, See V. Batagelj & A. Mrvar,
http://vlado.fmf.uni-lj.si/pub/networks/data/.                                
------------------------------------------------------------------------------
Regarding conversion for UF sparse matrix collection: in the original data    
there are 14,973,817 edges (unweighted).  Of this, 3050 are duplicates        
This graph is binary; the duplicates have been removed.                       
Also, the original data has auxiliary data for all 6,009,554 US Patents in the
time period.  This patent network has only 3,774,768 patents, and the auxiliar
data (appyear, class, etc.) is matched here to the nodes of the graph.        
------------------------------------------------------------------------------
',
    aux_fields: 'appyear: full 3774768-by-1
cat: full 3774768-by-1
class: full 3774768-by-1
date: full 3774768-by-1
subcat: full 3774768-by-1
year: full 3774768-by-1
country: full 3774768-by-4
nodename: full 3774768-by-7
',    image_files: 'patents.png,patents_main.png,patents_main_scc.png,patents_scc.png,patents_APlusAT_graph.gif,patents_graph.gif,patents_main_APlusAT_graph.gif,patents_main_graph.gif,',
}
