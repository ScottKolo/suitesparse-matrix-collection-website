{
    matrix_id: '698',
    name: 'lp_truss',
    group: 'LPnetlib',
    description: 'Netlib LP problem truss: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'M. Ferris',
    editor: 'D. Gay',
    date: '1990',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '1000',
    num_cols: '8806',
    nonzeros: '27836',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '1000',
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
                                                                              
This copy of TRUSS was created by the TRUSS generator program,                
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
TRUSS      1001   8806    36642 (see NOTES)       4.5881584719E+05            
                                                                              
Source:  At the request of Olvi Mangasarian, Rudy Setiono supplied the        
generator and description (both written by Michael Ferris) and data for TRUSS.
                                                                              
Requesting TRUSS will get you a bundle of Fortran source and data for         
generating an MPS file for TRUSS, a problem of minimizing the weight          
of a certain structure.  The bundle also includes a description of the        
problem.                                                                      
                                                                              
Added to Netlib on  26 Feb. 1990                                              
                                                                              
',
    b_field: 'full 1000-by-1
',
    aux_fields: 'c: full 8806-by-1
lo: full 8806-by-1
hi: full 8806-by-1
z0: full 1-by-1
',    norm: '5.603150e+00',
    min_singular_value: '1.174310e-02',
    condition_number: '4.771439e+02',
    svd_rank: '1000',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
    image_files: 'lp_truss.png,lp_truss_svd.png,lp_truss_graph.gif,',
}
