{
    matrix_id: '2252',
    name: '162bit',
    group: 'Priebel',
    description: 'Quadratic sieve; factoring a 162bit number. D. Priebel, Tenn. Tech Univ',
    author: 'D. Priebel',
    editor: 'T. Davis',
    date: '2009',
    kind: 'combinatorial problem',
    problem_2D_or_3D: '0',
    num_rows: '3606',
    num_cols: '3597',
    nonzeros: '37118',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '122',
    num_dmperm_blocks: '376',
    structural_full_rank: 'false',
    structural_rank: '3460',
    pattern_symmetry: '0.000',
    numeric_symmetry: '0.000',
    rb_type: 'binary',
    structure: 'rectangular',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'Each column in the matrix corresponds to a number in the factor base     
less than some bound B.  Each row corresponds to a smooth number (able   
to be completely factored over the factor base).  Each value in a row    
binary vector corresponds to the exponent of the factor base mod 2.      
For example:                                                             
                                                                         
    factor base: 2 7 23                                                  
    smooth numbers: 46, 28, 322                                          
    2^1       * 23^1 = 46                                                
    2^2 * 7^1        = 28                                                
    2^1 * 7^1 * 23^1 = 322                                               
    Matrix:                                                              
        101                                                              
        010                                                              
        111                                                              
                                                                         
A solution to the matrix is considered to be a set of rows which when    
combined in GF2 produce a null vector. Thus, if you multiply each of     
the smooth numbers which correspond to that particular set of rows you   
will get a number with only even exponents, making it a perfect          
square. In the above example you can see that combining the 3 vectors    
results in a null vector and, indeed, it is a perfect square: 644^2.     
                                                                         
Problem.A: A GF(2) matrix constructed from the exponents of the          
factorization of the smooth numbers over the factor base. A solution of  
this matrix is a kernel (nullspace). Such a solution has a 1/2 chance of 
being a factorization of N.                                              
                                                                         
Problem.aux.factor_base: The factor base used. factor_base(j) corresponds
to column j of the matrix. Note that a given column may or may not have  
nonzero elements in the matrix.                                          
                                                                         
Problem.aux.smooth_number: The smooth numbers, smooth over the factor    
base.  smooth_number(i) corresponds to row i of the matrix.              
                                                                         
Problem.aux.solution: A sample solution to the matrix. Combine, in GF(2) 
the rows with these indicies to produce a solution to the matrix with the
additional property that it factors N (a matrix solution only has 1/2    
probability of factoring N).                                             
                                                                         
Problem specific information:                                            
                                                                         
n = 3408489886335277144344023699527218196631767672957 (162-bits)         
passes primality test, n is composite, continuing...                     
1) Initial bound: 80000, pi(80000) estimate: 7086,                       
    largest found: 71549 (actual bound)                                  
2) Number of quadratic residues estimate: 4725, actual number found: 3596
3) Modular square roots found: 7192(2x residues)                         
4) Constructing smooth number list [sieving] (can take a while)...       
Sieving for: 3606                                                        
5. Constructing a matrix of size: 3606x3597                              
Set a total of 37118 exponents, with 1815 negatives                      
Matrix solution found with: 1474 combinations                            
Divisor: 1816046478796474796528999 (probably prime)                      
Divisor: 1876873706775468629074043 (probably prime)                      
',
    aux_fields: 'factor_base: full 3597-by-1
smooth_number: full 3606-by-25
solution: full 1474-by-1
',    norm: '5.880771e+01',
    min_singular_value: '0',
    condition_number: 'Inf',
    svd_rank: '3460',
    sprank_minus_rank: '0',
    null_space_dimension: '137',
    full_numerical_rank: 'no',
    svd_gap: '8118791076422.797852',
}
