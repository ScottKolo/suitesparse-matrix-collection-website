{
    matrix_id: '690',
    name: 'lp_sierra',
    group: 'LPnetlib',
    description: 'Netlib LP problem sierra: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'R. Helgason, J. Kennington, P. Wong',
    editor: 'R. Fourer',
    date: '',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '1227',
    num_cols: '2735',
    nonzeros: '8001',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '1227',
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
for "has ranges".  The BOUND-TYPE TABLE below shows the bound types       
present in those problems that have bounds.                               
                                                                          
The optimal value is from MINOS version 5.3 (of Sept. 1988)               
running on a VAX with default options.                                    
                                                                          
                       PROBLEM SUMMARY TABLE                              
                                                                          
Name       Rows   Cols   Nonzeros    Bytes  BR      Optimal Value         
SIERRA     1228   2036     9252      76627  B     1.5394362184E+07        
                                                                          
        BOUND-TYPE TABLE                                                  
SIERRA     UP                                                             
                                                                          
Supplied by Bob Fourer.                                                   
When included in Netlib: Explicit zeros omitted.                          
                                                                          
Bob Bixby reports that the CPLEX solver (running on a Sparc station)      
finds slightly different optimal values for some of the problems.         
On a MIPS processor, MINOS version 5.3 (with crash and scaling of         
December 1989) also finds different optimal values for some of the        
problems.  The following table shows the values that differ from those    
shown above.  (Whether CPLEX finds different values on the recently       
added problems remains to be seen.)                                       
                                                                          
Problem        CPLEX(Sparc)          MINOS(MIPS)                          
SIERRA                            1.5394364186E+07                        
                                                                          
Source: GFRD-PNC, SIERRA: R. Helgason, J. Kennington, and P. Wong,        
"An Application of Network Programming for National Forest Planning",     
Technical Report OR 81006, Dept. of Operations Research, Southern         
Methodist University.                                                     
                                                                          
',
    b_field: 'full 1227-by-1
',
    aux_fields: 'c: full 2735-by-1
lo: full 2735-by-1
hi: full 2735-by-1
z0: full 1-by-1
',    norm: '1.000000e+05',
    min_singular_value: '3.378598e-15',
    condition_number: '2.959807e+19',
    svd_rank: '1217',
    sprank_minus_rank: '10',
    null_space_dimension: '10',
    full_numerical_rank: 'no',
    svd_gap: '7298226593.572148',
    image_files: 'lp_sierra.png,lp_sierra_svd.png,lp_sierra_graph.gif,',
}
