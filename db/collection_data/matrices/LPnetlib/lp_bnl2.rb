{
    matrix_id: '605',
    name: 'lp_bnl2',
    group: 'LPnetlib',
    description: 'Netlib LP problem bnl2: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'J. Tomlin',
    editor: 'D. Gay',
    date: '1989',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '2324',
    num_cols: '4486',
    nonzeros: '14996',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '104',
    num_dmperm_blocks: '60',
    structural_full_rank: 'true',
    structural_rank: '2324',
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
BNL2       2325   3489    16124     127145        1.8112365404E+03        
                                                                          
From John Tomlin.                                                         
                                                                          
On the problems supplied by John Tomlin, MINOS 5.3 reports that about     
10% to 57% of its steps are degenerate:                                   
     Name     Steps  Degen  Percent                                       
     BNL2      4914    906   18.44                                        
                                                                          
Added to Netlib on 30 Oct. 1989                                           
',
    b_field: 'full 2324-by-1
',
    aux_fields: 'c: full 4486-by-1
lo: full 4486-by-1
hi: full 4486-by-1
z0: full 1-by-1
',    norm: '2.116965e+02',
    min_singular_value: '2.726183e-02',
    condition_number: '7.765307e+03',
    svd_rank: '2324',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
}
