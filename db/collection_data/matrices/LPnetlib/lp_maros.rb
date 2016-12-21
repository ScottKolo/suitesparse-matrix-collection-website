{
    matrix_id: '642',
    name: 'lp_maros',
    group: 'LPnetlib',
    description: 'Netlib LP problem maros: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'I. Maros',
    editor: 'D. Gay',
    date: '1990',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '846',
    num_cols: '1966',
    nonzeros: '10137',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '3',
    num_dmperm_blocks: '3',
    structural_full_rank: 'true',
    structural_rank: '846',
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
MAROS       847   1443    10006      65906  B    -5.8063743701E+04        
                                                                          
From Istvan Maros.                                                        
When included in Netlib: extra free rows omitted;                         
cost coefficients negated.                                                
                                                                          
Concerning the problems he submitted, Istvan Maros says that MAROS is     
an industrial production/allocation model about which "the customer does  
not want to reveal the exact meaning".                                    
                                                                          
Added to Netlib on  15 June 1990                                          
',
    b_field: 'full 846-by-1
',
    aux_fields: 'c: full 1966-by-1
lo: full 1966-by-1
hi: full 1966-by-1
z0: full 1-by-1
',    norm: '5.827075e+04',
    min_singular_value: '2.995887e-02',
    condition_number: '1.945025e+06',
    svd_rank: '846',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
}
