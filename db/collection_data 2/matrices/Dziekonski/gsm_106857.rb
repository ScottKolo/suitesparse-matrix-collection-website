{
    matrix_id: '2329',
    name: 'gsm_106857',
    group: 'Dziekonski',
    description: 'High-order vector finite element method in EM',
    author: 'A. Dziekonski, A. Lamecki, M. Mrozowski',
    editor: 'T. Davis',
    date: '2010',
    kind: 'electromagnetics problem',
    problem_2D_or_3D: '1',
    num_rows: '589446',
    num_cols: '589446',
    nonzeros: '21758924',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '589446',
    pattern_symmetry: '1.000',
    numeric_symmetry: '1.000',
    rb_type: 'real',
    structure: 'symmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'High order vector finite element method in electromagnetics     
                                                                
The matrices came from analysis of a 9-th order microwave       
combline filter with second order (LT\QN) vector finite elements
with different mesh quality. The matrices were used as an       
example in our paper [1].                                       
                                                                
gsm_106857 - real symmetric matrix (589446 x 589446) and        
    21758924 nonzero elements. First 98577 unknowns corresponds 
    to lowest level (CT\LN) base functions.                     
                                                                
All matrices are sparse and come with right-hand-sides.         
                                                                
[1] GPU Acceleration of Multilevel Solvers for Analysis of      
Microwave Components with Finite Element Method, A. Dziekonski, 
A. Lamecki, A., and M. Mrozowski, M., IEEE Microwave and        
Wireless Components Letters, vol 20, number 12,                 
Dec 2010.  http://dx.doi.org/10.1109/LMWC.2010.2089974          
',
    b_field: 'full 589446-by-1
',
    image_files: 'gsm_106857.png,gsm_106857_graph.gif,',
}
