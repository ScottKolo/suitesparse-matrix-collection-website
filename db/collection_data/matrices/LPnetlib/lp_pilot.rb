{
    matrix_id: '654',
    name: 'lp_pilot',
    group: 'LPnetlib',
    description: 'Netlib LP problem pilot: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'M. Saunders',
    editor: 'D. Gay',
    date: '1989',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '1441',
    num_cols: '4860',
    nonzeros: '44375',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '2',
    structural_full_rank: 'true',
    structural_rank: '1441',
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
PILOT      1442   3652    43220     278593  B    -5.5740430007E+02            
                                                                              
        BOUND-TYPE TABLE                                                      
PILOT      UP LO FX                                                           
                                                                              
From Michael Saunders, Systems Optimization Laboratory at Stanford University.
When included in Netlib: Extra bound sets omitted;                            
cost coefficients negated.                                                    
                                                                              
Bob Bixby reports that the CPLEX solver (running on a Sparc station)          
finds slightly different optimal values for some of the problems.             
On a MIPS processor, MINOS version 5.3 (with crash and scaling of             
December 1989) also finds different optimal values for some of the            
problems.  The following table shows the values that differ from those        
shown above.  (Whether CPLEX finds different values on the recently           
added problems remains to be seen.)                                           
                                                                              
Problem        CPLEX(Sparc)          MINOS(MIPS)                              
PILOT       -5.5748972928E+02    -5.5741215293E+02                            
                                                                              
Concerning PILOT87, Irv Lustig says, "PILOT87 is considered (by John          
Stone, at least) to be harder than PILOT because of the bad scaling in        
the numerics."                                                                
                                                                              
Modified on Oct. 1991 (minor cleanup): removed 8 duplicate right-hand         
side values for row BTRB01.                                                   
                                                                              
The following are relevant excerts from lp/data/minos (by Michael Saunders),  
regarding experience with MINOS 5.0 on the problems he provided:              
                                                                              
                                                     (unscaled)   (scaled)    
File   Name    Rows  Cols  Elems  Optimal Objective  Itns  Time  Itns  Time   
---- --------  ----  ----  -----  -----------------  ----  ----  ----  ----   
 13. PILOT     1460  3652  43645  5.5742994E+02 MAX    ?     ?  20000* 2hrs*  
                                                                              
* Objective  is the first row of type N.  It is minimized except as shown.    
                                                                              
* Itns       is the number of iterations required to solve the problem        
             by the primal simplex method, as implemented in the Fortran      
             code MINOS 5.0 (May 1985), using default values for all          
             parameters.  (The initial basis is triangular.)                  
                                                                              
* Time       is the processor time required on an IBM 3081K.  The MINOS       
             source code was compiled with the IBM Fortran 77 compiler        
             VS FORTRAN, using the options NOSDUMP, NOSYM and OPT(3).         
                                                                              
* PILOT      is a linearized form of a quadratic program.  The first 45       
             objective elements are the optimal gradients of the quadratic    
             terms in the objective of the QP.  PILOT is normally solved      
             from an advanced basis, with scaling.  The Itns and Time shown   
             above are estimates.                                             
                                                                              
',
    b_field: 'full 1441-by-1
',
    aux_fields: 'c: full 4860-by-1
lo: full 4860-by-1
hi: full 4860-by-1
z0: full 1-by-1
',    norm: '3.317101e+02',
    min_singular_value: '1.246117e-01',
    condition_number: '2.661950e+03',
    svd_rank: '1441',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
    image_files: 'lp_pilot.png,lp_pilot_dmperm.png,lp_pilot_ja.png,lp_pilot_ja_dmperm.png,lp_pilot_ja_svd.png,lp_pilot_svd.png,lp_pilot_we.png,lp_pilot_we_svd.png,lp_pilot_graph.gif,lp_pilot_ja_graph.gif,lp_pilot_we_graph.gif,',
}
