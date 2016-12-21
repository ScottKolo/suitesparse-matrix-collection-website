{
    matrix_id: '637',
    name: 'lp_ken_07',
    group: 'LPnetlib',
    description: 'Netlib LP problem ken_07: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'J. Kennington',
    editor: 'D. Gay',
    date: '1991',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '2426',
    num_cols: '3602',
    nonzeros: '8404',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '990',
    structural_full_rank: 'true',
    structural_rank: '2426',
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
KEN-07     2427    3602     11981     7204    150525    718748  -6.7952044e+08
                                                                              
Submitted to Netlib by Irv Lustig.                                            
                                                                              
',
    b_field: 'full 2426-by-1
',
    aux_fields: 'c: full 3602-by-1
lo: full 3602-by-1
hi: full 3602-by-1
z0: full 1-by-1
',    norm: '7.524098e+00',
    min_singular_value: '1.156971e-15',
    condition_number: '6503274332657151',
    svd_rank: '2377',
    sprank_minus_rank: '49',
    null_space_dimension: '49',
    full_numerical_rank: 'no',
    svd_gap: '4571370173269.255859',
}
