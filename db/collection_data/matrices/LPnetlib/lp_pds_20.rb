{
    matrix_id: '652',
    name: 'lp_pds_20',
    group: 'LPnetlib',
    description: 'Netlib LP problem pds_20: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'J. Kennington',
    editor: 'I. Lustig',
    date: '1990',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '33874',
    num_cols: '108175',
    nonzeros: '232647',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '77',
    num_dmperm_blocks: '853',
    structural_full_rank: 'false',
    structural_rank: '33798',
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
PDS-20    33875  105728    304153    34888   2856653  11550890   2.3821659e+10
                                                                              
Submitted to Netlib by Irv Lustig.                                            
                                                                              
',
    b_field: 'full 33874-by-1
',
    aux_fields: 'c: full 108175-by-1
lo: full 108175-by-1
hi: full 108175-by-1
z0: full 1-by-1
',    norm: '9.854167e+00',
    min_singular_value: '0',
    condition_number: 'Inf',
    svd_rank: '33787',
    sprank_minus_rank: '11',
    null_space_dimension: '87',
    full_numerical_rank: 'no',
    svd_gap: '84444420574982.359375',
}
