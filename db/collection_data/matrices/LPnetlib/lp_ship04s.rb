{
    matrix_id: '685',
    name: 'lp_ship04s',
    group: 'LPnetlib',
    description: 'Netlib LP problem ship04s: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'R. Fourer',
    editor: 'R. Fourer',
    date: '',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '402',
    num_cols: '1506',
    nonzeros: '4400',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '43',
    num_dmperm_blocks: '94',
    structural_full_rank: 'false',
    structural_rank: '360',
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
SHIP04S     403   1458     5810      41257        1.7987147004E+06        
                                                                          
Supplied by Bob Fourer.                                                   
When included in Netlib: Extra free rows omitted.                         
Source: consulting.                                                       
                                                                          
',
    b_field: 'full 402-by-1
',
    aux_fields: 'c: full 1506-by-1
lo: full 1506-by-1
hi: full 1506-by-1
z0: full 1-by-1
',    norm: '1.337074e+01',
    min_singular_value: '0',
    condition_number: 'Inf',
    svd_rank: '360',
    sprank_minus_rank: '0',
    null_space_dimension: '42',
    full_numerical_rank: 'no',
    svd_gap: '15136555364843.417969',
}
