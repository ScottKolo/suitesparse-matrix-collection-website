{
    matrix_id: '722',
    name: 'lpi_klein2',
    group: 'LPnetlib',
    description: 'Netlib LP problem klein2: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'E. Klotz',
    editor: 'J. Chinneck',
    date: '',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '477',
    num_cols: '531',
    nonzeros: '5062',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '477',
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
klein2      478     54     4585                                             
                                                                            
',
    b_field: 'full 477-by-1
',
    aux_fields: 'c: full 531-by-1
lo: full 531-by-1
hi: full 531-by-1
z0: full 1-by-1
',    norm: '6.075492e+03',
    min_singular_value: '1.000000e+00',
    condition_number: '6.075492e+03',
    svd_rank: '477',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
    image_files: 'lpi_klein2.png,lpi_klein2_svd.png,lpi_klein2_graph.gif,',
}
