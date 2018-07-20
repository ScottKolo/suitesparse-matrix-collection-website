{
    matrix_id: '649',
    name: 'lp_pds_02',
    group: 'LPnetlib',
    description: 'Netlib LP problem pds_02: minimize c\'*x, where Ax=b, lo<=x<=hi',
    author: 'J. Kennington',
    editor: 'I. Lustig',
    date: '1990',
    kind: 'linear programming problem',
    problem_2D_or_3D: '0',
    num_rows: '2953',
    num_cols: '7716',
    nonzeros: '16571',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '300',
    structural_full_rank: 'true',
    structural_rank: '2953',
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
PDS-02     2954    7535     21252     2134    197821    801690   2.8857862e+10
                                                                              
Submitted to Netlib by Irv Lustig.                                            
                                                                              
',
    b_field: 'full 2953-by-1
',
    aux_fields: 'c: full 7716-by-1
lo: full 7716-by-1
hi: full 7716-by-1
z0: full 1-by-1
',    norm: '9.593919e+00',
    min_singular_value: '1.534123e-15',
    condition_number: '6253681479935428',
    svd_rank: '2942',
    sprank_minus_rank: '11',
    null_space_dimension: '11',
    full_numerical_rank: 'no',
    svd_gap: '53025736853921.695312',
    image_files: 'lp_pds_02.png,lp_pds_02_dmperm.png,lp_pds_02_svd.png,lp_pds_02_graph.gif,',
}
