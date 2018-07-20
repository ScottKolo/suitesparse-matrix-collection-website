{
    matrix_id: '2248',
    name: 'image_interp',
    group: 'Yoshiyasu',
    description: 'image editting problem, Y. Yoshiyasu, Keio Univ, Japan',
    author: 'Y Yoshiyasu',
    editor: 'T. Davis',
    date: '2009',
    kind: 'computer graphics/vision problem',
    problem_2D_or_3D: '1',
    num_rows: '240000',
    num_cols: '120000',
    nonzeros: '711683',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '7516',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '120000',
    pattern_symmetry: '0.000',
    numeric_symmetry: '0.000',
    rb_type: 'real',
    structure: 'rectangular',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'The problem is template-mesh deformation to match with silhouettes.  In this 
process, there are two kinds of linear systems to solve.  This system        
(Yoshiyasu/image_interp) is a smooth vector field construction from images,  
which is harmonic interpolation (minimizing laplacian: Lx=0) of intensity    
gradient field p.  This can be solved by normal equation and cholesky        
factorization, x=(A1\'*A1)/(A1\'*b1), where A1=[L;C] and                       
b1=[zeros(size(length(L),1);1);C*p]. C is a square diagonal matrix containing
weights.  This is for a 400x300 image, so Ix=reshape(x,400,300) must be done 
to get the vector field. After solving y direction for Iy, the result is     
visualized with quiver(Ix,Iy).   At each iteration the both C submatrix and  
the right-hand-side change but L remains unchanged.  [Note by T. Davis:      
since C is of high rank, update/downdate will not be effective, since it is  
meant for low-rank changes.]                                                 
',
    b_field: 'full 240000-by-2
',
    image_files: 'image_interp.png,image_interp_scc.png,image_interp_graph.gif,',
}
