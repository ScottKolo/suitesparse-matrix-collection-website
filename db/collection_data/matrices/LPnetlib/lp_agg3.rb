{
    matrix_id: '600',
    name: 'lp_agg3',
    group: 'LPnetlib',
    description: 'Netlib LP problem agg3: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'R. Leachman',
    editor: 'M. Resende',
    date: '1988',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '516',
    num_cols: '758',
    nonzeros: '4756',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '516',
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
AGG3        517    302     4531      32570        1.0312115935E+07        
                                                                          
Provided by Mauricio Resende.  Formulated by R. C. Leachman.              
Added to Netlib on 6 May 1988                                             
',
    b_field: 'full 516-by-1
',
    aux_fields: 'c: full 758-by-1
lo: full 758-by-1
hi: full 758-by-1
z0: full 1-by-1
',    norm: '4.240097e+02',
    min_singular_value: '7.189635e-01',
    condition_number: '5.897514e+02',
    svd_rank: '516',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
}
