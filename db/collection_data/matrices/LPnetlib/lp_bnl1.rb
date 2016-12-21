{
    matrix_id: '604',
    name: 'lp_bnl1',
    group: 'LPnetlib',
    description: 'Netlib LP problem bnl1: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'J. Tomlin',
    editor: 'D. Gay',
    date: '1989',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '643',
    num_cols: '1586',
    nonzeros: '5532',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '12',
    num_dmperm_blocks: '12',
    structural_full_rank: 'false',
    structural_rank: '642',
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
BNL1        644   1175     6129      42473        1.9776292856E+03        
                                                                          
From John Tomlin.                                                         
                                                                          
Bob Bixby reports that the CPLEX solver (running on a Sparc station)      
finds slightly different optimal values for some of the problems.         
On a MIPS processor, MINOS version 5.3 (with crash and scaling of         
December 1989) also finds different optimal values for some of the        
problems.  The following table shows the values that differ from those    
shown above.  (Whether CPLEX finds different values on the recently       
added problems remains to be seen.)                                       
                                                                          
Problem        CPLEX(Sparc)          MINOS(MIPS)                          
BNL1         1.9776295615E+03     1.9776293385E+03                        
                                                                          
On the problems supplied by John Tomlin, MINOS 5.3 reports that about     
10% to 57% of its steps are degenerate:                                   
     Name     Steps  Degen  Percent                                       
     BNL1      1614    169   10.47                                        
                                                                          
Added to Netlib on 30 Oct. 1989                                           
                                                                          
',
    b_field: 'full 643-by-1
',
    aux_fields: 'c: full 1586-by-1
lo: full 1586-by-1
hi: full 1586-by-1
z0: full 1-by-1
',    norm: '1.704839e+02',
    min_singular_value: '1.218850e-60',
    condition_number: '1.398727e+62',
    svd_rank: '642',
    sprank_minus_rank: '0',
    null_space_dimension: '1',
    full_numerical_rank: 'no',
    svd_gap: '41685234328012192195841710900150262276857064264293867847680.000000',
}
