{
    matrix_id: '2254',
    name: '192bit',
    group: 'Priebel',
    description: 'Quadratic sieve; factoring a 192bit number. D. Priebel, Tenn. Tech Univ',
    author: 'D. Priebel',
    editor: 'T. Davis',
    date: '2009',
    kind: 'combinatorial problem',
    problem_2D_or_3D: '0',
    num_rows: '13691',
    num_cols: '13682',
    nonzeros: '154303',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '590',
    num_dmperm_blocks: '1903',
    structural_full_rank: 'false',
    structural_rank: '13006',
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
                                                                           
n = 4232562527578032866150921497850842593296760823796443077101 (192-bits)  
passes primality test, n is composite, continuing...                       
1) Initial bound: 350000, pi(350000) estimate: 27417,                      
    largest found: 317729 (actual bound)                                   
2) Number of quadratic residues estimate: 18279, actual number found: 13681
3) Modular square roots found: 27362(2x residues)                          
4) Constructing smooth number list [sieving] (can take a while)...         
Sieving for: 13691                                                         
5. Constructing a matrix of size: 13691x13682                              
Set a total of 154303 exponents, with 6893 negatives                       
Matrix solution found with: 5210 combinations                              
Divisor: 83135929635332984850508004533 (probably prime)                    
Divisor: 50911351399373573113182167897 (probably prime)                    
',
    aux_fields: 'factor_base: full 13682-by-1
smooth_number: full 13691-by-29
solution: full 5210-by-1
',    norm: '1.200496e+02',
    min_singular_value: '2.043076e-63',
    condition_number: '5.875923e+64',
    svd_rank: '13006',
    sprank_minus_rank: '0',
    null_space_dimension: '676',
    full_numerical_rank: 'no',
    svd_gap: '134010015898.320618',
    image_files: '192bit.png,192bit_dmperm.png,192bit_scc.png,192bit_svd.png,192bit_graph.gif,',
}
