{
    matrix_id: '641',
    name: 'lp_lotfi',
    group: 'LPnetlib',
    description: 'Netlib LP problem lotfi: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'V. Lofti',
    editor: 'D. Gay',
    date: '1989',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '153',
    num_cols: '366',
    nonzeros: '1136',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '9',
    structural_full_rank: 'true',
    structural_rank: '153',
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
LOTFI       154    308     1086       6718       -2.5264706062E+01        
                                                                          
From Vahid Lotfi.                                                         
When included in Netlib: cost coefficients negated.                       
                                                                          
LOTFI, says Vahid Lotfi, "involves audit staff scheduling.  This problem  
is semi real world and we have used it in a study, the results of which   
are to appear in Decision Sciences (Fall 1990).  The detailed             
description of the problem is also in the paper.  The problem is          
actually an MOLP with seven objectives, the first is maximization and     
the other six are minimization.  The version that I am sending has the    
aggregated objective (i.e., z1-z2-z3-z4-z5-z6-z7)."                       
                                                                          
Added to Netlib on 27 June 1989                                           
',
    b_field: 'full 153-by-1
',
    aux_fields: 'c: full 366-by-1
lo: full 366-by-1
hi: full 366-by-1
z0: full 1-by-1
',    norm: '1.275023e+03',
    min_singular_value: '1.920182e-03',
    condition_number: '6.640116e+05',
    svd_rank: '153',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
}
