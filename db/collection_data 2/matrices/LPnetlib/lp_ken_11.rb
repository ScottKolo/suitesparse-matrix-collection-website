{
    matrix_id: '638',
    name: 'lp_ken_11',
    group: 'LPnetlib',
    description: 'Netlib LP problem ken_11: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'J. Kennington',
    editor: 'D. Gay',
    date: '1991',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '14694',
    num_cols: '21349',
    nonzeros: '49058',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '4610',
    structural_full_rank: 'true',
    structural_rank: '14694',
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
KEN-11    14695   21349     70354    42698    928171   4167698  -6.9723823e+09
                                                                              
Submitted to Netlib by Irv Lustig.                                            
                                                                              
',
    b_field: 'full 14694-by-1
',
    aux_fields: 'c: full 21349-by-1
lo: full 21349-by-1
hi: full 21349-by-1
z0: full 1-by-1
',    norm: '1.146201e+01',
    min_singular_value: '3.105103e-15',
    condition_number: '3691347823994630',
    svd_rank: '14573',
    sprank_minus_rank: '121',
    null_space_dimension: '121',
    full_numerical_rank: 'no',
    svd_gap: '561075506156.227661',
    image_files: 'lp_ken_11.png,lp_ken_11_dmperm.png,lp_ken_11_svd.png,lp_ken_11_graph.gif,',
}
