{
    matrix_id: '709',
    name: 'lpi_chemcom',
    group: 'LPnetlib',
    description: 'Netlib LP problem chemcom: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'T. Baker',
    editor: 'J. Chinneck',
    date: '1993',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '288',
    num_cols: '744',
    nonzeros: '1590',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '288',
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
chemcom     289    720     2190   B                                         
                                                                            
REFERENCES                                                                  
----------                                                                  
                                                                            
J.W.  Chinneck (1993).  "Finding the Most Useful Subset of Constraints      
for Analysis in an Infeasible Linear Program", technical report             
SCE-93-07, Systems and Computer Engineering, Carleton University,           
Ottawa, Canada.                                                             
                                                                            
',
    b_field: 'full 288-by-1
',
    aux_fields: 'c: full 744-by-1
lo: full 744-by-1
hi: full 744-by-1
z0: full 1-by-1
',    norm: '3.767914e+00',
    min_singular_value: '5.447306e-01',
    condition_number: '6.917022e+00',
    svd_rank: '288',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
    image_files: 'lpi_chemcom.png,lpi_chemcom_svd.png,lpi_chemcom_graph.gif,',
}
