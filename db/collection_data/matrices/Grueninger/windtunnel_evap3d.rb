{
    matrix_id: '2815',
    name: 'windtunnel_evap3d',
    group: 'Grueninger',
    description: '3D wind tunnel evaporation, Christoph Grueninger, Univ. Stuttgart',
    author: 'C. Gr\\"uninger',
    editor: 'T. Davis',
    date: '2017',
    kind: 'computational fluid dynamics problem',
    problem_2D_or_3D: '1',
    num_rows: '40816',
    num_cols: '40816',
    nonzeros: '803978',
    num_explicit_zeros: '1926622',
    num_strongly_connected_components: '1777',
    num_dmperm_blocks: '1777',
    structural_full_rank: 'true',
    structural_rank: '40816',
    pattern_symmetry: '1.000',
    numeric_symmetry: '0.000',
    rb_type: 'real',
    structure: 'unsymmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'Wind tunnel evaporation, Christoph Grueninger, Univ. Stuttgart           
                                                                         
Source: Christoph Grueninger, pr at grueninger.de                        
Stuttgart Research Centre for Simulation Technology,                     
Univ. of Stuttgart, Germany                                              
                                                                         
Matrix files: windtunnel-evaporation-(2|3)d-time4-newton1.mat            
Right-hand sides: windtunnel-evaporation-(2|3)d-time4-newton1-rhs.mat    
                                                                         
== Background ==                                                         
The matrix origins from a simulation of soil-water evaporation from a    
water-filled sand box to air in a pipe. It is based on a coupled         
Navier-Stokes/Darcy model. The Navier-Stokes model features one fluid    
phase, the Darcy model two fluid phases. Each fluid phase may be composed
of two components, in addition, non-isothermal processes are considered. 
A cell-centered finite volume method (FVM) is combined with a marker and 
cell (MAC) scheme. The coupled problem is compiled in one monolithic     
system and solved using Newton\'s method. The given matrix occurs at the  
4th time-step in the 1st Newton step.                                    
                                                                         
== Publication and software==                                            
The related model and the software is described in:                      
  Christoph Gr\"uninger, Thomas Fetzer, Bernd Flemisch, Rainer Helmig:   
  "Coupling DuMuX and DUNE-PDELab to investigate evaporation             
  at the interface between Darcy and Navier-Stokes flow"                 
  SimTech Technical Report 2017 - 1, 2017.                               
  doi: 10.18419/opus-9360                                                
  https://elib.uni-stuttgart.de/handle/11682/9377?mode=simple            
                                                                         
abstract:                                                                
An implementation of a coupled Navier-Stokes/Darcy model based on        
different Dune discretization modules is presented. The Darcy model is   
taken from DuMuX, the Navier-Stokes model is implemented on top of       
Dune-PDELab, and the coupling is done with help of Dune-MultiDomain      
together with some project-specific auxiliary code. The Navier-Stokes    
model features one fluid phase, the Darcy model two fluid phases. Each   
fluid phase may be composed of two components, in addition,              
non-isothermal processes are considered. The coupling between free and   
porous-medium flow uses a sharp interface between both subdomains and    
conserves mass, momentum, and energy by accounting for the corresponding 
fluxes across the interface. A cell-centered finite volume method (FVM)  
is combined with a marker and cell (MAC) scheme. It solves the coupled   
problem in one monolithic system using a Newton method and a direct      
linear solver.  Numerical results demonstrate the basic functioning and a
lab-scale reference application.                                         
                                                                         
The software to reproduce the matrices is available as open source:      
https://git.iws.uni-stuttgart.de/dumux-pub/Grueninger2017b               
',
    b_field: 'full 40816-by-1
',
    image_files: 'windtunnel_evap3d.png,windtunnel_evap3d_dmperm.png,windtunnel_evap3d_scc.png,',
}
