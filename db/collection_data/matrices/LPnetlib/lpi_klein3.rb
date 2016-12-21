{
    matrix_id: '723',
    name: 'lpi_klein3',
    group: 'LPnetlib',
    description: 'Netlib LP problem klein3: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'E. Klotz',
    editor: 'J. Chinneck',
    date: '',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '994',
    num_cols: '1082',
    nonzeros: '13101',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '994',
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
klein3      995     88    12107                                             
                                                                            
',
    b_field: 'full 994-by-1
',
    aux_fields: 'c: full 1082-by-1
lo: full 1082-by-1
hi: full 1082-by-1
z0: full 1-by-1
',    norm: '1.142134e+04',
    min_singular_value: '1.000000e+00',
    condition_number: '1.142134e+04',
    svd_rank: '994',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
}
