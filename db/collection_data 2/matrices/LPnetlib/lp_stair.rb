{
    matrix_id: '691',
    name: 'lp_stair',
    group: 'LPnetlib',
    description: 'Netlib LP problem stair: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'M. Saunders',
    editor: 'D. Gay',
    date: '',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '356',
    num_cols: '614',
    nonzeros: '4003',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '356',
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
                                                                              
------------------------------------------------------------------------------
This LP problem is the source of four sparse matrices in the Harwell/Boeing   
sparse matrix collection: STR_0, STR_200, STR_400, and STR_600.  Those four   
matrices are square, nonsingular basis matrices that occured during the       
solution of STAIR.                                                            
------------------------------------------------------------------------------
                                                                              
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
STAIR       357    467     3857      27405  B    -2.5126695119E+02            
                                                                              
        BOUND-TYPE TABLE                                                      
STAIR      UP    FX FR                                                        
                                                                              
From Michael Saunders, Systems Optimization Laboratory at Stanford University.
When included in Netlib: Explicit zeros omitted;                              
cost coefficients negated.                                                    
                                                                              
The following are relevant excerts from lp/data/minos (by Michael Saunders),  
regarding experience with MINOS 5.0 on the problems he provided:              
                                                                              
                                                     (unscaled)   (scaled)    
File   Name    Rows  Cols  Elems  Optimal Objective  Itns  Time  Itns  Time   
---- --------  ----  ----  -----  -----------------  ----  ----  ----  ----   
 11. STAIR      357   467   3867  2.5126695E+02 MAX   519  15.7   389  13.1   
                                                                              
* Objective  is the first row of type N.  It is minimized except as shown.    
                                                                              
* Itns       is the number of iterations required to solve the problem        
             by the primal simplex method, as implemented in the Fortran      
             code MINOS 5.0 (May 1985), using default values for all          
             parameters.  (The initial basis is triangular.)                  
                                                                              
* Time       is the processor time required on an IBM 3081K.  The MINOS       
             source code was compiled with the IBM Fortran 77 compiler        
             VS FORTRAN, using the options NOSDUMP, NOSYM and OPT(3).         
                                                                              
',
    b_field: 'full 356-by-1
',
    aux_fields: 'c: full 614-by-1
lo: full 614-by-1
hi: full 614-by-1
z0: full 1-by-1
',    norm: '1.464861e+01',
    min_singular_value: '2.564993e-01',
    condition_number: '5.710977e+01',
    svd_rank: '356',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
    image_files: 'lp_stair.png,lp_stair_svd.png,lp_stair_graph.gif,',
}
