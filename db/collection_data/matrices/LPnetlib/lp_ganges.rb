{
    matrix_id: '628',
    name: 'lp_ganges',
    group: 'LPnetlib',
    description: 'Netlib LP problem ganges: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'L. Schrage',
    editor: 'D. Gay',
    date: '',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '1309',
    num_cols: '1706',
    nonzeros: '6937',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '185',
    structural_full_rank: 'true',
    structural_rank: '1309',
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
GANGES     1310   1681     7021      60191  B    -1.0958636356E+05        
                                                                          
        BOUND-TYPE TABLE                                                  
GANGES     UP LO                                                          
                                                                          
Submitted by Linus Schrage.                                               
When included in Netlib: Extra free rows omitted;                         
Cost coefficients negated.                                                
                                                                          
Bob Bixby reports that the CPLEX solver (running on a Sparc station)      
finds slightly different optimal values for some of the problems.         
On a MIPS processor, MINOS version 5.3 (with crash and scaling of         
December 1989) also finds different optimal values for some of the        
problems.  The following table shows the values that differ from those    
shown above.  (Whether CPLEX finds different values on the recently       
added problems remains to be seen.)                                       
                                                                          
Problem        CPLEX(Sparc)          MINOS(MIPS)                          
GANGES      -1.0958573613E+05    -1.0958577038E+05                        
',
    b_field: 'full 1309-by-1
',
    aux_fields: 'c: full 1706-by-1
lo: full 1706-by-1
hi: full 1706-by-1
z0: full 1-by-1
',    norm: '3.990758e+00',
    min_singular_value: '1.870768e-04',
    condition_number: '2.133219e+04',
    svd_rank: '1309',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
}
