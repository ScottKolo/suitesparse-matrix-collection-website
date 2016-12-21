{
    matrix_id: '715',
    name: 'lpi_galenet',
    group: 'LPnetlib',
    description: 'Netlib LP problem galenet: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'H. Greenberg',
    editor: 'J. Chinneck',
    date: '',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '8',
    num_cols: '14',
    nonzeros: '22',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '8',
    pattern_symmetry: '0.000',
    numeric_symmetry: '0.000',
    rb_type: 'integer',
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
                                                                            
GALENET:  a very small network problem.  Contributor:  H.J.  Greenberg,     
University of Colorado at Denver.                                           
                                                                            
Name       Rows   Cols   Nonzeros Bounds      Notes                         
galenet       9      8       16   B                                         
                                                                            
',
    b_field: 'full 8-by-1
',
    aux_fields: 'c: full 14-by-1
lo: full 14-by-1
hi: full 14-by-1
z0: full 1-by-1
',    norm: '2.427984e+00',
    min_singular_value: '8.411887e-01',
    condition_number: '2.886373e+00',
    svd_rank: '8',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
}
