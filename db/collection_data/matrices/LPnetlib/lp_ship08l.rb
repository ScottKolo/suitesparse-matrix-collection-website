{
    matrix_id: '686',
    name: 'lp_ship08l',
    group: 'LPnetlib',
    description: 'Netlib LP problem ship08l: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'R. Fourer',
    editor: 'R. Fourer',
    date: '',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '778',
    num_cols: '4363',
    nonzeros: '12882',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '67',
    num_dmperm_blocks: '26',
    structural_full_rank: 'false',
    structural_rank: '712',
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
SHIP08L     779   4283    17085     117083        1.9090552114E+06        
                                                                          
Supplied by Bob Fourer.                                                   
When included in Netlib: Extra free rows omitted.                         
Source: consulting.                                                       
                                                                          
',
    b_field: 'full 778-by-1
',
    aux_fields: 'c: full 4363-by-1
lo: full 4363-by-1
hi: full 4363-by-1
z0: full 1-by-1
',    norm: '1.791700e+01',
    min_singular_value: '0',
    condition_number: 'Inf',
    svd_rank: '712',
    sprank_minus_rank: '0',
    null_space_dimension: '66',
    full_numerical_rank: 'no',
    svd_gap: '8457982114167.816406',
}
