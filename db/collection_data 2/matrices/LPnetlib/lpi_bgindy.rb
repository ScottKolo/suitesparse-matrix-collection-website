{
    matrix_id: '705',
    name: 'lpi_bgindy',
    group: 'LPnetlib',
    description: 'Netlib LP problem bgindy: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'L. Schrage',
    editor: 'J. Chinneck',
    date: '1993',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '2671',
    num_cols: '10880',
    nonzeros: '66266',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '15',
    structural_full_rank: 'true',
    structural_rank: '2671',
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
                                                                            
BGINDY is a large problem that was originally an integer program of unknown 
origin.  Infeasibility is original.                                         
Contributor:  Linus Schrage, University of Chicago and LINDO Systems Inc.   
                                                                            
Name       Rows   Cols   Nonzeros Bounds      Notes                         
bgindy     2672  10116    75019                                             
                                                                            
Added to Netlib on Sept. 19, 1993                                           
                                                                            
',
    b_field: 'full 2671-by-1
',
    aux_fields: 'c: full 10880-by-1
lo: full 10880-by-1
hi: full 10880-by-1
z0: full 1-by-1
',    norm: '9.472659e+01',
    min_singular_value: '2.018189e-01',
    condition_number: '4.693644e+02',
    svd_rank: '2671',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
    image_files: 'lpi_bgindy.png,lpi_bgindy_dmperm.png,lpi_bgindy_svd.png,lpi_bgindy_graph.gif,',
}
