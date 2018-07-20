{
    matrix_id: '595',
    name: 'lp_80bau3b',
    group: 'LPnetlib',
    description: 'Netlib LP problem 80bau3b: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'W. Kurator, H. Greenberg',
    editor: 'R. Fourer',
    date: '',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '2262',
    num_cols: '12061',
    nonzeros: '23264',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '154',
    num_dmperm_blocks: '26',
    structural_full_rank: 'true',
    structural_rank: '2262',
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
80BAU3B    2263   9799    29063     298952  B     9.8723216072E+05        
                                                                          
        BOUND-TYPE TABLE                                                  
80BAU3B    UP LO FX                                                       
                                                                          
Supplied by Bob Fourer.                                                   
                                                                          
When included in Netlib: Extra free rows omitted.                         
                                                                          
Source: W. Kurator and Harvey Greenberg, Energy Information               
Administration (Greenberg is now at the Univ. of Colorado - Denver).      
                                                                          
Bob Bixby reports that the CPLEX solver (running on a Sparc station)      
finds slightly different optimal values for some of the problems.         
On a MIPS processor, MINOS version 5.3 (with crash and scaling of         
December 1989) also finds different optimal values for some of the        
problems.  The following table shows the values that differ from those    
shown above.  (Whether CPLEX finds different values on the recently       
added problems remains to be seen.)                                       
                                                                          
Problem        CPLEX(Sparc)          MINOS(MIPS)                          
80BAU3B      9.8722419241E+05     9.8722952818E+05                        
',
    b_field: 'full 2262-by-1
',
    aux_fields: 'c: full 12061-by-1
lo: full 12061-by-1
hi: full 12061-by-1
z0: full 1-by-1
',    norm: '5.672253e+02',
    min_singular_value: '1.000000e+00',
    condition_number: '5.672253e+02',
    svd_rank: '2262',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
    image_files: 'lp_80bau3b.png,lp_80bau3b_dmperm.png,lp_80bau3b_scc.png,lp_80bau3b_svd.png,lp_80bau3b_graph.gif,',
}
