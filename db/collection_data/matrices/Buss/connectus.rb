{
    matrix_id: '2247',
    name: 'connectus',
    group: 'Buss',
    description: 'Website recommendation system, Steven Buss, Univ. Florida',
    author: 'S. Buss',
    editor: 'T. Davis',
    date: '2009',
    kind: 'undirected bipartite graph',
    problem_2D_or_3D: '0',
    num_rows: '512',
    num_cols: '394792',
    nonzeros: '1127525',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '256',
    num_dmperm_blocks: '8',
    structural_full_rank: 'false',
    structural_rank: '458',
    pattern_symmetry: '0.000',
    numeric_symmetry: '0.000',
    rb_type: 'binary',
    structure: 'rectangular',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'This is a matrix from Steven Buss, for a website recommendation system (to
be called www.connectious.com).  Each row of the matrix is a unique user. 
Eachc olumn of the matrix is a web page.  A(i,j)=1 if user i has tagged   
web page j as favorable, and a 0 represents no opinion.  The data was     
obtained from digg.com.  Note that the matrix A*A\' contains one           
connected component of size 342, and 170 singletons (nodes with no edges) 
This means that a group of 341 users share some interests, at least       
indirectly, and that there are 171 other users that share no interests    
at all with any other users (they have no pages in common with anyone).   
',
    norm: '4.833412e+02',
    min_singular_value: '0',
    condition_number: 'Inf',
    svd_rank: '456',
    sprank_minus_rank: '2',
    null_space_dimension: '56',
    full_numerical_rank: 'no',
    svd_gap: '10324893141.433666',
}
