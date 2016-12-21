{
    matrix_id: '618',
    name: 'lp_degen3',
    group: 'LPnetlib',
    description: 'Netlib LP problem degen3: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'J. Tomlin',
    editor: 'D. Gay',
    date: '1989',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '1503',
    num_cols: '2604',
    nonzeros: '25432',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '1503',
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
DEGEN3     1504   1818    26230     130252       -9.8729400000E+02        
                                                                          
From John Tomlin.                                                         
On the problems supplied by John Tomlin, MINOS 5.3 reports that about     
10% to 57% of its steps are degenerate:                                   
     Name     Steps  Degen  Percent                                       
     DEGEN3    6283   3299   52.51                                        
                                                                          
When included in Netlib: Cost coefficients negated.                       
                                                                          
Added to Netlib on  30 Oct. 1989                                          
',
    b_field: 'full 1503-by-1
',
    aux_fields: 'c: full 2604-by-1
lo: full 2604-by-1
hi: full 2604-by-1
z0: full 1-by-1
',    norm: '5.465095e+01',
    min_singular_value: '1.006630e-14',
    condition_number: '5429097701319548',
    svd_rank: '1501',
    sprank_minus_rank: '2',
    null_space_dimension: '2',
    full_numerical_rank: 'no',
    svd_gap: '5876397294987.917969',
}
