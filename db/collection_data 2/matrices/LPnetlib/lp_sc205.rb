{
    matrix_id: '665',
    name: 'lp_sc205',
    group: 'LPnetlib',
    description: 'Netlib LP problem sc205: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'J. Ho, E. Loute',
    editor: 'R. Fourer',
    date: '',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '205',
    num_cols: '317',
    nonzeros: '665',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '3',
    num_dmperm_blocks: '3',
    structural_full_rank: 'true',
    structural_rank: '205',
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
SC205       206    203      552       6380       -5.2202061212E+01        
                                                                          
Supplied by Bob Fourer.                                                   
Source: J.K. Ho and E. Loute, "A Set of Staircase Linear Programming      
Test Problems", Math. Prog. 20 (1981), pp. 245-250.                       
',
    b_field: 'full 205-by-1
',
    aux_fields: 'c: full 317-by-1
lo: full 317-by-1
hi: full 317-by-1
z0: full 1-by-1
',    norm: '4.100817e+00',
    min_singular_value: '3.247693e-02',
    condition_number: '1.262686e+02',
    svd_rank: '205',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
    image_files: 'lp_sc205.png,lp_sc205_dmperm.png,lp_sc205_scc.png,lp_sc205_svd.png,lp_sc205_graph.gif,',
}
