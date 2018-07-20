{
    matrix_id: '2694',
    name: 'hangGlider_4',
    group: 'VDOL',
    description: 'hangGlider optimal control problem (matrix 4 of 5)',
    author: 'B. Senses, A. Rao',
    editor: 'T. Davis',
    date: '2015',
    kind: 'optimal control problem',
    problem_2D_or_3D: '0',
    num_rows: '15561',
    num_cols: '15561',
    nonzeros: '149532',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '15561',
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
                                                                       
VDOL/hangGlider                                                        
                                                                       
Range maximization of a hang glider optimal control problem is taken   
from Ref.~\cite{bulirsch1993combining}.  The goal of the optimal       
control problem is to determine the state and the control that         
maximize the range of the hang glider in the presence of a thermal     
updraft. The state of the system is defined by horizontal distance,    
altitude, horizontal velocity, and the vertical velocity and the       
control is the lift coefficient. The specified accuracy tolerance of   
$10^{-8}$ were satisfied after five mesh iterations. As the mesh       
refinement proceeds, the size of the KKT matrices increases from 360   
to 16011. This problem is sensitive to accuracy of the mesh and it     
requires excessive number of collocation points to be able to satisfy  
the accuracy tolerance. Thus, the size of the KKT matrices changes     
drastically.                                                           
                                                                       
@book{bulirsch1993combining,                                           
  title={Combining Direct and Indirect Methods in Optimal Control:     
     Range Maximization of a Hang Glider},                             
  author={Bulirsch, Roland and Nerz, Edda and Pesch, Hans Josef and    
     von Stryk, Oskar},                                                
  year={1993},                                                         
  publisher={Springer}                                                 
}                                                                      
',
    b_field: 'full 15561-by-1
',
    aux_fields: 'rowname: full 15561-by-82
mapping: full 15561-by-1
',    image_files: 'hangGlider_4.png,hangGlider_4_graph.gif,',
}
