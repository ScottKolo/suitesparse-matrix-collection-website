{
    matrix_id: '2726',
    name: 'reorientation_5',
    group: 'VDOL',
    description: 'reorientation optimal control problem (matrix 5 of 8)',
    author: 'B. Senses, A. Rao',
    editor: 'T. Davis',
    date: '2015',
    kind: 'optimal control problem',
    problem_2D_or_3D: '0',
    num_rows: '2904',
    num_cols: '2904',
    nonzeros: '35590',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '2',
    num_dmperm_blocks: '3',
    structural_full_rank: 'true',
    structural_rank: '2904',
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
                                                                       
VDOL/reorientation                                                     
                                                                       
Minimum-time reorientation of an asymmetric rigid body optimal         
control problem is taken from Ref.~\cite{betts2010practical}. The      
goal of the problem is to determine the state and the control that     
minimize the time that is required to reorient a rigid body. The       
state of the system is defined by quaternians that gives the           
orientation of the spacecraft and the angular velocity of the          
spacecraft and the control of the system is torque. The vehicle data   
that is used to model the dynamics are taken from NASA X-ray Timing    
Explorer spacecraft.  The specified accuracy tolerance of $10^{-8}$    
were satisfied after eight mesh iterations. As the mesh refinement     
proceeds, the size of the KKT matrices increases from 677 to 3108.     
                                                                       
@book{betts2010practical,                                              
  title={Practical Methods for Optimal Control and Estimation          
     Using Nonlinear Programming},                                     
  author={Betts, John T},                                              
  volume={19},                                                         
  year={2010},                                                         
  publisher={SIAM Press},                                              
  address = {Philadelphia, Pennsylvania},                              
}                                                                      
',
    b_field: 'full 2904-by-1
',
    aux_fields: 'rowname: full 2904-by-81
mapping: full 2904-by-1
',}
