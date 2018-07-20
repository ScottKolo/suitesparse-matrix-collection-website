{
    matrix_id: '2404',
    name: 'power',
    group: 'Newman',
    description: 'Western States Power Grid, Watts & Strogatz',
    author: 'D. Watts, S. Strogatz',
    editor: 'M. Newman',
    date: '1998',
    kind: 'undirected graph',
    problem_2D_or_3D: '0',
    num_rows: '4941',
    num_cols: '4941',
    nonzeros: '13188',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    pattern_symmetry: '1.000',
    numeric_symmetry: '1.000',
    rb_type: 'binary',
    structure: 'symmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'Network collection from M. Newman                                          
http://www-personal.umich.edu/~mejn/netdata/                               
                                                                           
Western States Power Grid                                                  
                                                                           
Compiled by Duncan Watts and Steven Strogatz                               
                                                                           
The graph "power" contains an undirected unweighted representation of the  
topology of the Western States Power Grid of the United States, compiled by
Duncan Watts and Steven Strogatz.  The data are from the web site of       
Prof. Duncan Watts at Columbia University,                                 
http://cdg.columbia.edu/cdg/datasets.  Node IDs are the same as those used 
by Prof. Watts.                                                            
                                                                           
These data can be cited as:                                                
                                                                           
  D. J. Watts and S. H. Strogatz, "Collective dynamics of `small-world     
  networks", Nature 393, 440-442 (1998).                                   
                                                                           
Note by Tim Davis: this graph has the same number of nodes and edges       
as the Pajek/USpowerGrid graph.  They are related as follows:              
                                                                           
   Prob1 = UFget (\'Newman/power\')                                          
   Prob2 = UFget (\'Pajek/USpowerGrid\')                                     
   A = Prob1.A ;                                                           
   B = Prob2.B ;                                                           
   n = size (A,1) ;                                                        
   p = [2:n 1] ;                                                           
   isequal (A (p,p), B)                                                    
                                                                           
This is because of the way the Pajek data set converted 0-based node IDs   
to 1-based.  In the Pajek set, node 0 is renamed node n, and this          
translation was then imported into the Pajek/ Group in the UF collection.  
The standard convention in MATLAB, and (elsewhere) in the UF Collection,   
is to map nodes 0:n-1 of a zero-based graph to 1:n.  The latter translation
preserves the relative numbering of all the nodes; the Pajek translation   
does not.                                                                  
                                                                           
Although technically Newman/power is a duplicate matrix, I have added it   
to the UF Collection to preserve the original relative node ordering.      
',
    norm: '7.483051e+00',
    min_singular_value: '3.108519e-19',
    condition_number: '2.407272e+19',
    svd_rank: '4348',
    null_space_dimension: '593',
    full_numerical_rank: 'no',
    svd_gap: '2232672306573.043945',
    image_files: 'power.png,power_svd.png,power_graph.gif,',
}
