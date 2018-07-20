{
    matrix_id: '1942',
    name: 'CAG_mat364',
    group: 'JGD_CAG',
    description: 'CAG matrix set from Michael Monagan, Simon Fraser Univ., Canada',
    author: 'M. Monagan',
    editor: 'J.-G. Dumas',
    date: '2008',
    kind: 'combinatorial problem',
    problem_2D_or_3D: '0',
    num_rows: '364',
    num_cols: '364',
    nonzeros: '13585',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '12',
    num_dmperm_blocks: '12',
    structural_full_rank: 'true',
    structural_rank: '364',
    pattern_symmetry: '0.416',
    numeric_symmetry: '0.280',
    rb_type: 'integer',
    structure: 'unsymmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'CAG matrix set from Michael Monagan, Simon Fraser Univ., Canada        
From Jean-Guillaume Dumas\' Sparse Integer Matrix Collection,           
http://ljk.imag.fr/membres/Jean-Guillaume.Dumas/simc.html              
                                                                       
Strongly Connected Graph Components and Computing                      
Characteristic Polynomials of Integer Matrices in Maple,               
Simon Lo, Michael Monagan, Allan Wittkopf                              
{sclo,mmonagan,wittkopf} at cecm.sfu.ca                                
Centre for Experimental and Constructive Mathematics,                  
Department of Mathematics, Simon Fraser University,                    
Burnaby, B.C., V5A 1S6, Canada.                                        
                                                                       
abstract:                                                              
Let A be an n x n matrix of integers. We present details of our Maple  
implementation of a simple modular method for computing the            
characteristic polynomial of A.  We consider several different         
representations for the computation modulo primes, in particular, the  
use of double precision floats.  The algorithm used in Maple releases  
7-10 is the Berkowitz algorithm. We present some timings comparing the 
two algorithms on a sequence of matrices arising from an application in
combinatorics of Jocelyn Quaintance. These matrices have a hidden block
structure. Once identified, we can further reduce the computing time   
dramatically.  This work has been incorporated into Maple 11\'s         
LinearAlgebra package.                                                 
                                                                       
http://www.cecm.sfu.ca/~monaganm/papers/CP8.pdf                        
                                                                       
Filename in JGD collection: CAG/mat364.sms                             
',
    norm: '2.358416e+02',
    min_singular_value: '1.641705e-03',
    condition_number: '1.436565e+05',
    svd_rank: '364',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
    image_files: 'CAG_mat364.png,CAG_mat364_dmperm.png,CAG_mat364_svd.png,CAG_mat364_APlusAT_graph.gif,CAG_mat364_graph.gif,',
}
