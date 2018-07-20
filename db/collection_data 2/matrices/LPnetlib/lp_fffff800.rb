{
    matrix_id: '622',
    name: 'lp_fffff800',
    group: 'LPnetlib',
    description: 'Netlib LP problem fffff800: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'J. Reid',
    editor: 'D. Gay',
    date: '',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '524',
    num_cols: '1028',
    nonzeros: '6401',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '38',
    structural_full_rank: 'true',
    structural_rank: '524',
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
FFFFF800    525    854     6235      39637        5.5567961165E+05        
                                                                          
From John Reid.                                                           
When included in Netlib: Extra right-hand side vectors omitted;           
extra bound sets omitted.                                                 
FFFFF800 is sometimes called POWELL.                                      
                                                                          
Bob Bixby reports that the CPLEX solver (running on a Sparc station)      
finds slightly different optimal values for some of the problems.         
On a MIPS processor, MINOS version 5.3 (with crash and scaling of         
December 1989) also finds different optimal values for some of the        
problems.  The following table shows the values that differ from those    
shown above.  (Whether CPLEX finds different values on the recently       
added problems remains to be seen.)                                       
                                                                          
Problem        CPLEX(Sparc)          MINOS(MIPS)                          
FFFFF800     5.5567956482E+05     5.5567958085E+05                        
',
    b_field: 'full 524-by-1
',
    aux_fields: 'c: full 1028-by-1
lo: full 1028-by-1
hi: full 1028-by-1
z0: full 1-by-1
',    norm: '1.102928e+05',
    min_singular_value: '7.365515e-06',
    condition_number: '1.497422e+10',
    svd_rank: '524',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
    image_files: 'lp_fffff800.png,lp_fffff800_dmperm.png,lp_fffff800_svd.png,lp_fffff800_graph.gif,',
}
