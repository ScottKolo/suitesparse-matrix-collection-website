{
    matrix_id: '717',
    name: 'lpi_gran',
    group: 'LPnetlib',
    description: 'Netlib LP problem gran: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'R. Main',
    editor: 'J. Chinneck',
    date: '1993',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '2658',
    num_cols: '2525',
    nonzeros: '20111',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1243',
    num_dmperm_blocks: '1267',
    structural_full_rank: 'false',
    structural_rank: '2311',
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
gran       2569   2520    20151   B    FX                                   
                                                                            
Added to Netlib on Sept. 19, 1993                                           
                                                                            
',
    b_field: 'full 2658-by-1
',
    aux_fields: 'c: full 2525-by-1
lo: full 2525-by-1
hi: full 2525-by-1
z0: full 1-by-1
',    norm: '2.079021e+03',
    min_singular_value: '1.791193e-17',
    condition_number: '1.160690e+20',
    svd_rank: '1938',
    sprank_minus_rank: '373',
    null_space_dimension: '587',
    full_numerical_rank: 'no',
    svd_gap: '131.675495',
}
