{
    matrix_id: '603',
    name: 'lp_blend',
    group: 'LPnetlib',
    description: 'Netlib LP problem blend: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'N. Gould',
    editor: 'D. Gay',
    date: '1989',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '74',
    num_cols: '114',
    nonzeros: '522',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '74',
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
BLEND        75     83      521       3227       -3.0812149846E+01          
                                                                            
Nick Gould supplied BLEND from the Harwell collection of LP test problems.  
                                                                            
Concerning the problems he supplied, Nick Gould says that BLEND "is         
a variant of the [oil refinery] problem in Murtagh\'s book (the              
coefficients are different) which I understand John Reid obtained           
from the people at NPL (Gill and Murray?); they were also the original      
sources for the SC problems"                                                
                                                                            
Added to Netlib on 6 April 1989                                             
                                                                            
',
    b_field: 'full 74-by-1
',
    aux_fields: 'c: full 114-by-1
lo: full 114-by-1
hi: full 114-by-1
z0: full 1-by-1
',    norm: '7.469270e+01',
    min_singular_value: '8.076367e-02',
    condition_number: '9.248305e+02',
    svd_rank: '74',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
    image_files: 'lp_blend.png,lp_blend_svd.png,lp_blend_graph.gif,',
}
