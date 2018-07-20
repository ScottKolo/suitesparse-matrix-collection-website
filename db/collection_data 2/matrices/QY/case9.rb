{
    matrix_id: '2214',
    name: 'case9',
    group: 'QY',
    description: 'Transient stabilty constrained interior pt. optimal power flow, J. Quanyuan',
    author: 'J. Quanyuan',
    editor: 'T. Davis',
    date: '2008',
    kind: 'power network problem sequence',
    problem_2D_or_3D: '0',
    num_rows: '14454',
    num_cols: '14454',
    nonzeros: '147972',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '2',
    num_dmperm_blocks: '2',
    structural_full_rank: 'true',
    structural_rank: '14454',
    pattern_symmetry: '1.000',
    numeric_symmetry: '1.000',
    rb_type: 'real',
    structure: 'symmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'Transient stabilty constrained interior pt. optimal power flow, J. Quanyuan
Two problem sets from Dr. Jiang Quanyuan from Zhejiang University,         
Hangzhou, China, March, 2008, used in an electrical power system.          
Each matrix A is solved sequentially with two right-hand-sides, b1 and     
b2, one at a time.  In the UF collection, the sequence of all first        
and second right-hand-sides is in Problem.aux.b2 and Problem.aux.b1.       
These matrices are symmetric indefinite (x=A\b uses MA57)                  
Note that the last matrices in the sequence are ill-conditioned.           
                                                                           
Transient Stability Constrained Interior Point Optimal Power Flow Program  
      Version 1.0 -- Developed by Dr. Jiang Quanyuan, March 2008           
                                                                           
case9.m - TSOPF converges after 12 iterations                              
 object    = 3.945939E+03                                                  
 max_equ   = 3.287326E-11                                                  
 low_inequ = None                                                          
 up_inequ  = None                                                          
',
    b_field: 'sparse 14454-by-1
',
    aux_fields: 'A: cell 12-by-1
b1: cell 12-by-1
b2: cell 12-by-1
',    norm: '5.306192e+03',
    min_singular_value: '6.374288e-09',
    condition_number: '8.324369e+11',
    svd_rank: '14444',
    sprank_minus_rank: '10',
    null_space_dimension: '10',
    full_numerical_rank: 'no',
    svd_gap: '1.225807',
    image_files: 'case9.png,case9_dmperm.png,case9_scc.png,case9_svd.png,case9_graph.gif,',
}
