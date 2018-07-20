{
    matrix_id: '623',
    name: 'lp_finnis',
    group: 'LPnetlib',
    description: 'Netlib LP problem finnis: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'N. Gould',
    editor: 'D. Gay',
    date: '1989',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '497',
    num_cols: '1064',
    nonzeros: '2760',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '497',
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
FINNIS      498    614     2714      23847  B     1.7279096547E+05           
                                                                             
        BOUND-TYPE TABLE                                                     
FINNIS     UP LO FX                                                          
                                                                             
When included in Netlib: Extra free rows omitted.                            
                                                                             
Nick Gould supplied FINNIS from the Harwell collection of LP test problems.  
Concerning the problems he supplied, Nick Gould says that FINNIS             
"is from Mike Finnis at Harwell, a model for the selection of                
alternative fuel types."                                                     
                                                                             
Added to Netlib on  6 April 1989                                             
                                                                             
',
    b_field: 'full 497-by-1
',
    aux_fields: 'c: full 1064-by-1
lo: full 1064-by-1
hi: full 1064-by-1
z0: full 1-by-1
',    norm: '1.171915e+02',
    min_singular_value: '1.071911e-01',
    condition_number: '1.093295e+03',
    svd_rank: '497',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
    image_files: 'lp_finnis.png,lp_finnis_svd.png,lp_finnis_graph.gif,',
}
