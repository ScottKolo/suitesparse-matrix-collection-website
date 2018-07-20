{
    matrix_id: '606',
    name: 'lp_bore3d',
    group: 'LPnetlib',
    description: 'Netlib LP problem bore3d: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'R. Fourer',
    editor: 'R. Fourer',
    date: '',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '233',
    num_cols: '334',
    nonzeros: '1448',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '21',
    num_dmperm_blocks: '42',
    structural_full_rank: 'false',
    structural_rank: '232',
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
BORE3D      234    315     1525      13160  B     1.3730803942E+03        
                                                                          
        BOUND-TYPE TABLE                                                  
BORE3D     UP LO FX                                                       
                                                                          
Supplied by Bob Fourer.                                                   
Source: consulting.                                                       
Empty RHS section.                                                        
                                                                          
When included in Netlib: Extra free rows omitted.                         
                                                                          
',
    b_field: 'full 233-by-1
',
    aux_fields: 'c: full 334-by-1
lo: full 334-by-1
hi: full 334-by-1
z0: full 1-by-1
',    norm: '1.727325e+03',
    min_singular_value: '7.384565e-16',
    condition_number: '2339101790538267648',
    svd_rank: '231',
    sprank_minus_rank: '1',
    null_space_dimension: '2',
    full_numerical_rank: 'no',
    svd_gap: '39182457528283.757812',
    image_files: 'lp_bore3d.png,lp_bore3d_dmperm.png,lp_bore3d_scc.png,lp_bore3d_svd.png,lp_bore3d_graph.gif,',
}
