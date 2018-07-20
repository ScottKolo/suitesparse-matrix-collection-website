{
    matrix_id: '1513',
    name: 'patents_main',
    group: 'Pajek',
    description: 'Pajek network: main NBER US Patent Citations, 1963-1999, cites 1975-1999',
    author: 'B. Hall, A. Jaffe, M. Tratjenberg',
    editor: 'V. Batagelj',
    date: '2001',
    kind: 'directed weighted graph',
    problem_2D_or_3D: '0',
    num_rows: '240547',
    num_cols: '240547',
    nonzeros: '560943',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '240547',
    pattern_symmetry: '0.000',
    numeric_symmetry: '0.000',
    rb_type: 'real',
    structure: 'unsymmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: '------------------------------------------------------------------------------
Pajek network converted to sparse adjacency matrix for inclusion in UF sparse 
matrix collection, Tim Davis.  For Pajek datasets, See V. Batagelj & A. Mrvar,
http://vlado.fmf.uni-lj.si/pub/networks/data/.                                
------------------------------------------------------------------------------
Regarding conversion for UF sparse matrix collection: in the original data    
there are 561,060 weighted edges.  Of this, 117 are duplicates, with identical
edge weights.  These extraneous edges have been removed in this version.      
Also, the original data has auxiliary data for all 6,009,554 US Patents in the
time period.  This patent network has only 240,547 patents, and the auxiliary 
data (appyear, class, etc.) is matched here to the nodes of the graph.        
------------------------------------------------------------------------------
',
    aux_fields: 'appyear: full 240547-by-1
cat: full 240547-by-1
class: full 240547-by-1
date: full 240547-by-1
subcat: full 240547-by-1
year: full 240547-by-1
country: full 240547-by-4
nodename: full 240547-by-7
',    image_files: 'patents_main.png,patents_main_scc.png,patents_main_APlusAT_graph.gif,patents_main_graph.gif,',
}
