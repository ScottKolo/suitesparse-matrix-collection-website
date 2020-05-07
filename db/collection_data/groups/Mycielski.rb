{
    name: 'Mycielski',
    num_matrices: '19',
    notes: 'Mycielski graph adjacency matrices                                              
                                                                                
matrices/Mycielski/README. Scott Kolodziej, June 27, 2018.                      
                                                                                
The Mycielskian graph sequence generates graphs that are triangle-free          
and with a known chromatic number (i.e. the minimum number of colors            
required to color the vertices of the graph). The sequence starts with a        
2 vertex, 1 edge graph (denoted M2) and repeatedly generates subsequent         
graphs by applying the Mycielskian operation.                                   
                                                                                
In MATLAB, the (sparse) Mycielskian operation can be written as follows:        
                                                                                
function M_new = mycielski(M)                                                   
    [n,~] = size(M);                                                            
    m = nnz(M);                                                                 
    M_new = sparse([], [], [], 2*n+1, 2*n+1, 3*m+n);                            
    M_new(1:n, 1:n) = M;                                                        
    M_new((n+1):2*n, :) = sparse([M sparse(n,n) ones(n,1)]);                    
    M_new(:, (n+1):2*n) = sparse([M; sparse(n,n); ones(1,n)]);                  
end                                                                             
                                                                                
More abstractly, the structure of the Mycielskian operation can be represented  
by the block matrix below:                                                      
                              n     n   1                                       
                            _____ _____ _                                       
                           |     |     | |                                      
                         n |  M  |  M  |0|                                      
                           |_____|_____|_|                                      
                M_new =    |     |     | |                                      
                         n |  M  |  0  |1|                                      
                           |_____|_____|_|                                      
                         1 |  0  |  1  |0|                                      
                            -------------                                       
                                                                                
Known properties of the Mycielskian operation include the following:            
                                                                                
 * If a graph has a minimum chromatic number k, the Mycielskian of that graph   
   has a minimum chromatic number of k + 1.                                     
 * If a graph is triangle-free (i.e. no cycles of length 3 exist), so is the    
   Mycielskian of that graph.                                                   
 * If a graph has a Hamiltonian cycle, so does the Mycielskian of that graph.   
 * If a graph is factor-critical, so is the Mycielskian of that graph, meaning  
   that every subgraph of |V|-1 vertices has a perfect matching.                
                                                                                
Mycielski graphs were first described by Jan Mycielski in the following         
publication:                                                                    
                                                                                
    Mycielski, J., 1955. Sur le coloriage des graphes. Colloq. Math.,           
    3: 161-162.                                                                 
                                                                                
--------------------------------------------------------------------------------
',

}

