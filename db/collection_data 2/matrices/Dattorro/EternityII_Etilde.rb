{
    matrix_id: '2382',
    name: 'EternityII_Etilde',
    group: 'Dattorro',
    description: 'Dattorro Convex Optimization of Eternity II (second reduction)',
    author: 'J. Dattorro',
    editor: 'T. Davis',
    date: '2011',
    kind: 'optimization problem',
    problem_2D_or_3D: '0',
    num_rows: '10054',
    num_cols: '204304',
    nonzeros: '1170516',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '5',
    structural_full_rank: 'true',
    structural_rank: '10054',
    pattern_symmetry: '0.000',
    numeric_symmetry: '0.000',
    rb_type: 'integer',
    structure: 'rectangular',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'Dattorro Convex Optimization of Eternity II, Jon Dattoro           
                                                                   
An Eternity II puzzle (http://www.eternityii.com/) problem         
formulation A*x=b is discussed thoroughly in section 4.6.0.0.15 of 
the book Convex Optimization & Euclidean Distance Geometry which   
is freely available. That A matrix is obtained by presolving a     
sparse 864,593-by-1,048,576 system.  The 3 problems in this set    
contains three successive reductions, each equivalent to that      
larger system:                                                     
                                                                   
   * EternityII_E: a 11077-by-262144 system E*x=tau, where tau is  
       11077-by-1.  This is the million column Eternity II matrix  
       having redundant rows and columns removed analytically.     
       In the UF Collection, E is the Problem.A matrix, and tau    
       is Problem.b.  All entries in E are from the set {-1,0,1,2}.
       tau is binary and very sparse.                              
                                                                   
   * EternityII_Etilde: a 10054-by-204304 system Etilde*x=tautilde 
       with tautilde of size 10054-by-1.  The system has columns   
       removed corresponding to some known zero variables          
       (removal produced dependent rows).  In the UF Collection,   
       Etilde is the Problem.A matrix, and tautilde is Problem.b.  
       All entries in Etilde are from the set {-1,0,1}.            
       tautilde is binary and very sparse.                         
                                                                   
   * EternityII_A: a 7362-by-150638 system A*x=b, where b is       
       7362-by-1.  This system has columns removed not in          
       smallest face (containing tautilde) of polyhedral cone K =  
       { Etilde*x | x >= 0 }.                                      
                                                                   
The following linear program is a very difficult problem that      
remains unsolved:                                                  
                                                                   
    maximize_x z\'*x, subject to A*x=b and x >= 0                   
                                                                   
The matrix A in the EternityII_A problem is sparse, having only    
782,087 nonzeros.  All entries of A are integers from the set      
{-1,0,1}.  The vector b is binary, with only 358 nonzeros.         
                                                                   
Direction vector z is determined by Convex Iteration:              
                                                                   
    maximize_z z\'*x^{star},                                        
    subject to 0 <= z <= 1 and z\'*1 = 256                          
                                                                   
(for a vector x, x >= 0 means all(x>-0) in MATLAB notation)        
                                                                   
These two problems are iterated to find a minimal cardinality      
solution x.  Constraint A*x=b bounds the variable from above by 1. 
Any minimal cardinality solution is binary and solves the Eternity 
II puzzle. The Eternity II puzzle is solved when                   
z^{star}\'*x^{star} = 256.                                          
                                                                   
Minimal cardinality of this Eternity II problem is equal to number 
of puzzle pieces, 256.                                             
                                                                   
Comment: The technique, convex iteration, requires no modification 
(and works very well) when applied instead to mixed integer        
programming (MIP, not discussed in book). There is no modification 
to the linear program statement here except 256 variables,         
corresponding to the largest entries of iterate x^{star}, are      
declared binary.                                                   
                                                                   
For more details, see                                              
http://www.convexoptimization.com/wikimization/index.php           
/Dattorro_Convex_Optimization_of_Eternity_II (url is wrapped),     
and https://ccrma.stanford.edu/~dattorro/ .                        
',
    b_field: 'sparse 10054-by-1
',
    norm: '4.271701e+01',
    min_singular_value: '2.200734e-02',
    condition_number: '1.941035e+03',
    svd_rank: '10054',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
    image_files: 'EternityII_Etilde.png,EternityII_Etilde_dmperm.png,EternityII_Etilde_svd.png,EternityII_Etilde_graph.gif,',
}
