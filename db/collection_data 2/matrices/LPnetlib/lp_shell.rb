{
    matrix_id: '683',
    name: 'lp_shell',
    group: 'LPnetlib',
    description: 'Netlib LP problem shell: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'J. Reid',
    editor: 'D. Gay',
    date: '1978',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '536',
    num_cols: '1777',
    nonzeros: '3558',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '536',
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
                                                                              
------------------------------------------------------------------------------
This LP problem is the source of three sparse matrices in the Harwell/Boeing  
sparse matrix collection: SHL_0, SHL_200, and SHL_400.  Those three matrices  
are square, nonsingular basis matrices that occured during the solution of    
SHELL.                                                                        
------------------------------------------------------------------------------
                                                                              
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
SHELL       537   1775     4900      38049  B     1.2088253460E+09            
                                                                              
        BOUND-TYPE TABLE                                                      
SHELL      UP LO FX                                                           
                                                                              
From John Reid.                                                               
                                                                              
',
    b_field: 'full 536-by-1
',
    aux_fields: 'c: full 1777-by-1
lo: full 1777-by-1
hi: full 1777-by-1
z0: full 1-by-1
',    norm: '1.600042e+01',
    min_singular_value: '1.578462e-14',
    condition_number: '1013671531907234',
    svd_rank: '535',
    sprank_minus_rank: '1',
    null_space_dimension: '1',
    full_numerical_rank: 'no',
    svd_gap: '24142166949821.769531',
    image_files: 'lp_shell.png,lp_shell_svd.png,lp_shell_graph.gif,',
}
