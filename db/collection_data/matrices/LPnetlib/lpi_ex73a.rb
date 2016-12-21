{
    matrix_id: '713',
    name: 'lpi_ex73a',
    group: 'LPnetlib',
    description: 'Netlib LP problem ex73a: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'Z. You',
    editor: 'J. Chinneck',
    date: '1992',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '193',
    num_cols: '211',
    nonzeros: '457',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '193',
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
                                                                            
In the following, IIS stands for Irreducible Infeasible Subsystem, a set    
of constraints which is itself infeasible, but becomes feasible when any    
one member is removed.  Isolating an IIS from within the larger set of      
constraints defining the model is one analysis approach.                    
                                                                            
PROBLEM DESCRIPTION                                                         
-------------------                                                         
                                                                            
BOX1, EX72A, EX73A:  medium problems derived from research on using the     
infeasibility version of viability analysis [Chinneck 1992] to analyze      
petri net models.  All three problems are volatile, showing IISs of         
widely differing size depending on the algorithm applied.  Contributor:     
Zhengping You, Carleton University.                                         
                                                                            
Name       Rows   Cols   Nonzeros Bounds      Notes                         
ex73a       194    211      668   B            all cols are LO bounded      
                                                                            
REFERENCES                                                                  
----------                                                                  
                                                                            
J.W.  Chinneck (1992).  "Viability Analysis:  A Formulation Aid for All     
Classes of Network Models", Naval Research Logistics, Vol.  39, pp.         
531-543.                                                                    
                                                                            
Added to Netlib on Sept. 19, 1993                                           
                                                                            
',
    b_field: 'full 193-by-1
',
    aux_fields: 'c: full 211-by-1
lo: full 211-by-1
hi: full 211-by-1
z0: full 1-by-1
',    norm: '2.928749e+00',
    min_singular_value: '6.144511e-17',
    condition_number: '47664482691740872',
    svd_rank: '188',
    sprank_minus_rank: '5',
    null_space_dimension: '5',
    full_numerical_rank: 'no',
    svd_gap: '61023057762887.179688',
}
