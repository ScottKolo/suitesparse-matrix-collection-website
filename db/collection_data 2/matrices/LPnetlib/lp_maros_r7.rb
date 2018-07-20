{
    matrix_id: '643',
    name: 'lp_maros_r7',
    group: 'LPnetlib',
    description: 'Netlib LP problem maros_r7: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'I. Maros',
    editor: 'D. Gay',
    date: '1994',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '3136',
    num_cols: '9408',
    nonzeros: '144848',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '3136',
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
MAROS-R7   3137   9408   151120    4812587        1.4971851665E+06        
                                                                          
From Istvan Maros.                                                        
                                                                          
Concerning the problems he submitted, Istvan Maros says that              
MAROS-R7 is "an interesting                                               
real-life LP problem which appeared hard to some solvers."  It "is an     
image restoration problem done via a goal programming approach.  It is    
structured, namely, its first section is a band matrix with the           
dominating number of nonzeros, while the second section is also a band    
matrix with bandwidth equals 2 and coefficients +1, -1.  The problem is   
a representative of a family of problems in which the number of rows and  
the bandwidth of the first section can vary.  This one is a medium size   
problem from the family.  MAROS-R7 became available in cooperation with   
Roni Levkovitz and Carison Tong."                                         
                                                                          
Added to Netlib on  17 Jan. 1994                                          
                                                                          
',
    b_field: 'full 3136-by-1
',
    aux_fields: 'c: full 9408-by-1
lo: full 9408-by-1
hi: full 9408-by-1
z0: full 1-by-1
',    norm: '3.403268e+00',
    min_singular_value: '1.464952e+00',
    condition_number: '2.323126e+00',
    svd_rank: '3136',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
    image_files: 'lp_maros_r7.png,lp_maros_r7_svd.png,lp_maros_r7_graph.gif,',
}
