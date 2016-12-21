{
    matrix_id: '704',
    name: 'lpi_bgetam',
    group: 'LPnetlib',
    description: 'Netlib LP problem bgetam: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'L. Schrage',
    editor: 'J. Chinneck',
    date: '1993',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '400',
    num_cols: '816',
    nonzeros: '2537',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '2',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '400',
    pattern_symmetry: '0.000',
    numeric_symmetry: '0.000',
    rb_type: 'real',
    structure: 'rectangular',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'An infeasible Netlib LP problem, in lp/infeas.  For more information        
send email to netlib@ornl.gov with the message:                             
                                                                            
	send index from lp                                                         
	send readme from lp/data                                                   
	send readme from lp/infeas                                                 
                                                                            
The lp/infeas directory contains infeasible linear programming test problems
collected by John W. Chinneck, Carleton Univ, Ontario Canada.  The following
are relevant excerpts from lp/infeas/readme (by John W. Chinneck):          
                                                                            
PROBLEM DESCRIPTION                                                         
-------------------                                                         
                                                                            
BGETAM is a medium model that is a version of the ETAMACRO test problem     
(in lp/data) in which one right hand side has been altered to make it       
infeasible.                                                                 
Contributor:  Linus Schrage, University of Chicago and LINDO Systems Inc.   
                                                                            
Name       Rows   Cols   Nonzeros Bounds      Notes                         
bgetam      401    688     2489   B                                         
                                                                            
Added to Netlib on Sept. 19, 1993                                           
                                                                            
',
    b_field: 'full 400-by-1
',
    aux_fields: 'c: full 816-by-1
lo: full 816-by-1
hi: full 816-by-1
z0: full 1-by-1
',    norm: '2.258292e+03',
    min_singular_value: '4.297841e-02',
    condition_number: '5.254480e+04',
    svd_rank: '400',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
}
