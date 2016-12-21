{
    matrix_id: '2668',
    name: 'dynamicSoaringProblem_4',
    group: 'VDOL',
    description: 'dynamicSoaringProblem optimal control problem (matrix 4 of 8)',
    author: 'B. Senses, A. Rao',
    editor: 'T. Davis',
    date: '2015',
    kind: 'optimal control problem',
    problem_2D_or_3D: '0',
    num_rows: '3191',
    num_cols: '3191',
    nonzeros: '36516',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '3191',
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
                                                                       
VDOL/dynamicSoaring                                                    
                                                                       
Dynamic soaring optimal control problem is taken from                  
Ref.~\cite{zhao2004optimal} where the dynamics of a glider is          
derived using a point mass model under the assumption of a flat        
Earth and stationary winds. The goal of the dynamic soaring            
problem is to determine the state and the control that minimize        
the average wind gradient slope that can sustain a powerless           
dynamic soaring flight.  The state of the system is defined by the     
air speed, heading angle, air-realtive flight path angle,              
altitude, and the position of the glider and the control of the        
system is the lift coefficient. The specified accuracy tolerance       
of $10^{-7}$ were satisfied after eight mesh iterations. As the        
mesh refinement proceeds, the size of the KKT matrices increases       
from  647 to 3543.                                                     
                                                                       
@article{zhao2004optimal,                                              
  title={Optimal Patterns of Glider Dynamic Soaring},                  
  author={Zhao, Yiyuan J},                                             
  journal={Optimal Control applications and methods},                  
  volume={25},                                                         
  number={2},                                                          
  pages={67--89},                                                      
  year={2004},                                                         
  publisher={Wiley Online Library}                                     
}                                                                      
',
    b_field: 'full 3191-by-1
',
    aux_fields: 'rowname: full 3191-by-101
mapping: full 3191-by-1
',}
