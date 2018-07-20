{
    matrix_id: '656',
    name: 'lp_pilot87',
    group: 'LPnetlib',
    description: 'Netlib LP problem pilot87: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'J. Stone',
    editor: 'I. Lustig',
    date: '1990',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '2030',
    num_cols: '6680',
    nonzeros: '74949',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '2',
    num_dmperm_blocks: '2',
    structural_full_rank: 'true',
    structural_rank: '2030',
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
PILOT87    2031   4883    73804     514192  B     3.0171072827E+02         
                                                                           
Supplied by Irv Lustig, which he obtained from John Stone.                 
When included in Netlib: Extra free rows omitted.                          
                                                                           
Bob Bixby reports that the CPLEX solver (running on a Sparc station)       
finds slightly different optimal values for some of the problems.          
On a MIPS processor, MINOS version 5.3 (with crash and scaling of          
December 1989) also finds different optimal values for some of the         
problems.  The following table shows the values that differ from those     
shown above.  (Whether CPLEX finds different values on the recently        
added problems remains to be seen.)                                        
                                                                           
Problem        CPLEX(Sparc)          MINOS(MIPS)                           
PILOT87                           3.0171074161E+02                         
                                                                           
Added to Netlib on  15 June 1990.                                          
Modified, in Netlib, on  21 Oct. 1991 (minor cleanups): removed lower bound
of 49.5 on U[OG]ST0[12], which are subsequently fixed at 99 (UOST[12]) or  
65.4.                                                                      
                                                                           
',
    b_field: 'full 2030-by-1
',
    aux_fields: 'c: full 6680-by-1
lo: full 6680-by-1
hi: full 6680-by-1
z0: full 1-by-1
',    norm: '1.004462e+03',
    min_singular_value: '1.231975e-01',
    condition_number: '8.153260e+03',
    svd_rank: '2030',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
    image_files: 'lp_pilot87.png,lp_pilot87_dmperm.png,lp_pilot87_scc.png,lp_pilot87_svd.png,lp_pilot87_graph.gif,',
}
