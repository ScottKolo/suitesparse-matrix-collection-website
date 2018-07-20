{
    matrix_id: '666',
    name: 'lp_sc50a',
    group: 'LPnetlib',
    description: 'Netlib LP problem sc50a: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'N. Gould',
    editor: 'D. Gay',
    date: '1989',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '50',
    num_cols: '78',
    nonzeros: '160',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '2',
    num_dmperm_blocks: '2',
    structural_full_rank: 'true',
    structural_rank: '50',
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
SC50A        51     48      131       1615       -6.4575077059E+01        
                                                                          
Nick Gould supplied SC50A from the Harwell collection of LP test problems.
When included in Netlib: Cost coefficients negated.                       
                                                                          
Added to Netlib on  6 April 1989                                          
',
    b_field: 'full 50-by-1
',
    aux_fields: 'c: full 78-by-1
lo: full 78-by-1
hi: full 78-by-1
z0: full 1-by-1
',    norm: '4.093509e+00',
    min_singular_value: '3.311463e-01',
    condition_number: '1.236163e+01',
    svd_rank: '50',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
    image_files: 'lp_sc50a.png,lp_sc50a_dmperm.png,lp_sc50a_scc.png,lp_sc50a_svd.png,lp_sc50a_graph.gif,',
}
