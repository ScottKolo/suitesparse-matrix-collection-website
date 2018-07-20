{
    matrix_id: '596',
    name: 'lp_adlittle',
    group: 'LPnetlib',
    description: 'Netlib LP problem adlittle: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'M. Saunders',
    editor: 'D. Gay',
    date: '',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '56',
    num_cols: '138',
    nonzeros: '424',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '2',
    structural_full_rank: 'true',
    structural_rank: '56',
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
for "has ranges".                                                             
                                                                              
The optimal value is from MINOS version 5.3 (of Sept. 1988)                   
running on a VAX with default options.                                        
                                                                              
                       PROBLEM SUMMARY TABLE                                  
                                                                              
Name       Rows   Cols   Nonzeros    Bytes  BR      Optimal Value             
ADLITTLE     57     97      465       3690        2.2549496316E+05            
                                                                              
From Michael Saunders, Systems Optimization Laboratory at Stanford University.
                                                                              
The following are relevant excerts from lp/data/minos (by Michael Saunders),  
regarding experience with MINOS 5.0 on the problems he provided:              
                                                                              
                                                     (unscaled)   (scaled)    
File   Name    Rows  Cols  Elems  Optimal Objective  Itns  Time  Itns  Time   
---- --------  ----  ----  -----  -----------------  ----  ----  ----  ----   
  2. ADLITTLE    57    97    465  2.2549496E+05       123   1.3    98   1.1   
                                                                              
* Objective  is the first row of type N.  It is minimized except as shown.    
                                                                              
* Itns       is the number of iterations required to solve the problem        
             by the primal simplex method, as implemented in the Fortran      
             code MINOS 5.0 (May 1985), using default values for all          
             parameters.  (The initial basis is triangular.)                  
                                                                              
* Time       is the processor time required on an IBM 3081K.  The MINOS       
             source code was compiled with the IBM Fortran 77 compiler        
             VS FORTRAN, using the options NOSDUMP, NOSYM and OPT(3).         
                                                                              
',
    b_field: 'full 56-by-1
',
    aux_fields: 'c: full 138-by-1
lo: full 138-by-1
hi: full 138-by-1
z0: full 1-by-1
',    norm: '1.033118e+02',
    min_singular_value: '2.230581e-01',
    condition_number: '4.631608e+02',
    svd_rank: '56',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
    image_files: 'lp_adlittle.png,lp_adlittle_dmperm.png,lp_adlittle_svd.png,lp_adlittle_graph.gif,',
}
