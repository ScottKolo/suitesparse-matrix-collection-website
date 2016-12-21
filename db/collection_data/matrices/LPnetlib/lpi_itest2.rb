{
    matrix_id: '719',
    name: 'lpi_itest2',
    group: 'LPnetlib',
    description: 'Netlib LP problem itest2: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'J. Chinneck, E. Dravnieks',
    editor: 'J. Chinneck',
    date: '1991',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '9',
    num_cols: '13',
    nonzeros: '26',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '9',
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
                                                                            
In the following, IIS stands for Irreducible Infeasible Subsystem, a set    
of constraints which is itself infeasible, but becomes feasible when any    
one member is removed.  Isolating an IIS from within the larger set of      
constraints defining the model is one analysis approach.                    
                                                                            
PROBLEM DESCRIPTION                                                         
-------------------                                                         
                                                                            
ITEST6, ITEST2:  very small problems having numerous clustered IISs.        
These match problems 1 and 2, respectively, in Chinneck and Dravnieks       
[1991].  Contributors:  J.W.  Chinneck and E.W.  Dravnieks, Carleton        
University.                                                                 
                                                                            
Name       Rows   Cols   Nonzeros Bounds      Notes                         
itest2       10      4       17                                             
                                                                            
REFERENCES                                                                  
----------                                                                  
                                                                            
J.W.  Chinneck and E.W.  Dravnieks (1991).  "Locating Minimal Infeasible    
Constraint Sets in Linear Programs", ORSA Journal on Computing, Volume      
3, No. 2.                                                                   
                                                                            
',
    b_field: 'full 9-by-1
',
    aux_fields: 'c: full 13-by-1
lo: full 13-by-1
hi: full 13-by-1
z0: full 1-by-1
',    norm: '4.226048e+00',
    min_singular_value: '1',
    condition_number: '4.226048e+00',
    svd_rank: '9',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
}
