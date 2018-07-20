{
    matrix_id: '2575',
    name: 'preferentialAttachment',
    group: 'DIMACS10',
    description: 'DIMACS10 set: clustering/preferentialAttachment',
    author: 'H. Meyerhenke',
    editor: 'H. Meyerhenke',
    date: '2011',
    kind: 'random undirected graph',
    problem_2D_or_3D: '0',
    num_rows: '100000',
    num_cols: '100000',
    nonzeros: '999970',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    pattern_symmetry: '1.000',
    numeric_symmetry: '1.000',
    rb_type: 'binary',
    structure: 'symmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'DIMACS10 set: clustering/preferentialAttachment                    
source: http://www.cc.gatech.edu/dimacs10/archive/clustering.shtml 
                                                                   
This graph has been generated following a preferential attachment  
process (see Barabási and Albert, "Emergence of scaling in random  
networks", Science, 1999). Starting with a clique of five vertices,
the vertices are successively added to the graph. Each new vertex  
chooses exactly five neighbors among the existing vertices, such   
that the probability of choosing a particular vertex is            
proportional to its degree. In our implementation, a vertex can    
choose a neighbour only once, such that the resulting random graph 
is guaranteed to be simple.                                        
',
    image_files: 'preferentialAttachment.png,preferentialAttachment_graph.gif,',
}
