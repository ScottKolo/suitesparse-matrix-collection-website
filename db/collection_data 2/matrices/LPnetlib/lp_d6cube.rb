{
    matrix_id: '616',
    name: 'lp_d6cube',
    group: 'LPnetlib',
    description: 'Netlib LP problem d6cube: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'R. Hughes',
    editor: 'D. Gay',
    date: '1993',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '415',
    num_cols: '6184',
    nonzeros: '37704',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '12',
    num_dmperm_blocks: '3',
    structural_full_rank: 'false',
    structural_rank: '404',
    pattern_symmetry: '0.000',
    numeric_symmetry: '0.000',
    rb_type: 'integer',
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
D6CUBE      416   6184    43888     167633  B     3.1549166667E+02        
                                                                          
        BOUND-TYPE TABLE                                                  
D6CUBE        LO                                                          
                                                                          
Supplied by Robert Hughes.                                                
                                                                          
Of D6CUBE, Robert Hughes says, "Mike Anderson and I are working on the    
problem of finding the minimum cardinality of triangulations of the       
6-dimensional cube.  The optimal objective value of the problem I sent    
you provides a lower bound for the cardinalities of all triangulations    
which contain a certain simplex of volume 8/6! and which contains the     
centroid of the 6-cube in its interior.  The linear programming           
problem is not easily described."                                         
                                                                          
Added to Netlib on 26 March 1993                                          
',
    b_field: 'full 415-by-1
',
    aux_fields: 'c: full 6184-by-1
lo: full 6184-by-1
hi: full 6184-by-1
z0: full 1-by-1
',    norm: '7.034080e+02',
    min_singular_value: '4.059122e-92',
    condition_number: '1.732907e+94',
    svd_rank: '404',
    sprank_minus_rank: '0',
    null_space_dimension: '11',
    full_numerical_rank: 'no',
    svd_gap: '171301644568634.000000',
    image_files: 'lp_d6cube.png,lp_d6cube_dmperm.png,lp_d6cube_scc.png,lp_d6cube_svd.png,lp_d6cube_graph.gif,',
}
