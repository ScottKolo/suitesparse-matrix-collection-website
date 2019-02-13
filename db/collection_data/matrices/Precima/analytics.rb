{
    matrix_id: '2851',
    name: 'analytics',
    group: 'Precima',
    description: 'Precima/analytics: data analytics problem',
    author: 'C. Ugaz',
    editor: 'T. Davis',
    date: '2018',
    kind: 'data analytics problem',
    problem_2D_or_3D: '0',
    num_rows: '303813',
    num_cols: '303813',
    nonzeros: '2006126',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '41422',
    num_dmperm_blocks: '41422',
    structural_full_rank: 'true',
    structural_rank: '303813',
    pattern_symmetry: '1.000',
    numeric_symmetry: '1.000',
    rb_type: 'real',
    structure: 'symmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'Precima: data analytics problem                                        
                                                                       
Submitted by Carl Ugaz, Precima, Inc.  CUgaz@precima.com               
                                                                       
The matrix is nonsingular, ill-conditioned,, and symmetric indefinite. 
If factorized with KLU, best results are obtained if the permutation to
block triangular form (BTF) is not used, because it breaks the symmetry
of the pattern.                                                        
                                                                       
Ignoring the diagonal (which has some zero entries and some nonzero)   
the undirected graph of A divides into 41,422 connected components.    
Of those, 40,966 are single nodes, and 451 components have between     
4 and 90 nodes.  The remaining 5 components have 93738, 89686, 40319,  
15884, and 4289 nodes, respectively.                                   
',
    image_files: 'analytics.png,analytics_dmperm.png,analytics_scc.png,',
}
