{
    matrix_id: '663',
    name: 'lp_recipe',
    group: 'LPnetlib',
    description: 'Netlib LP problem recipe: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'R. Fourer',
    editor: 'R. Fourer',
    date: '',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '91',
    num_cols: '204',
    nonzeros: '687',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '12',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '91',
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
RECIPE       92    180      752       6210  B    -2.6661600000E+02        
                                                                          
        BOUND-TYPE TABLE                                                  
RECIPE     UP LO FX                                                       
                                                                          
Empty RHS section.                                                        
Supplied by Bob Fourer.                                                   
When included in Netlib: Extra bound sets omitted;                        
extra free rows omitted.                                                  
                                                                          
Source: consulting.                                                       
                                                                          
',
    b_field: 'full 91-by-1
',
    aux_fields: 'c: full 204-by-1
lo: full 204-by-1
hi: full 204-by-1
z0: full 1-by-1
',    norm: '6.217478e+02',
    min_singular_value: '3.002377e-02',
    condition_number: '2.070852e+04',
    svd_rank: '91',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
    image_files: 'lp_recipe.png,lp_recipe_scc.png,lp_recipe_svd.png,lp_recipe_graph.gif,',
}
