{
    matrix_id: '701',
    name: 'lp_wood1p',
    group: 'LPnetlib',
    description: 'Netlib LP problem wood1p: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'J. Tomlin',
    editor: 'D. Gay',
    date: '1989',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '244',
    num_cols: '2595',
    nonzeros: '70216',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '244',
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
for "has ranges".                                                         
                                                                          
The optimal value is from MINOS version 5.3 (of Sept. 1988)               
running on a VAX with default options.                                    
                                                                          
                       PROBLEM SUMMARY TABLE                              
                                                                          
Name       Rows   Cols   Nonzeros    Bytes  BR      Optimal Value         
WOOD1P      245   2594    70216     328905        1.4429024116E+00        
                                                                          
From John Tomlin.                                                         
On the problems supplied by John Tomlin, MINOS 5.3 reports that about     
10% to 57% of its steps are degenerate:                                   
     Name     Steps  Degen  Percent                                       
     WOOD1P    1059    471   44.48                                        
                                                                          
Added to Netlib on  27 June 1989                                          
                                                                          
',
    b_field: 'full 244-by-1
',
    aux_fields: 'c: full 2595-by-1
lo: full 2595-by-1
hi: full 2595-by-1
z0: full 1-by-1
',    norm: '2.273116e+04',
    min_singular_value: '1.711938e-10',
    condition_number: '1.327803e+14',
    svd_rank: '243',
    sprank_minus_rank: '1',
    null_space_dimension: '1',
    full_numerical_rank: 'no',
    svd_gap: '8207923334.801447',
}
