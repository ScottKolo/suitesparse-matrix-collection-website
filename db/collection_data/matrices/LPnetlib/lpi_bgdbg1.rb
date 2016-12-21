{
    matrix_id: '703',
    name: 'lpi_bgdbg1',
    group: 'LPnetlib',
    description: 'Netlib LP problem bgdbg1: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'L. Schrage',
    editor: 'J. Chinneck',
    date: '1993',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '348',
    num_cols: '629',
    nonzeros: '1662',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '5',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '348',
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
                                                                            
BGDBG1 is a medium problem that was originally an integer program for a     
plant operation model.  Infeasibility is original.                          
Contributor:  Linus Schrage, University of Chicago and LINDO Systems Inc.   
                                                                            
Name       Rows   Cols   Nonzeros Bounds      Notes                         
bgdbg1      349    407     1485   B                                         
                                                                            
Added to Netlib on Sept. 19, 1993                                           
                                                                            
',
    b_field: 'full 348-by-1
',
    aux_fields: 'c: full 629-by-1
lo: full 629-by-1
hi: full 629-by-1
z0: full 1-by-1
',    norm: '9.501488e+00',
    min_singular_value: '1.000000e+00',
    condition_number: '9.501488e+00',
    svd_rank: '348',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
}
