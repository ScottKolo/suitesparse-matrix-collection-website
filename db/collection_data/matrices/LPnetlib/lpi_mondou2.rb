{
    matrix_id: '724',
    name: 'lpi_mondou2',
    group: 'LPnetlib',
    description: 'Netlib LP problem mondou2: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'J. Mondou',
    editor: 'J. Chinneck',
    date: '',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '312',
    num_cols: '604',
    nonzeros: '1208',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '10',
    structural_full_rank: 'true',
    structural_rank: '312',
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
                                                                            
MONDOU2:  medium size problem generated as a subproblem to a larger         
facility sizing algorithm used by Hydro-Quebec.  The diagnosis of the       
infeasibility in the subproblem is useful to the larger algorithm.          
Contributor:  J.-F.  Mondou, Hydro-Quebec.                                  
                                                                            
Name       Rows   Cols   Nonzeros Bounds      Notes                         
mondou2     313    604     1623   B                                         
                                                                            
',
    b_field: 'full 312-by-1
',
    aux_fields: 'c: full 604-by-1
lo: full 604-by-1
hi: full 604-by-1
z0: full 1-by-1
',    norm: '4.488187e+00',
    min_singular_value: '9.571048e-16',
    condition_number: '4689336913786022',
    svd_rank: '311',
    sprank_minus_rank: '1',
    null_space_dimension: '1',
    full_numerical_rank: 'no',
    svd_gap: '112773859763050.859375',
}
