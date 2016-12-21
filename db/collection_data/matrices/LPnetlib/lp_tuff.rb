{
    matrix_id: '699',
    name: 'lp_tuff',
    group: 'LPnetlib',
    description: 'Netlib LP problem tuff: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'J. Tomlin',
    editor: 'D. Gay',
    date: '1989',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '333',
    num_cols: '628',
    nonzeros: '4561',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '41',
    num_dmperm_blocks: '12',
    structural_full_rank: 'false',
    structural_rank: '302',
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
TUFF        334    587     4523      29439  B     2.9214776509E-01        
                                                                          
        BOUND-TYPE TABLE                                                  
TUFF       UP LO FX FR                                                    
                                                                          
Empty RHS section.                                                        
                                                                          
From John Tomlin.                                                         
On the problems supplied by John Tomlin, MINOS 5.3 reports that about     
10% to 57% of its steps are degenerate:                                   
     Name     Steps  Degen  Percent                                       
     TUFF       745    345   46.31                                        
                                                                          
Added to Netlib on  27 June 1989.                                         
',
    b_field: 'full 333-by-1
',
    aux_fields: 'c: full 628-by-1
lo: full 628-by-1
hi: full 628-by-1
z0: full 1-by-1
',    norm: '1.000288e+04',
    min_singular_value: '3.151872e-17',
    condition_number: '3.173631e+20',
    svd_rank: '302',
    sprank_minus_rank: '0',
    null_space_dimension: '31',
    full_numerical_rank: 'no',
    svd_gap: '80180764981.635132',
}
