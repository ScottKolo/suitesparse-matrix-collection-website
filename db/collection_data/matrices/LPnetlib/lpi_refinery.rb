{
    matrix_id: '729',
    name: 'lpi_refinery',
    group: 'LPnetlib',
    description: 'Netlib LP problem refinery: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'T. Baker',
    editor: 'J. Chinneck',
    date: '1993',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '323',
    num_cols: '464',
    nonzeros: '1626',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '2',
    num_dmperm_blocks: '13',
    structural_full_rank: 'true',
    structural_rank: '323',
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
                                                                            
CHEMCOM, QUAL, REFINERY, REACTOR, VOL1:  medium size problems derived       
from a petrochemical plant model.  Doctored to generate infeasibility       
due to inability to meet volume or quality restrictions.  With the          
exception of REACTOR, these are highly volatile problems, yielding IISs     
of varying sizes when different IIS isolation algorithms are applied.       
See Chinneck [1993] for further discussion.  Contributor:  Tom Baker,       
Chesapeake Decision Sciences.                                               
                                                                            
Name       Rows   Cols   Nonzeros Bounds      Notes                         
refinery    324    464     1694   B    FX                                   
                                                                            
REFERENCES                                                                  
----------                                                                  
                                                                            
J.W.  Chinneck (1993).  "Finding the Most Useful Subset of Constraints      
for Analysis in an Infeasible Linear Program", technical report             
SCE-93-07, Systems and Computer Engineering, Carleton University,           
Ottawa, Canada.                                                             
                                                                            
',
    b_field: 'full 323-by-1
',
    aux_fields: 'c: full 464-by-1
lo: full 464-by-1
hi: full 464-by-1
z0: full 1-by-1
',    norm: '1.011649e+04',
    min_singular_value: '1.996578e-01',
    condition_number: '5.066912e+04',
    svd_rank: '323',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
}
