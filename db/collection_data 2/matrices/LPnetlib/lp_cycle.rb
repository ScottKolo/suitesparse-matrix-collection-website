{
    matrix_id: '613',
    name: 'lp_cycle',
    group: 'LPnetlib',
    description: 'Netlib LP problem cycle: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'J. Tomlin',
    editor: 'D. Gay',
    date: '1989',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '1903',
    num_cols: '3371',
    nonzeros: '21234',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '29',
    num_dmperm_blocks: '98',
    structural_full_rank: 'false',
    structural_rank: '1875',
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
CYCLE      1904   2857    21322     166648  B    -5.2263930249E+00        
                                                                          
        BOUND-TYPE TABLE                                                  
CYCLE      UP       FR                                                    
                                                                          
Empty RHS section.                                                        
                                                                          
From John Tomlin.                                                         
On the problems supplied by John Tomlin, MINOS 5.3 reports that about     
10% to 57% of its steps are degenerate:                                   
     Name     Steps  Degen  Percent                                       
     CYCLE     3156   1485   47.05                                        
                                                                          
Added to Netlib on 27 June 1989                                           
',
    b_field: 'full 1903-by-1
',
    aux_fields: 'c: full 3371-by-1
lo: full 3371-by-1
hi: full 3371-by-1
z0: full 1-by-1
',    norm: '2.018626e+03',
    min_singular_value: '2.241252e-17',
    condition_number: '9.006686e+19',
    svd_rank: '1875',
    sprank_minus_rank: '0',
    null_space_dimension: '28',
    full_numerical_rank: 'no',
    svd_gap: '3493280585.725450',
    image_files: 'lp_cycle.png,lp_cycle_dmperm.png,lp_cycle_scc.png,lp_cycle_svd.png,lp_cycle_graph.gif,',
}
