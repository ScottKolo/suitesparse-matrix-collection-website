{
    matrix_id: '696',
    name: 'lp_stocfor2',
    group: 'LPnetlib',
    description: 'Netlib LP problem stocfor2: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'G. Gassmann',
    editor: 'D. Gay',
    date: '1988',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '2157',
    num_cols: '3045',
    nonzeros: '9357',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '17',
    structural_full_rank: 'true',
    structural_rank: '2157',
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
for "has ranges".                                                         
                                                                          
The optimal value is from MINOS version 5.3 (of Sept. 1988)               
running on a VAX with default options.                                    
                                                                          
                       PROBLEM SUMMARY TABLE                              
                                                                          
Name       Rows   Cols   Nonzeros    Bytes  BR      Optimal Value         
STOCFOR2   2158   2031     9492      79845       -3.9024408538E+04        
                                                                          
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
                                                                          
Added to Netlib on  25 June 1988                                          
                                                                          
',
    b_field: 'full 2157-by-1
',
    aux_fields: 'c: full 3045-by-1
lo: full 3045-by-1
hi: full 3045-by-1
z0: full 1-by-1
',    norm: '1.263719e+03',
    min_singular_value: '4.448968e-02',
    condition_number: '2.840476e+04',
    svd_rank: '2157',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
    image_files: 'lp_stocfor2.png,lp_stocfor2_dmperm.png,lp_stocfor2_svd.png,lp_stocfor2_graph.gif,',
}
