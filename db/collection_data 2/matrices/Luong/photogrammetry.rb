{
    matrix_id: '1895',
    name: 'photogrammetry',
    group: 'Luong',
    description: 'Photogrammetry problem, B. Luong, FOGALE nanotech, France',
    author: 'B. Luong',
    editor: 'T. Davis',
    date: '2008',
    kind: 'computer graphics/vision problem',
    problem_2D_or_3D: '1',
    num_rows: '1388',
    num_cols: '390',
    nonzeros: '11816',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '390',
    pattern_symmetry: '0.000',
    numeric_symmetry: '0.000',
    rb_type: 'real',
    structure: 'rectangular',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'Photogrammetry problem from Bruno Luong, FOGALE nanotech, France.     
The problem of interest is:                                           
    [U S V]=svd(full(A),0);                                           
    s=diag(S);                                                        
The spectrum has two parts:                                           
- the singular values s(1) to s(end-7) are 1.7486e-004 to 3.4655e-007 
(ratio 504.57).                                                       
- the singular values s(end-6) to s(end) is smaller than 2.9614e-012  
(ratio > 5.9e7).                                                      
So in this problem, the following are considered:                     
K = span<U(:,end-6:end) > is the kernel of A, and                     
L = span<U(:,1:end-7) > = orthogonal(K) is isomorph to Im(A).         
',
    b_field: 'full 1388-by-1
',
    norm: '1.748613e-04',
    min_singular_value: '4.018035e-13',
    condition_number: '4.351911e+08',
    svd_rank: '390',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
    image_files: 'photogrammetry.png,photogrammetry2.png,photogrammetry2_svd.png,photogrammetry_svd.png,photogrammetry2_graph.gif,photogrammetry_graph.gif,',
}
