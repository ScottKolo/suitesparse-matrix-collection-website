{
    matrix_id: '2703',
    name: 'kineticBatchReactor_8',
    group: 'VDOL',
    description: 'kineticBatchReactor optimal control problem (matrix 8 of 9)',
    author: 'B. Senses, A. Rao',
    editor: 'T. Davis',
    date: '2015',
    kind: 'optimal control problem',
    problem_2D_or_3D: '0',
    num_rows: '8052',
    num_cols: '8052',
    nonzeros: '85194',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '3',
    num_dmperm_blocks: '11',
    structural_full_rank: 'true',
    structural_rank: '8052',
    pattern_symmetry: '1.000',
    numeric_symmetry: '1.000',
    rb_type: 'real',
    structure: 'symmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'Optimal control problem, Vehicle Dynamics & Optimization Lab, UF       
Anil Rao and Begum Senses, University of Florida                       
http://vdol.mae.ufl.edu                                                
                                                                       
This matrix arises from an optimal control problem described below.    
Each optimal control problem gives rise to a sequence of matrices of   
different sizes when they are being solved inside GPOPS, an optimal    
control solver created by Anil Rao, Begum Senses, and others at in VDOL
lab at the University of Florida.  This is one of the matrices in one  
of these problems.  The matrix is symmetric indefinite.                
                                                                       
Rao, Senses, and Davis have created a graph coarsening strategy        
that matches pairs of nodes.  The mapping is given for this matrix,    
where map(i)=k means that node i in the original graph is mapped to    
node k in the smaller graph.  map(i)=map(j)=k means that both nodes    
i and j are mapped to the same node k, and thus nodes i and j have     
been merged.                                                           
                                                                       
This matrix consists of a set of nodes (rows/columns) and the          
names of these rows/cols are given                                     
                                                                       
Anil Rao, Begum Sense, and Tim Davis, 2015.                            
                                                                       
VDOL/kineticBatchReactor                                               
',
    b_field: 'full 8052-by-1
',
    aux_fields: 'rowname: full 8052-by-101
mapping: full 8052-by-1
',    image_files: 'kineticBatchReactor_8.png,kineticBatchReactor_8_dmperm.png,kineticBatchReactor_8_scc.png,kineticBatchReactor_8_graph.gif,',
}
