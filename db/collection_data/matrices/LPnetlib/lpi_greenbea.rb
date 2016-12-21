{
    matrix_id: '718',
    name: 'lpi_greenbea',
    group: 'LPnetlib',
    description: 'Netlib LP problem greenbea: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'R. Fourer',
    editor: 'R. Fourer',
    date: '1988',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '2393',
    num_cols: '5596',
    nonzeros: '31074',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '9',
    num_dmperm_blocks: '75',
    structural_full_rank: 'false',
    structural_rank: '2390',
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
GREENBEA   2393   5405    31499     235711  B    -7.2462405908E+07        
                                                                          
        BOUND-TYPE TABLE                                                  
GREENBEA   UP LO FX                                                       
                                                                          
Supplied by Bob Fourer.                                                   
When included in Netlib: Extra bound sets omitted; Extra free rows        
omitted.                                                                  
Empty RHS section.                                                        
Problems GREENBEA and GREENBEB differ only in their BOUNDS sections.      
                                                                          
Bob Bixby reports that the CPLEX solver (running on a Sparc station)      
finds slightly different optimal values for some of the problems.         
On a MIPS processor, MINOS version 5.3 (with crash and scaling of         
December 1989) also finds different optimal values for some of the        
problems.  The following table shows the values that differ from those    
shown above.  (Whether CPLEX finds different values on the recently       
added problems remains to be seen.)                                       
                                                                          
Problem        CPLEX(Sparc)          MINOS(MIPS)                          
GREENBEA    -7.2555248130E+07                                             
                                                                          
Source:  GREENBEA, GREENBEB: a large refinery model; see the book         
"A Model-Management Framework for Mathematical Programming" by Kenneth    
H. Palmer et al. (John Wiley & Sons, New York, 1984).                     
                                                                          
Added to Netlib on  6 May 1988                                            
                                                                          
',
    b_field: 'full 2393-by-1
',
    aux_fields: 'c: full 5596-by-1
lo: full 5596-by-1
hi: full 5596-by-1
z0: full 1-by-1
',    norm: '1.062251e+02',
    min_singular_value: '4.062603e-64',
    condition_number: '2.614705e+65',
    svd_rank: '2390',
    sprank_minus_rank: '0',
    null_space_dimension: '3',
    full_numerical_rank: 'no',
    svd_gap: '79405345486566.500000',
}
