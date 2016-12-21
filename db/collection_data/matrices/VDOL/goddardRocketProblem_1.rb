{
    matrix_id: '2689',
    name: 'goddardRocketProblem_1',
    group: 'VDOL',
    description: 'goddardRocketProblem optimal control problem (matrix 1 of 2)',
    author: 'B. Senses, A. Rao',
    editor: 'T. Davis',
    date: '2015',
    kind: 'optimal control problem',
    problem_2D_or_3D: '0',
    num_rows: '831',
    num_cols: '831',
    nonzeros: '8498',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '45',
    structural_full_rank: 'true',
    structural_rank: '831',
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
                                                                       
VDOL/goddardRocketProblem                                              
                                                                       
Goddard rocket maximum ascent optimal control problem is taken from    
Ref.~\cite{goddard1920method}. The goal of the Goddard rocket maximum  
ascent problem is to determine the state and the control that          
maximize the final altitude of an ascending rocket. The state of the   
system is defined by the altitude, velocity, and the mass of the       
rocket and the control of the system is the thrust. The Goddard        
rocket problem contains a singular arc where the continuous-time       
optimality conditions are indeterminate, thereby the nonlinear         
programming problem solver will have difficulty determining the        
optimal control during the singular arc. In order to prevent this      
difficulty and obtain more accurate solutions the Goddard rocket       
problem is posed as a three-phase optimal control problem. Phase one   
and phase three contains the same dynamics and the path constraints    
as the original problem, while phase two contains an additional path   
constraint and an event constraint. The specified accuracy tolerance   
of $10^{-8}$ were satisfied after two mesh iterations. As the mesh     
refinement proceeds, the size of the KKT matrices increases from 831   
to 867.                                                                
                                                                       
@article{goddard1920method,                                            
  title={A Method of Reaching Extreme Altitudes.},                     
  author={Goddard, Robert H},                                          
  journal={Nature},                                                    
  volume={105},                                                        
  pages={809--811},                                                    
  year={1920}                                                          
}                                                                      
',
    b_field: 'full 831-by-1
',
    aux_fields: 'rowname: full 831-by-79
mapping: full 831-by-1
',}
