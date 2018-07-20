{
    matrix_id: '635',
    name: 'lp_israel',
    group: 'LPnetlib',
    description: 'Netlib LP problem israel: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'M. Saunders',
    editor: 'D. Gay',
    date: '',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '174',
    num_cols: '316',
    nonzeros: '2443',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '174',
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
ISRAEL      175    142     2358      12109       -8.9664482186E+05            
                                                                              
From Michael Saunders, Systems Optimization Laboratory at Stanford University.
When included in Netlib: Extra right-hand side vectors omitted.               
                                                                              
The following are relevant excerts from lp/data/minos (by Michael Saunders),  
regarding experience with MINOS 5.0 on the problems he provided:              
                                                                              
                                                     (unscaled)   (scaled)    
File   Name    Rows  Cols  Elems  Optimal Objective  Itns  Time  Itns  Time   
---- --------  ----  ----  -----  -----------------  ----  ----  ----  ----   
  6. ISRAEL     175   142   2358 -8.9664482E+05       345   5.0   231   3.7   
                                                                              
* Objective  is the first row of type N.  It is minimized except as shown.    
                                                                              
* Itns       is the number of iterations required to solve the problem        
             by the primal simplex method, as implemented in the Fortran      
             code MINOS 5.0 (May 1985), using default values for all          
             parameters.  (The initial basis is triangular.)                  
                                                                              
* Time       is the processor time required on an IBM 3081K.  The MINOS       
             source code was compiled with the IBM Fortran 77 compiler        
             VS FORTRAN, using the options NOSDUMP, NOSYM and OPT(3).         
                                                                              
',
    b_field: 'full 174-by-1
',
    aux_fields: 'c: full 316-by-1
lo: full 316-by-1
hi: full 316-by-1
z0: full 1-by-1
',    norm: '4.816817e+03',
    min_singular_value: '1.000000e+00',
    condition_number: '4.816817e+03',
    svd_rank: '174',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
    image_files: 'lp_israel.png,lp_israel_svd.png,lp_israel_graph.gif,',
}
