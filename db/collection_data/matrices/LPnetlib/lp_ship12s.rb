{
    matrix_id: '689',
    name: 'lp_ship12s',
    group: 'LPnetlib',
    description: 'Netlib LP problem ship12s: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'R. Fourer',
    editor: 'R. Fourer',
    date: '',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '1151',
    num_cols: '2869',
    nonzeros: '8284',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '110',
    num_dmperm_blocks: '578',
    structural_full_rank: 'false',
    structural_rank: '1042',
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
SHIP12S    1152   2763    10941      82527        1.4892361344E+06        
                                                                          
Supplied by Bob Fourer.                                                   
When included in Netlib: Extra free rows omitted.                         
Source: consulting.                                                       
                                                                          
',
    b_field: 'full 1151-by-1
',
    aux_fields: 'c: full 2869-by-1
lo: full 2869-by-1
hi: full 2869-by-1
z0: full 1-by-1
',    norm: '9.562859e+00',
    min_singular_value: '0',
    condition_number: 'Inf',
    svd_rank: '1042',
    sprank_minus_rank: '0',
    null_space_dimension: '109',
    full_numerical_rank: 'no',
    svd_gap: '7919125579007.588867',
}
