{
    matrix_id: '1943',
    name: 'CAG_mat72',
    group: 'JGD_CAG',
    description: 'CAG matrix set from Michael Monagan, Simon Fraser Univ., Canada',
    author: 'M. Monagan',
    editor: 'J.-G. Dumas',
    date: '2008',
    kind: 'combinatorial problem',
    problem_2D_or_3D: '0',
    num_rows: '72',
    num_cols: '72',
    nonzeros: '1012',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '6',
    num_dmperm_blocks: '6',
    structural_full_rank: 'true',
    structural_rank: '72',
    pattern_symmetry: '0.557',
    numeric_symmetry: '0.334',
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
                                                                       
Filename in JGD collection: CAG/mat72.sms                              
',
    norm: '6.090033e+01',
    min_singular_value: '6.931388e-03',
    condition_number: '8.786167e+03',
    svd_rank: '72',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
}
