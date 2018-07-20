{
    matrix_id: '726',
    name: 'lpi_pilot4i',
    group: 'LPnetlib',
    description: 'Netlib LP problem pilot4i: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'J. Stone',
    editor: 'J. Chinneck',
    date: '1993',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '410',
    num_cols: '1123',
    nonzeros: '5264',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '9',
    structural_full_rank: 'true',
    structural_rank: '410',
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
                                                                            
In the following, IIS stands for Irreducible Infeasible Subsystem, a set    
of constraints which is itself infeasible, but becomes feasible when any    
one member is removed.  Isolating an IIS from within the larger set of      
constraints defining the model is one analysis approach.                    
                                                                            
PROBLEM DESCRIPTION                                                         
-------------------                                                         
                                                                            
PILOT4I:  medium size problem generated by doctoring the original NETLIB    
PILOT4 model.  Contributor:  John Stone, Ketron Management Science.         
                                                                            
Name       Rows   Cols   Nonzeros Bounds      Notes                         
pilot4i     411   1000     5145   B FR FX                                   
                                                                            
Added to Netlib on Sept. 19, 1993                                           
                                                                            
',
    b_field: 'full 410-by-1
',
    aux_fields: 'c: full 1123-by-1
lo: full 1123-by-1
hi: full 1123-by-1
z0: full 1-by-1
',    norm: '5.935540e+04',
    min_singular_value: '1.405396e-01',
    condition_number: '4.223392e+05',
    svd_rank: '410',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
    image_files: 'lpi_pilot4i.png,lpi_pilot4i_dmperm.png,lpi_pilot4i_svd.png,lpi_pilot4i_graph.gif,',
}
