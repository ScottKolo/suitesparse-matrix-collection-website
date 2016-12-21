{
    matrix_id: '664',
    name: 'lp_sc105',
    group: 'LPnetlib',
    description: 'Netlib LP problem sc105: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'N. Gould',
    editor: 'D. Gay',
    date: '1989',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '105',
    num_cols: '163',
    nonzeros: '340',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '2',
    num_dmperm_blocks: '2',
    structural_full_rank: 'true',
    structural_rank: '105',
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
SC105       106    103      281       3307       -5.2202061212E+01        
                                                                          
Nick Gould supplied SC105 from the Harwell collection of LP test problems.
When included in Netlib: Cost coefficients negated.                       
                                                                          
Added to Netlib on  6 April 1989                                          
',
    b_field: 'full 105-by-1
',
    aux_fields: 'c: full 163-by-1
lo: full 163-by-1
hi: full 163-by-1
z0: full 1-by-1
',    norm: '4.099556e+00',
    min_singular_value: '1.113863e-01',
    condition_number: '3.680484e+01',
    svd_rank: '105',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
}
