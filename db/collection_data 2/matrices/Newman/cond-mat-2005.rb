{
    matrix_id: '2395',
    name: 'cond-mat-2005',
    group: 'Newman',
    description: 'collaboration network, preprints in condensed matter archive, www.arxiv.org',
    author: 'M. Newman',
    editor: 'M. Newman',
    date: '2005',
    kind: 'undirected weighted graph',
    problem_2D_or_3D: '0',
    num_rows: '40421',
    num_cols: '40421',
    nonzeros: '351382',
    num_explicit_zeros: '4',
    num_strongly_connected_components: '1798',
    pattern_symmetry: '1.000',
    numeric_symmetry: '1.000',
    rb_type: 'real',
    structure: 'symmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'Network collection from M. Newman                                          
http://www-personal.umich.edu/~mejn/netdata/                               
                                                                           
The graph cond-mat-2005 contains an updated version of cond-mat, the       
collaboration network of scientists posting preprints on the condensed     
matter archive at www.arxiv.org.  This version is based on preprints posted
to the archive between January 1, 1995 and March 31, 2005.  The network is 
weighted, with weights assigned as described in M. E. J. Newman,           
Phys. Rev. E 64, 016132 (2001).                                            
                                                                           
These data can be cited (as an updated version of)                         
                                                                           
  M. E. J. Newman, The structure of scientific collaboration networks,     
  Proc. Natl. Acad. Sci. USA 98, 404-409 (2001).                           
                                                                           
Note by Tim Davis:  in the original cond-mat-2005.gml graph from M. Newman 
2 of the edges had an edge weight of "inf".  This value cannot be stored   
in the UF Collection, so they have been replaced with zero.  See           
Problem.Zeros in the MATLAB version, or the explicit zero values in the MM 
and RB file formats.                                                       
',
    aux_fields: 'nodename: full 40421-by-25
',    image_files: 'cond-mat-2005.png,cond-mat-2005_scc.png,cond-mat-2005_graph.gif,',
}
