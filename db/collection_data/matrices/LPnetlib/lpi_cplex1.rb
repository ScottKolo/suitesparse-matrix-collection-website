{
    matrix_id: '710',
    name: 'lpi_cplex1',
    group: 'LPnetlib',
    description: 'Netlib LP problem cplex1: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'E. Klotz',
    editor: 'J. Chinneck',
    date: '1993',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '3005',
    num_cols: '5224',
    nonzeros: '10947',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '3005',
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
                                                                            
CPLEX1, CPLEX2:  medium and large problems respectively.  CPLEX1            
referred to as CPLEX problem in Chinneck [1993], and is remarkably          
non-volatile, showing a single small IIS regardless of the IIS algorithm    
applied.  CPLEX2 is an almost-feasible problem. Contributor:  Ed Klotz,     
CPLEX Optimization Inc.                                                     
                                                                            
Name       Rows   Cols   Nonzeros Bounds      Notes                         
cplex1     3006   3221    10664   B            dense col (> 1500)           
                                                                            
REFERENCES                                                                  
----------                                                                  
                                                                            
J.W.  Chinneck (1993).  "Finding the Most Useful Subset of Constraints      
for Analysis in an Infeasible Linear Program", technical report             
SCE-93-07, Systems and Computer Engineering, Carleton University,           
Ottawa, Canada.                                                             
                                                                            
',
    b_field: 'full 3005-by-1
',
    aux_fields: 'c: full 5224-by-1
lo: full 5224-by-1
hi: full 5224-by-1
z0: full 1-by-1
',    norm: '2.000065e+02',
    min_singular_value: '6.386641e-02',
    condition_number: '3.131639e+03',
    svd_rank: '3005',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
}
