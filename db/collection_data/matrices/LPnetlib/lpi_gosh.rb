{
    matrix_id: '716',
    name: 'lpi_gosh',
    group: 'LPnetlib',
    description: 'Netlib LP problem gosh: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'R. Main',
    editor: 'J. Chinneck',
    date: '1993',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '3792',
    num_cols: '13455',
    nonzeros: '99953',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '105',
    num_dmperm_blocks: '130',
    structural_full_rank: 'false',
    structural_rank: '3790',
    pattern_symmetry: '0.000',
    numeric_symmetry: '0.000',
    rb_type: 'real',
    structure: 'rectangular',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'An infeasible Netlib LP problem, in lp/infeas.  For more information        
send email to netlib@ornl.gov with the message:                             
                                                                            
	send index from lp                                                         
	send readme from lp/infeas                                                 
                                                                            
The lp/infeas directory contains infeasible linear programming test problems
collected by John W. Chinneck, Carleton Univ, Ontario Canada.  The following
are relevant excerpts from lp/infeas/readme (by John W. Chinneck):          
                                                                            
PROBLEM DESCRIPTION                                                         
-------------------                                                         
                                                                            
GOSH, GRAN, PANG:  these very large, large, and medium size models,         
respectively, problems arose from British Petroleum operations models.      
Contributor:  Roger Main, BP Oil.                                           
                                                                            
Name       Rows   Cols   Nonzeros Bounds      Notes                         
gosh       3793  10733    97257   B FR         242 free cols                
                                                                            
Added to Netlib on Sept. 19, 1993                                           
                                                                            
',
    b_field: 'full 3792-by-1
',
    aux_fields: 'c: full 13455-by-1
lo: full 13455-by-1
hi: full 13455-by-1
z0: full 1-by-1
',    norm: '3.236720e+02',
    min_singular_value: '6.285286e-16',
    condition_number: '514967757334246272',
    svd_rank: '3790',
    sprank_minus_rank: '0',
    null_space_dimension: '2',
    full_numerical_rank: 'no',
    svd_gap: '553498590920.152100',
}
