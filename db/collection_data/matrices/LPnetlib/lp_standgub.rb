{
    matrix_id: '693',
    name: 'lp_standgub',
    group: 'LPnetlib',
    description: 'Netlib LP problem standgub: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'R. Fourer',
    editor: 'R. Fourer',
    date: '1989',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '361',
    num_cols: '1383',
    nonzeros: '3338',
    num_explicit_zeros: '1',
    num_strongly_connected_components: '4',
    num_dmperm_blocks: '2',
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
for "has ranges".  The BOUND-TYPE TABLE below shows the bound types       
present in those problems that have bounds.                               
                                                                          
The optimal value is from MINOS version 5.3 (of Sept. 1988)               
running on a VAX with default options.                                    
                                                                          
                       PROBLEM SUMMARY TABLE                              
                                                                          
Name       Rows   Cols   Nonzeros    Bytes  BR      Optimal Value         
STANDGUB    362   1184     3147      27836  B     (see NOTES)             
                                                                          
        BOUND-TYPE TABLE                                                  
STANDGUB   UP    FX                                                       
                                                                          
Supplied by Bob Fourer.                                                   
                                                                          
STANDGUB includes GUB markers; with these lines removed (lines in         
the expanded MPS file that contain primes, i.e., that mention the rows    
\'EGROUP\' and \'ENDX\'), STANDGUB becomes the same as problem STANDATA;      
MINOS does not understand the GUB markers, so we cannot report an         
optimal value from MINOS for STANDGUB.  STANDMPS amounts to STANDGUB      
with the GUB constraints as explicit constraints.                         
                                                                          
Source: consulting.                                                       
',
    b_field: 'full 361-by-1
',
    aux_fields: 'c: full 1383-by-1
lo: full 1383-by-1
hi: full 1383-by-1
z0: full 1-by-1
',    norm: '6.713151e+02',
    min_singular_value: '7.029980e-17',
    condition_number: '9.549317e+18',
    svd_rank: '360',
    sprank_minus_rank: '0',
    null_space_dimension: '1',
    full_numerical_rank: 'no',
    svd_gap: '4246865832809704.000000',
}
