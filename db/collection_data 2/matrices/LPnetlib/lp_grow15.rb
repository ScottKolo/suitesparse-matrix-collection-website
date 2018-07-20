{
    matrix_id: '632',
    name: 'lp_grow15',
    group: 'LPnetlib',
    description: 'Netlib LP problem grow15: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'R. Fourer',
    editor: 'R. Fourer',
    date: '1983',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '300',
    num_cols: '645',
    nonzeros: '5620',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '300',
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
GROW15      301    645     5665      35041  B    -1.0687094129E+08        
                                                                          
        BOUND-TYPE TABLE                                                  
GROW15     UP                                                             
                                                                          
Supplied by Bob Fourer.                                                   
When included in Netlib: Extra bound sets omitted; explicit zeros         
omitted; Cost coefficients negated.                                       
                                                                          
Source:   GROW15, GROW22, GROW7: R. Fourer, "Solving Staircase Linear     
Programs by the Simplex Method, 2: Pricing", Math. Prog. 25 (1983),       
pp. 251-292.                                                              
                                                                          
',
    b_field: 'full 300-by-1
',
    aux_fields: 'c: full 645-by-1
lo: full 645-by-1
hi: full 645-by-1
z0: full 1-by-1
',    norm: '2.509998e+00',
    min_singular_value: '4.435223e-01',
    condition_number: '5.659238e+00',
    svd_rank: '300',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
    image_files: 'lp_grow15.png,lp_grow15_svd.png,lp_grow15_graph.gif,',
}
