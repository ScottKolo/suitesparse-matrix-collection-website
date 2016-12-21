{
    matrix_id: '629',
    name: 'lp_gfrd_pnc',
    group: 'LPnetlib',
    description: 'Netlib LP problem gfrd_pnc: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'R. Helgason, J. Kennington, P. Wong',
    editor: 'R. Fourer',
    date: '',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '616',
    num_cols: '1160',
    nonzeros: '2445',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '27',
    structural_full_rank: 'true',
    structural_rank: '616',
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
GFRD-PNC    617   1092     3467      24476  B     6.9022359995E+06        
                                                                          
        BOUND-TYPE TABLE                                                  
GFRD-PNC   UP LO                                                          
                                                                          
Supplied by Bob Fourer.                                                   
                                                                          
Source: GFRD-PNC, SIERRA: R. Helgason, J. Kennington, and P. Wong,        
"An Application of Network Programming for National Forest Planning",     
Technical Report OR 81006, Dept. of Operations Research, Southern         
Methodist University.                                                     
                                                                          
',
    b_field: 'full 616-by-1
',
    aux_fields: 'c: full 1160-by-1
lo: full 1160-by-1
hi: full 1160-by-1
z0: full 1-by-1
',    norm: '3.555195e+03',
    min_singular_value: '3.812288e-02',
    condition_number: '9.325618e+04',
    svd_rank: '616',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
}
