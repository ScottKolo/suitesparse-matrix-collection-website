{
    matrix_id: '697',
    name: 'lp_stocfor3',
    group: 'LPnetlib',
    description: 'Netlib LP problem stocfor3: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'G. Gassmann',
    editor: 'D. Gay',
    date: '1989',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '16675',
    num_cols: '23541',
    nonzeros: '72721',
    num_explicit_zeros: '3752',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '33',
    structural_full_rank: 'true',
    structural_rank: '16675',
    pattern_symmetry: '0.000',
    numeric_symmetry: '0.000',
    rb_type: 'real',
    structure: 'rectangular',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'A Netlib LP problem, from a generator in lp/data.  For more information   
send email to netlib@ornl.gov with the message:                           
                                                                          
	 send index from lp                                                      
	 send readme from lp/data                                                
                                                                          
This copy of STOCFOR3 was created by the STOCFOR generator program,       
on an Sun UltraSparc, on May 15, 1997.                                    
                                                                          
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
STOCFOR3  16676  15695    74004 (see NOTES)      -3.9976661576E+04        
                                                                          
                                                                          
Bob Bixby reports that the CPLEX solver (running on a Sparc station)      
finds slightly different optimal values for some of the problems.         
On a MIPS processor, MINOS version 5.3 (with crash and scaling of         
December 1989) also finds different optimal values for some of the        
problems.  The following table shows the values that differ from those    
shown above.  (Whether CPLEX finds different values on the recently       
added problems remains to be seen.)                                       
                                                                          
Problem        CPLEX(Sparc)          MINOS(MIPS)                          
STOCFOR3    -3.9976785944E+04    -3.9976776417E+04                        
                                                                          
STOCFOR1,2,3 are stochastic forestry problems from Gus Gassmann.  To      
quote Gus, "All of them are seven-period descriptions of a forestry       
problem with a random occurrence of forest fires, and the size varies     
according to the number of realizations you use in each period."          
STOCFOR1 "is the deterministic version, STOCFOR2 has 2 realizations       
each in periods 2 to 7, and the monster STOCFOR3 has 4,4,4,2,2, and 2     
realizations, respectively."   The compressed form of STOCFOR3 would be   
652846 bytes long, so requesting STOCFOR3 will instead get you a bundle   
of about 174 kilobytes that includes source for Gus\'s program, the        
data files for generating STOCFOR3 and a summary of "A Standard           
Input Format for Multistage Stochastic Linear Programs" by J.R. Birge,    
M.A.H. Dempster, H.I. Gassmann, E.A. Gunn, A.J. King, and S.W. Wallace    
[COAL Newsletter No. 17 (Dec. 1987), pp. 1-19].  Data files are also      
included for generating versions of STOCFOR1,2 that have more decimal     
places than the versions in lp/data.                                      
                                                                          
Added to Netlib on 16 Jan. 1989; bound and range information added to     
index file; MINOS 5.3 optimal values inserted.                            
                                                                          
Updated, in Netlib, on   4 Feb. 1993.  STOCFOR3 and the other problems    
you can generate with the data in the stocfor3 bundle are the same        
numerically as before (but with different row and column labels).         
The update (courtesy of Gus Gassmann) fixes some bugs in other uses       
of the generator and expands your options in using the generator.         
                                                                          
',
    b_field: 'full 16675-by-1
',
    aux_fields: 'c: full 23541-by-1
lo: full 23541-by-1
hi: full 23541-by-1
z0: full 1-by-1
',    norm: '1.696203e+03',
    min_singular_value: '1.944783e-02',
    condition_number: '8.721813e+04',
    svd_rank: '16675',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
}
