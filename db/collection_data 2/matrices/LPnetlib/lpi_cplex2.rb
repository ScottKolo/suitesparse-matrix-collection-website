{
    matrix_id: '711',
    name: 'lpi_cplex2',
    group: 'LPnetlib',
    description: 'Netlib LP problem cplex2: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'E. Klotz',
    editor: 'J. Chinneck',
    date: '1993',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '224',
    num_cols: '378',
    nonzeros: '1215',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '224',
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
cplex2      225    221     1059   B                                         
                                                                            
REFERENCES                                                                  
----------                                                                  
                                                                            
J.W.  Chinneck (1993).  "Finding the Most Useful Subset of Constraints      
for Analysis in an Infeasible Linear Program", technical report             
SCE-93-07, Systems and Computer Engineering, Carleton University,           
Ottawa, Canada.                                                             
                                                                            
',
    b_field: 'full 224-by-1
',
    aux_fields: 'c: full 378-by-1
lo: full 378-by-1
hi: full 378-by-1
z0: full 1-by-1
',    norm: '1.555518e+01',
    min_singular_value: '7.696416e-17',
    condition_number: '202109393987133984',
    svd_rank: '223',
    sprank_minus_rank: '1',
    null_space_dimension: '1',
    full_numerical_rank: 'no',
    svd_gap: '437092751858776.500000',
    image_files: 'lpi_cplex2.png,lpi_cplex2_svd.png,lpi_cplex2_graph.gif,',
}
