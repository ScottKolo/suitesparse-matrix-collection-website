{
    matrix_id: '2136',
    name: 'case39',
    group: 'QY',
    description: 'Transient stabilty constrained interior pt. optimal power flow, J. Quanyuan',
    author: 'J. Quanyuan',
    editor: 'T. Davis',
    date: '2008',
    kind: 'power network problem sequence',
    problem_2D_or_3D: '0',
    num_rows: '40216',
    num_cols: '40216',
    nonzeros: '1042160',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '2',
    num_dmperm_blocks: '2',
    structural_full_rank: 'true',
    structural_rank: '40216',
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
                                                                           
case39.m - TSOPF converges after 13 iterations                             
 object    = 2.696268E+04                                                  
 max_equ   = 5.684342E-14                                                  
 low_inequ = -1.110223E-16                                                 
 up_inequ  = None                                                          
',
    b_field: 'sparse 40216-by-1
',
    aux_fields: 'A: cell 13-by-1
b1: cell 13-by-1
b2: cell 13-by-1
',}
