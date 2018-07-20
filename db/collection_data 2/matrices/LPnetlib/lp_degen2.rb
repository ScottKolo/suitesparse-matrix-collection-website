{
    matrix_id: '617',
    name: 'lp_degen2',
    group: 'LPnetlib',
    description: 'Netlib LP problem degen2: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'J. Tomlin',
    editor: 'D. Gay',
    date: '1989',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '444',
    num_cols: '757',
    nonzeros: '4201',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '444',
    pattern_symmetry: '0.000',
    numeric_symmetry: '0.000',
    rb_type: 'integer',
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
DEGEN2      445    534     4449      24657       -1.4351780000E+03        
                                                                          
From John Tomlin.                                                         
On the problems supplied by John Tomlin, MINOS 5.3 reports that about     
10% to 57% of its steps are degenerate:                                   
     Name     Steps  Degen  Percent                                       
     DEGEN2    1075    610   56.74                                        
                                                                          
When included in Netlib: Cost coefficients negated.                       
                                                                          
Added to Netlib on  30 Oct. 1989                                          
',
    b_field: 'full 444-by-1
',
    aux_fields: 'c: full 757-by-1
lo: full 757-by-1
hi: full 757-by-1
z0: full 1-by-1
',    norm: '1.767216e+01',
    min_singular_value: '4.009979e-15',
    condition_number: '4407045409524364',
    svd_rank: '442',
    sprank_minus_rank: '2',
    null_space_dimension: '2',
    full_numerical_rank: 'no',
    svd_gap: '32338934827059.644531',
    image_files: 'lp_degen2.png,lp_degen2_svd.png,lp_degen2_graph.gif,',
}
