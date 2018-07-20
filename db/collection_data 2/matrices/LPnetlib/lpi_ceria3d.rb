{
    matrix_id: '708',
    name: 'lpi_ceria3d',
    group: 'LPnetlib',
    description: 'Netlib LP problem ceria3d: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'E. Klotz',
    editor: 'J. Chinneck',
    date: '',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '3576',
    num_cols: '4400',
    nonzeros: '21178',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '3576',
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
                                                                            
CERIA3D:  large problem which has some peculiarities.  There are no         
column bounds, and it is highly degenerate.  Contributor:  Ed Klotz,        
CPLEX Optimization Inc.                                                     
                                                                            
Name       Rows   Cols   Nonzeros Bounds      Notes                         
ceria3d    3577    824    17604   B FR         dense col (> 967)            
                                                                            
',
    b_field: 'full 3576-by-1
',
    aux_fields: 'c: full 4400-by-1
lo: full 4400-by-1
hi: full 4400-by-1
z0: full 1-by-1
',    norm: '4.773186e+01',
    min_singular_value: '1.000000e+00',
    condition_number: '4.773186e+01',
    svd_rank: '3576',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
    image_files: 'lpi_ceria3d.png,lpi_ceria3d_svd.png,lpi_ceria3d_graph.gif,',
}
