{
    matrix_id: '633',
    name: 'lp_grow22',
    group: 'LPnetlib',
    description: 'Netlib LP problem grow22: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'R. Fourer',
    editor: 'R. Fourer',
    date: '1983',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '440',
    num_cols: '946',
    nonzeros: '8252',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '440',
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
GROW22      441    946     8318      50789  B    -1.6083433648E+08        
                                                                          
        BOUND-TYPE TABLE                                                  
GROW22     UP                                                             
                                                                          
From Bob Fourer.                                                          
When included in Netlib: Extra bound sets omitted; explicit zeros         
omitted; cost coefficients negated.                                       
                                                                          
Source:   GROW15, GROW22, GROW7: R. Fourer, "Solving Staircase Linear     
Programs by the Simplex Method, 2: Pricing", Math. Prog. 25 (1983),       
pp. 251-292.                                                              
                                                                          
',
    b_field: 'full 440-by-1
',
    aux_fields: 'c: full 946-by-1
lo: full 946-by-1
hi: full 946-by-1
z0: full 1-by-1
',    norm: '2.514273e+00',
    min_singular_value: '4.374044e-01',
    condition_number: '5.748166e+00',
    svd_rank: '440',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
    image_files: 'lp_grow22.png,lp_grow22_svd.png,lp_grow22_graph.gif,',
}
