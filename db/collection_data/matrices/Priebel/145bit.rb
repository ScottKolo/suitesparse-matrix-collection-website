{
    matrix_id: '2251',
    name: '145bit',
    group: 'Priebel',
    description: 'Quadratic sieve; factoring a 145bit number. D. Priebel, Tenn. Tech Univ',
    author: 'D. Priebel',
    editor: 'T. Davis',
    date: '2009',
    kind: 'combinatorial problem',
    problem_2D_or_3D: '0',
    num_rows: '1002',
    num_cols: '993',
    nonzeros: '11315',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '28',
    num_dmperm_blocks: '119',
    structural_full_rank: 'false',
    structural_rank: '964',
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
                                                                         
n = 27393004579711727757848513391018843988362569 (145-bits)              
passes primality test, n is composite, continuing...                     
1) Initial bound: 20000, pi(20000) estimate: 2019,                       
    largest found: 17569 (actual bound)                                  
2) Number of quadratic residues estimate: 1347, actual number found: 992 
3) Modular square roots found: 1984(2x residues)                         
4) Constructing smooth number list [sieving] (can take a while)...       
Sieving for: 1002                                                        
5. Constructing a matrix of size: 1002x993                               
Set a total of 11315 exponents, with 503 negatives                       
Matrix solution found with: 385 combinations                             
Divisor: 4762476283061573160587 (probably prime)                         
Divisor: 5751840629031342254587 (probably prime)                         
',
    aux_fields: 'factor_base: full 993-by-1
smooth_number: full 1002-by-22
solution: full 385-by-1
',    norm: '3.929637e+01',
    min_singular_value: '2.030612e-32',
    condition_number: '1.935198e+33',
    svd_rank: '964',
    sprank_minus_rank: '0',
    null_space_dimension: '29',
    full_numerical_rank: 'no',
    svd_gap: '45057812739804.773438',
}
