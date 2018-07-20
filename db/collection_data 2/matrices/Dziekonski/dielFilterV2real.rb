{
    matrix_id: '2386',
    name: 'dielFilterV2real',
    group: 'Dziekonski',
    description: 'High-order vector finite element method in EM',
    author: 'A. Dziekonski, A. Lamecki, M. Mrozowski',
    editor: 'T. Davis',
    date: '2011',
    kind: 'electromagnetics problem',
    problem_2D_or_3D: '1',
    num_rows: '1157456',
    num_cols: '1157456',
    nonzeros: '48538952',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '1157456',
    pattern_symmetry: '1.000',
    numeric_symmetry: '1.000',
    rb_type: 'real',
    structure: 'symmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'High order vector finite element method in electromagnetics       
                                                                  
The dielFilter* matrices came from analysis of a 4th-pole         
dielectric resonator [4] generated with Finite Element Method.    
The tetrahedral mesh of the structure was generated with the      
Netgen mesher [2].  The matrices were used as an example in       
our paper [3].                                                    
                                                                  
dielFilterV2clx - complex symmetric matrix (607,232 x 607,232),   
    25,309,272 nonzero (real) and 728,900 nonzero (imag) elements.
    First 109,108 unknowns correspond to lowest level base        
    functions.                                                    
                                                                  
dielFilterV2real - real symmetric matrix (1,157,456 x 1,157,456)  
    and 48,538,952 nonzero elements.  First 209,432 unknowns      
    correspond to lowest level base functions.                    
                                                                  
dielFilterV3clx - complex symmetric matrix (420,408 x 420,408),   
    32,886,208 nonzero (real) and 3,706,513 (imag) elements. First
    24,716 unknowns correspond to lowest level base functions,    
    next 116,152 unknowns correspond to the second level.         
                                                                  
dielFilterV3real - real symmetric matrix (1,102,824 x 1,102,824)  
    and 89,306,020 nonzero elements. First 66,353 unknowns        
    correspond to lowest level base functions, next 305,729       
    unknowns correspond to the  second level.                     
                                                                  
All matrices are sparse and come with right-hand-sides.           
                                                                  
[2] J. Schoberl, "NETGEN An advancing front 2D/3D-mesh            
generator based on abstract rules," Computing and Visualization   
in Science, vol. 1, No. 1, pp.  41-52, July 1997                  
                                                                  
[3] A. Dziekonski, A. Lamecki, M. Mrozowski, Tuning A             
Hybrid GPU-CPU V-cycle Multilevel Preconditioner for Solving      
Large Real and Complex Systems of FEM Equations.                  
                                                                  
[4] F. Alessandri, M. Chiodetti, A. Giugliarelli; D. Maiarelli,   
G. Martirano, D. Schmitt, L. Vanni and F. Vitulli.  The           
electric-field Integral-equation method for the analysis and      
design of a class of rectangular cavity filters loaded by         
dielectric and metallic cylindrical pucks, Microwave Theory       
and Techniques, IEEE Transactions on, vol. 52, no 8, pp.          
1790-1797, Aug. 2004.                                             
',
    b_field: 'full 1157456-by-1
',
    image_files: 'dielFilterV2real.png,dielFilterV2real_graph.gif,',
}
