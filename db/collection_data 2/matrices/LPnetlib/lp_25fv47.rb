{
    matrix_id: '594',
    name: 'lp_25fv47',
    group: 'LPnetlib',
    description: 'Netlib LP problem 25fv47: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'J. Reid',
    editor: 'D. Gay',
    date: '1978',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '821',
    num_cols: '1876',
    nonzeros: '10705',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '3',
    num_dmperm_blocks: '29',
    structural_full_rank: 'false',
    structural_rank: '820',
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
                                                                              
------------------------------------------------------------------------------
This LP problem is the source of nine sparse matrices in the Harwell/Boeing   
sparse matrix collection: BP_0, BP_200, BP_400, BP_600, BP_800, BP_1000,      
BP_1200, BP_1400, and BP_1600.  Those nine matrices are square, nonsingular   
basis matrices that occured during the solution of 25FV47 (also called BP     
or BP1).                                                                      
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
for "has ranges".                                                             
                                                                              
The optimal value is from MINOS version 5.3 (of Sept. 1988)                   
running on a VAX with default options.                                        
                                                                              
                       PROBLEM SUMMARY TABLE                                  
                                                                              
Name       Rows   Cols   Nonzeros    Bytes  BR      Optimal Value             
25FV47      822   1571    11127      70477        5.5018458883E+03            
                                                                              
From John Reid.  Problem 25FV47 is sometimes called BP or BP1.                
                                                                              
Bob Bixby reports that the CPLEX solver (running on a Sparc station)          
finds slightly different optimal values for some of the problems.             
On a MIPS processor, MINOS version 5.3 (with crash and scaling of             
December 1989) also finds different optimal values for some of the            
problems.  The following table shows the values that differ from those        
shown above.  (Whether CPLEX finds different values on the recently           
added problems remains to be seen.)                                           
                                                                              
Problem        CPLEX(Sparc)          MINOS(MIPS)                              
25FV47                            5.5018467791E+03                            
                                                                              
',
    b_field: 'full 821-by-1
',
    aux_fields: 'c: full 1876-by-1
lo: full 1876-by-1
hi: full 1876-by-1
z0: full 1-by-1
',    norm: '4.369181e+02',
    min_singular_value: '0',
    condition_number: 'Inf',
    svd_rank: '820',
    sprank_minus_rank: '0',
    null_space_dimension: '1',
    full_numerical_rank: 'no',
    svd_gap: 'Inf',
    image_files: 'lp_25fv47.png,lp_25fv47_dmperm.png,lp_25fv47_scc.png,lp_25fv47_svd.png,lp_25fv47_graph.gif,',
}
