{
    matrix_id: '721',
    name: 'lpi_klein1',
    group: 'LPnetlib',
    description: 'Netlib LP problem klein1: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'E. Klotz',
    editor: 'J. Chinneck',
    date: '',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '54',
    num_cols: '108',
    nonzeros: '750',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '54',
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
                                                                            
KLEIN1, KLEIN2, KLEIN3:  related small and medium size problems.            
Contributor:  Ed Klotz, CPLEX Optimization Inc.                             
                                                                            
Name       Rows   Cols   Nonzeros Bounds      Notes                         
klein1       55     54      696                                             
                                                                            
',
    b_field: 'full 54-by-1
',
    aux_fields: 'c: full 108-by-1
lo: full 108-by-1
hi: full 108-by-1
z0: full 1-by-1
',    norm: '5.478892e+03',
    min_singular_value: '1.000000e+00',
    condition_number: '5.478892e+03',
    svd_rank: '54',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
}
