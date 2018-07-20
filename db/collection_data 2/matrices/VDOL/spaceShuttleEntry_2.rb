{
    matrix_id: '2731',
    name: 'spaceShuttleEntry_2',
    group: 'VDOL',
    description: 'spaceShuttleEntry optimal control problem (matrix 2 of 4)',
    author: 'B. Senses, A. Rao',
    editor: 'T. Davis',
    date: '2015',
    kind: 'optimal control problem',
    problem_2D_or_3D: '0',
    num_rows: '1428',
    num_cols: '1428',
    nonzeros: '24073',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '1428',
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
                                                                       
VDOL/spaceShuttleEntry                                                 
                                                                       
Space shuttle launch vehicle reentry optimal control problem is taken  
from Ref.~\cite{betts2010practical}. The goal of the optimal control   
problem is to determine the state and the control that maximize the    
cross range (maximize the final latitude) during the atmospheric       
entry of a reusable launch vehicle. State of the system is defined by  
the position, velocity, and the orientation of the space shuttle and   
the control of the system is the angle of attack and the bank angle    
of the space shuttle. The specified accuracy tolerance of $10^{-8}$    
were satisfied after two mesh iterations. As the mesh refinement       
proceeds, the size of the KKT matrices increases from 560 to 2450.     
',
    b_field: 'full 1428-by-1
',
    aux_fields: 'rowname: full 1428-by-80
mapping: full 1428-by-1
',    image_files: 'spaceShuttleEntry_2.png,spaceShuttleEntry_2_graph.gif,',
}
