{
    matrix_id: '2719',
    name: 'orbitRaising_2',
    group: 'VDOL',
    description: 'orbitRaising optimal control problem (matrix 2 of 4)',
    author: 'B. Senses, A. Rao',
    editor: 'T. Davis',
    date: '2015',
    kind: 'optimal control problem',
    problem_2D_or_3D: '0',
    num_rows: '739',
    num_cols: '739',
    nonzeros: '6526',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '2',
    num_dmperm_blocks: '3',
    structural_full_rank: 'true',
    structural_rank: '739',
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
                                                                       
VDOL/orbitRaising                                                      
                                                                       
Orbit raising problem that is taken from                               
Ref.~\cite{bryson1975applied}. The goal of the optimal control         
problem is to determine the state and the control that maximize the    
radius of an orbit transfer in a given time. The state of the system   
is defined by radial distance of the spacecraft from the attracting    
center (e.g Earth, Mars, etc.) and velocity of the spacecraft and the  
control is the thrust direction. The specified accuracy tolerance of   
$10^{-8}$ were satisfied after four mesh iterations. As the mesh       
refinement proceeds, the size of the KKT matrices increases from 442   
to 915.                                                                
                                                                       
@book{bryson1975applied,                                               
  title={Applied Optimal Control: Optimization, Estimation, and        
     Control},                                                         
  author={Bryson, Arthur Earl},                                        
  year={1975},                                                         
  publisher={CRC Press}                                                
}                                                                      
',
    b_field: 'full 739-by-1
',
    aux_fields: 'rowname: full 739-by-79
mapping: full 739-by-1
',    image_files: 'orbitRaising_2.png,orbitRaising_2_dmperm.png,orbitRaising_2_scc.png,orbitRaising_2_graph.gif,',
}
