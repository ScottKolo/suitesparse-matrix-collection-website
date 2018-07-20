{
    matrix_id: '653',
    name: 'lp_perold',
    group: 'LPnetlib',
    description: 'Netlib LP problem perold: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'N. Gould',
    editor: 'D. Gay',
    date: '1989',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '625',
    num_cols: '1506',
    nonzeros: '6148',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '3',
    structural_full_rank: 'true',
    structural_rank: '625',
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
PEROLD      626   1376     6026      47486  B    -9.3807580773E+03            
                                                                              
        BOUND-TYPE TABLE                                                      
PEROLD     UP LO FX FR                                                        
                                                                              
Nick Gould supplied PEROLD, from the Harwell collection of LP test problems.  
                                                                              
Bob Bixby reports that the CPLEX solver (running on a Sparc station)          
finds slightly different optimal values for some of the problems.             
On a MIPS processor, MINOS version 5.3 (with crash and scaling of             
December 1989) also finds different optimal values for some of the            
problems.  The following table shows the values that differ from those        
shown above.  (Whether CPLEX finds different values on the recently           
added problems remains to be seen.)                                           
                                                                              
Problem        CPLEX(Sparc)          MINOS(MIPS)                              
PEROLD      -9.3807552782E+03    -9.3807553661E+03                            
                                                                              
Concerning the problems he supplied, Nick Gould says that  PEROLD "is         
another Pilot model (Pilot1)".                                                
                                                                              
Added to Netlib on  6 April 1989                                              
                                                                              
',
    b_field: 'full 625-by-1
',
    aux_fields: 'c: full 1506-by-1
lo: full 1506-by-1
hi: full 1506-by-1
z0: full 1-by-1
',    norm: '5.265817e+04',
    min_singular_value: '1.025941e-01',
    condition_number: '5.132671e+05',
    svd_rank: '625',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
    image_files: 'lp_perold.png,lp_perold_dmperm.png,lp_perold_svd.png,lp_perold_graph.gif,',
}
