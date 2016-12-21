{
    matrix_id: '2675',
    name: 'freeFlyingRobot_3',
    group: 'VDOL',
    description: 'freeFlyingRobot optimal control problem (matrix 3 of 16)',
    author: 'B. Senses, A. Rao',
    editor: 'T. Davis',
    date: '2015',
    kind: 'optimal control problem',
    problem_2D_or_3D: '0',
    num_rows: '1718',
    num_cols: '1718',
    nonzeros: '12922',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '2',
    num_dmperm_blocks: '3',
    structural_full_rank: 'true',
    structural_rank: '1718',
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
                                                                       
VDOL/freeFlyingRobot                                                   
                                                                       
Free flying robot optimal control problem is taken from                
Ref.~\cite{sakawa1999trajectory}. Free flying robot technology is      
expected to play an important role in unmanned space missions.         
Although NASA currently has free flying robots, called spheres,        
inside the International Space Station (ISS), these free flying        
robots have neither the technology nor the hardware to complete        
inside and outside inspection and maintanance. NASA\'s new plan is to   
send new free flying robots to ISS that are capable of completing      
housekeeping of ISS during off hours and working in extreme            
environments for the external maintanance of ISS. As a result, the     
crew in ISS can have more time for science experiments. The current    
free flying robots in ISS works are equipped with a propulsion         
system. The goal of the free flying robot optimal control problem is   
to determine the state and the control that minimize the magnitude of  
thrust during a mission. The state of the system is defined by the     
inertial coordinates of the center of gravity, the corresponding       
velocity, thrust direction, and the anglular velocity and the control  
is the thrust from two engines. The specified accuracy tolerance of    
$10^{-6}$ were satisfied after eight mesh iterations. As the mesh      
refinement proceeds, the size of the KKT matrices increases from 798   
to 6078.                                                               
',
    b_field: 'full 1718-by-1
',
    aux_fields: 'rowname: full 1718-by-100
mapping: full 1718-by-1
',}
