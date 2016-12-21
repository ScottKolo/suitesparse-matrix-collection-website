{
    matrix_id: '610',
    name: 'lp_cre_b',
    group: 'LPnetlib',
    description: 'Netlib LP problem cre_b: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'J. Kennington',
    editor: 'I. Lustig',
    date: '1990',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '9648',
    num_cols: '77137',
    nonzeros: '260785',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '2409',
    num_dmperm_blocks: '6',
    structural_full_rank: 'false',
    structural_rank: '7240',
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
CRE-B      9649   72447    328542        0   2119719  10478735   2.3129640e+07
                                                                              
Submitted to Netlib by Irv Lustig.                                            
                                                                              
',
    b_field: 'full 9648-by-1
',
    aux_fields: 'c: full 77137-by-1
lo: full 77137-by-1
hi: full 77137-by-1
z0: full 1-by-1
',    norm: '1.931495e+02',
    min_singular_value: '0',
    condition_number: 'Inf',
    svd_rank: '7232',
    sprank_minus_rank: '8',
    null_space_dimension: '2416',
    full_numerical_rank: 'no',
    svd_gap: '18393425141043.886719',
}
