{
    matrix_id: '644',
    name: 'lp_modszk1',
    group: 'LPnetlib',
    description: 'Netlib LP problem modszk1: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'I. Maros',
    editor: 'D. Gay',
    date: '1994',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '687',
    num_cols: '1620',
    nonzeros: '3168',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '3',
    num_dmperm_blocks: '3',
    structural_full_rank: 'false',
    structural_rank: '686',
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
MODSZK1     688   1620     4158      40908  B     3.2061972906E+02        
                                                                          
        BOUND-TYPE TABLE                                                  
MODSZK1             FR                                                    
                                                                          
From Istvan Maros.                                                        
Concerning the problems he submitted, Istvan Maros says that              
MODSZK1 is a "real-life problem" that                                     
is "very degenerate" and on which a dual simplex algorithm "may require   
up to 10 times" fewer iterations than a primal simplex algorithm.  It     
"is a multi-sector economic planning model (a kind of an input/output     
model in economy)" and "is an old problem of mine and it is not easy to   
recall more."                                                             
                                                                          
Added to Netlib on  17 Jan. 1994                                          
                                                                          
',
    b_field: 'full 687-by-1
',
    aux_fields: 'c: full 1620-by-1
lo: full 1620-by-1
hi: full 1620-by-1
z0: full 1-by-1
',    norm: '4.875560e+00',
    min_singular_value: '9.119891e-20',
    condition_number: '5.346073e+19',
    svd_rank: '686',
    sprank_minus_rank: '0',
    null_space_dimension: '1',
    full_numerical_rank: 'no',
    svd_gap: '1328062193069226240.000000',
    image_files: 'lp_modszk1.png,lp_modszk1_dmperm.png,lp_modszk1_scc.png,lp_modszk1_svd.png,lp_modszk1_graph.gif,',
}
