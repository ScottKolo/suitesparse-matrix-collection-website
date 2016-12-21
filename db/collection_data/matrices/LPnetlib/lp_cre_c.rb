{
    matrix_id: '611',
    name: 'lp_cre_c',
    group: 'LPnetlib',
    description: 'Netlib LP problem cre_c: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'J. Kennington',
    editor: 'I. Lustig',
    date: '1990',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '3068',
    num_cols: '6411',
    nonzeros: '15977',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '83',
    num_dmperm_blocks: '17',
    structural_full_rank: 'false',
    structural_rank: '2986',
    pattern_symmetry: '0.000',
    numeric_symmetry: '0.000',
    rb_type: 'real',
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
CRE-C      3069    3678     16922        0    135315    587817   2.5275116e+07
                                                                              
Submitted to Netlib by Irv Lustig.                                            
                                                                              
',
    b_field: 'full 3068-by-1
',
    aux_fields: 'c: full 6411-by-1
lo: full 6411-by-1
hi: full 6411-by-1
z0: full 1-by-1
',    norm: '1.809899e+02',
    min_singular_value: '0',
    condition_number: 'Inf',
    svd_rank: '2981',
    sprank_minus_rank: '5',
    null_space_dimension: '87',
    full_numerical_rank: 'no',
    svd_gap: '6582243103929.253906',
}
