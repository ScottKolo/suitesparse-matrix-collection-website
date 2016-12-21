{
    matrix_id: '639',
    name: 'lp_ken_13',
    group: 'LPnetlib',
    description: 'Netlib LP problem ken_13: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'J. Kennington',
    editor: 'D. Gay',
    date: '1991',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '28632',
    num_cols: '42659',
    nonzeros: '97246',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '6099',
    structural_full_rank: 'true',
    structural_rank: '28632',
    pattern_symmetry: '0.000',
    numeric_symmetry: '0.000',
    rb_type: 'integer',
    structure: 'rectangular',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'A Netlib LP problem, in lp/data/kennington.  For more information             
send email to netlib@ornl.gov with the message:                               
                                                                              
	 send index from lp                                                          
	 send readme from lp/data                                                    
	 send readme from lp/data/kennington                                         
                                                                              
The following are relevant excerpts from lp/data/kennington/readme:           
                                                                              
The "Kennington" problems: sixteen problems described in "An Empirical        
Evaluation of the KORBX Algorithms for Military Airlift Applications"         
by W. J. Carolan, J. E. Hill, J. L. Kennington, S. Niemi, S. J.               
Wichmann (Operations Research vol. 38, no. 2 (1990), pp. 240-248).            
                                                                              
The following table gives some statistics for the "Kennington"                
problems.  The number of columns excludes slacks and surpluses.               
The bounds column tells how many entries appear in the BOUNDS                 
section of the MPS file.  The mpc column shows the bytes in                   
the problem after "uncompress" and before "emps"; MPS shows                   
the bytes after "emps".  The optimal values were computed by                  
Vanderbei\'s ALPO, running on an SGI computer (with binary IEEE                
arithmetic).                                                                  
                                                                              
Name       rows  columns  nonzeros  bounds      mpc      MPS     optimal value
KEN-13    28633   42659    139834    85318   1836457   8254122  -1.0257395e+10
                                                                              
Submitted to Netlib by Irv Lustig.                                            
                                                                              
',
    b_field: 'full 28632-by-1
',
    aux_fields: 'c: full 42659-by-1
lo: full 42659-by-1
hi: full 42659-by-1
z0: full 1-by-1
',    norm: '1.332551e+01',
    min_singular_value: '6.793105e-47',
    condition_number: '1.961623e+47',
    svd_rank: '28463',
    sprank_minus_rank: '169',
    null_space_dimension: '169',
    full_numerical_rank: 'no',
    svd_gap: '3290147826308.740234',
}
