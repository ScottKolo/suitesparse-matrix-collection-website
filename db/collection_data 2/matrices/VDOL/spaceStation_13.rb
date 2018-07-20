{
    matrix_id: '2746',
    name: 'spaceStation_13',
    group: 'VDOL',
    description: 'spaceStation optimal control problem (matrix 13 of 14)',
    author: 'B. Senses, A. Rao',
    editor: 'T. Davis',
    date: '2015',
    kind: 'optimal control problem',
    problem_2D_or_3D: '0',
    num_rows: '1617',
    num_cols: '1617',
    nonzeros: '23649',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '3',
    num_dmperm_blocks: '7',
    structural_full_rank: 'true',
    structural_rank: '1617',
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
                                                                       
VDOL/spaceStation                                                      
                                                                       
Space station attitude optimal control problem is taken from           
Ref.~\cite{betts2010practical}. The goal of the space station          
attitude control problem is to determine the state and the control     
that minimize the magnitude of the final momentum while the space      
statition reaches an orientation at the final time that can be         
maintained without utilizing additional control torque. The state of   
the system is defined by the angular velocity of the spacecraft with   
respect to an inertial reference frame, Euler-Rodriguez parameters     
used to defined the vehicle attitude, and the angular momentum of the  
control moment gyroscope and the control of the system is the torque.  
The specified accuracy tolerance of $10^{-7}$ were satisfied after     
thirteen mesh iterations. As the mesh refinement proceeds, the size    
of the KKT matrices increases from 99 to 1640.                         
',
    b_field: 'full 1617-by-1
',
    aux_fields: 'rowname: full 1617-by-99
mapping: full 1617-by-1
',    image_files: 'spaceStation_13.png,spaceStation_13_dmperm.png,spaceStation_13_scc.png,spaceStation_13_graph.gif,',
}
