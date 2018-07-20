{
    matrix_id: '731',
    name: 'lpi_woodinfe',
    group: 'LPnetlib',
    description: 'Netlib LP problem woodinfe: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'H. Greenberg',
    editor: 'J. Chinneck',
    date: '1989',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '35',
    num_cols: '89',
    nonzeros: '140',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '6',
    num_dmperm_blocks: '3',
    structural_full_rank: 'true',
    structural_rank: '35',
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
                                                                            
FOREST6, WOODINFE:  very small problems derived from network-based          
forestry models.  The IIS in FOREST6 includes most of the rows.             
WOODINFE is the example problem discussed in detail in Greenberg [1993],    
and has a very small IIS.  Contributor:  H.J.  Greenberg, University of     
Colorado at Denver.                                                         
                                                                            
Name       Rows   Cols   Nonzeros Bounds      Notes                         
woodinfe     36     89      209   B                                         
                                                                            
                                                                            
REFERENCES                                                                  
----------                                                                  
                                                                            
H.J.  Greenberg (1993).  "A Computer-Assisted Analysis System for           
Mathematical Programming Models and Solutions:  A User\'s Guide for          
ANALYZE", Kluwer Academic Publishers, Boston.                               
                                                                            
',
    b_field: 'full 35-by-1
',
    aux_fields: 'c: full 89-by-1
lo: full 89-by-1
hi: full 89-by-1
z0: full 1-by-1
',    norm: '2.947116e+00',
    min_singular_value: '1.000000e+00',
    condition_number: '2.947116e+00',
    svd_rank: '35',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
    image_files: 'lpi_woodinfe.png,lpi_woodinfe_dmperm.png,lpi_woodinfe_scc.png,lpi_woodinfe_svd.png,lpi_woodinfe_graph.gif,',
}
