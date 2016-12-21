{
    matrix_id: '706',
    name: 'lpi_bgprtr',
    group: 'LPnetlib',
    description: 'Netlib LP problem bgprtr: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'L. Schrage',
    editor: 'J. Chinneck',
    date: '1993',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '20',
    num_cols: '40',
    nonzeros: '70',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '20',
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
                                                                            
BGPRTR is a small model for a multiproduct, multiperiod production          
scheduling model.  One right hand side has been altered to make it          
infeasible.                                                                 
Contributor:  Linus Schrage, University of Chicago and LINDO Systems Inc.   
                                                                            
Name       Rows   Cols   Nonzeros Bounds      Notes                         
bgprtr       21     34       90                                             
                                                                            
Added to Netlib on Sept. 19, 1993                                           
                                                                            
',
    b_field: 'full 20-by-1
',
    aux_fields: 'c: full 40-by-1
lo: full 40-by-1
hi: full 40-by-1
z0: full 1-by-1
',    norm: '9.045101e+02',
    min_singular_value: '7.501339e-01',
    condition_number: '1.205798e+03',
    svd_rank: '20',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
}
