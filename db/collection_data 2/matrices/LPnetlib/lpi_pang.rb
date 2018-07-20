{
    matrix_id: '725',
    name: 'lpi_pang',
    group: 'LPnetlib',
    description: 'Netlib LP problem pang: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'R. Main',
    editor: 'J. Chinneck',
    date: '1993',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '361',
    num_cols: '741',
    nonzeros: '2933',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '6',
    num_dmperm_blocks: '5',
    structural_full_rank: 'true',
    structural_rank: '361',
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
pang        362    460     2666   B FR FX                                   
                                                                            
Added to Netlib on Sept. 19, 1993                                           
                                                                            
',
    b_field: 'full 361-by-1
',
    aux_fields: 'c: full 741-by-1
lo: full 741-by-1
hi: full 741-by-1
z0: full 1-by-1
',    norm: '9.999900e+04',
    min_singular_value: '3.424125e-01',
    condition_number: '2.920425e+05',
    svd_rank: '361',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
    image_files: 'lpi_pang.png,lpi_pang_dmperm.png,lpi_pang_scc.png,lpi_pang_svd.png,lpi_pang_graph.gif,',
}
