{
    matrix_id: '621',
    name: 'lp_etamacro',
    group: 'LPnetlib',
    description: 'Netlib LP problem etamacro: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'M. Saunders',
    editor: 'D. Gay',
    date: '',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '400',
    num_cols: '816',
    nonzeros: '2537',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '2',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '400',
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
	 send minos from lp/data                                                     
                                                                              
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
ETAMACRO    401    688     2489      21915  B    -7.5571521774E+02            
                                                                              
        BOUND-TYPE TABLE                                                      
ETAMACRO   UP LO FX                                                           
                                                                              
From Michael Saunders, Systems Optimization Laboratory at Stanford University.
When included in Netlib: Cost coefficients negated.                           
                                                                              
Bob Bixby reports that the CPLEX solver (running on a Sparc station)          
finds slightly different optimal values for some of the problems.             
On a MIPS processor, MINOS version 5.3 (with crash and scaling of             
December 1989) also finds different optimal values for some of the            
problems.  The following table shows the values that differ from those        
shown above.  (Whether CPLEX finds different values on the recently           
added problems remains to be seen.)                                           
                                                                              
Problem        CPLEX(Sparc)          MINOS(MIPS)                              
ETAMACRO    -7.5571523337E+02    -7.5571522100E+02                            
                                                                              
The following are relevant excerts from lp/data/minos (by Michael Saunders),  
regarding experience with MINOS 5.0 on the problems he provided:              
                                                                              
                                                     (unscaled)   (scaled)    
File   Name    Rows  Cols  Elems  Optimal Objective  Itns  Time  Itns  Time   
---- --------  ----  ----  -----  -----------------  ----  ----  ----  ----   
 12. ETAMACRO   401   689   2489  7.5571521E+02 MAX   904  15.0   927  17.6   
                                                                              
* Objective  is the first row of type N.  It is minimized except as shown.    
                                                                              
* Itns       is the number of iterations required to solve the problem        
             by the primal simplex method, as implemented in the Fortran      
             code MINOS 5.0 (May 1985), using default values for all          
             parameters.  (The initial basis is triangular.)                  
                                                                              
* Time       is the processor time required on an IBM 3081K.  The MINOS       
             source code was compiled with the IBM Fortran 77 compiler        
             VS FORTRAN, using the options NOSDUMP, NOSYM and OPT(3).         
                                                                              
',
    b_field: 'full 400-by-1
',
    aux_fields: 'c: full 816-by-1
lo: full 816-by-1
hi: full 816-by-1
z0: full 1-by-1
',    norm: '2.258292e+03',
    min_singular_value: '4.297841e-02',
    condition_number: '5.254481e+04',
    svd_rank: '400',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
    image_files: 'lp_etamacro.png,lp_etamacro_scc.png,lp_etamacro_svd.png,lp_etamacro_graph.gif,',
}
