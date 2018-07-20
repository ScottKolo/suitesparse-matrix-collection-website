{
    matrix_id: '659',
    name: 'lp_pilotnov',
    group: 'LPnetlib',
    description: 'Netlib LP problem pilotnov: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'Stanford',
    editor: 'R. Fourer',
    date: '1989',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '975',
    num_cols: '2446',
    nonzeros: '13331',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '3',
    structural_full_rank: 'true',
    structural_rank: '975',
    pattern_symmetry: '0.000',
    numeric_symmetry: '0.000',
    rb_type: 'real',
    structure: 'rectangular',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'A Netlib LP problem, in lp/data.  For more information                    
send email to netlib@ornl.gov with the message:                           
                                                                          
	 send index from lp                                                      
	 send readme from lp/data                                                
                                                                          
The following are relevant excerpts from lp/data/readme (by David M. Gay):
                                                                          
The column and nonzero counts in the PROBLEM SUMMARY TABLE below exclude  
slack and surplus columns and the right-hand side vector, but include     
the cost row.  We have omitted other free rows and all but the first      
right-hand side vector, as noted below.  The byte count is for the        
MPS compressed file; it includes a newline character at the end of each   
line.  These files start with a blank initial line intended to prevent    
mail programs from discarding any of the data.  The BR column indicates   
whether a problem has bounds or ranges:  B stands for "has bounds", R     
for "has ranges".  The BOUND-TYPE TABLE below shows the bound types       
present in those problems that have bounds.                               
                                                                          
The optimal value is from MINOS version 5.3 (of Sept. 1988)               
running on a VAX with default options.                                    
                                                                          
                       PROBLEM SUMMARY TABLE                              
                                                                          
Name       Rows   Cols   Nonzeros    Bytes  BR      Optimal Value         
PILOTNOV    976   2172    13129      89779  B    -4.4972761882E+03        
                                                                          
        BOUND-TYPE TABLE                                                  
PILOTNOV   UP    FX                                                       
                                                                          
Supplied by Bob Fourer.                                                   
When included in Netlib: Cost coefficients negated.                       
Prior to 29 April 1987, the lp/data/readme file gave the optimal value    
from maximizing rather than minimizing PILOTNOV.                          
                                                                          
Source for PILOT.JA, PILOT.WE, PILOT4, PILOTNOV: Systems Optimization     
Laboratory, Stanford University.                                          
                                                                          
',
    b_field: 'full 975-by-1
',
    aux_fields: 'c: full 2446-by-1
lo: full 2446-by-1
hi: full 2446-by-1
z0: full 1-by-1
',    norm: '1.150451e+07',
    min_singular_value: '3.186462e-03',
    condition_number: '3.610434e+09',
    svd_rank: '975',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
    image_files: 'lp_pilotnov.png,lp_pilotnov_dmperm.png,lp_pilotnov_svd.png,lp_pilotnov_graph.gif,',
}
