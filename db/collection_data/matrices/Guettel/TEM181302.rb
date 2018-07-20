{
    matrix_id: '2813',
    name: 'TEM181302',
    group: 'Guettel',
    description: '3D transient electromagnetic modelling, S. Guettel, Univ Manchester',
    author: 'R.-U. B\\"orner, O. G. Ernst, S. G\\"uttel',
    editor: 'T. Davis',
    date: '2015',
    kind: 'electromagnetics problem',
    problem_2D_or_3D: '1',
    num_rows: '181302',
    num_cols: '181302',
    nonzeros: '7839010',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '181302',
    pattern_symmetry: '1.000',
    numeric_symmetry: '1.000',
    rb_type: 'real',
    structure: 'symmetric',
    cholesky_candidate: 'yes',
    positive_definite: 'no',
    notes: '3D Transient Electromagnetic Modelleing, Stefan Guettel, Univ Manchester
                                                                        
The TEM problem relates to the time-dependent modelling of a transient  
electromagnetic field in geophysical exploration. The set contains a    
matrix pencil (C,M) and an initial value vector q, corresponding to a   
Nedelec finite element discretization of Maxwell\'s equations for the    
electric field density e(t). The curl-curl matrix C is symmetric        
positive semi-definite and the mass matrix M is symmetric positive      
definite. The problem to be solved is a linear initial value problem    
                                                                        
   M*e\'(t) = C*e(t),  M*e(0) = q,                                       
                                                                        
for logarithmically distributed time points t in the interval           
[1e-6,1e-3].                                                            
                                                                        
There are three test sets which are described in the following          
publication:                                                            
                                                                        
@article{BEG2015,                                                       
  title={Three-dimensional transient electromagnetic modelling using    
    rational {K}rylov methods},                                         
  author={B{\"o}rner, Ralph-Uwe and Ernst, Oliver G and G{\"u}ttel,     
    Stefan},                                                            
  journal={Geophysical Journal International},                          
  volume={202},                                                         
  number={3},                                                           
  pages={2025--2043},                                                   
  year={2015},                                                          
  publisher={Oxford University Press}                                   
}                                                                       
                                                                        
The problem details are                                                 
                                                                        
TEM27623: section 5.1 in the above paper; layered half-space problem    
discretized by 24582 tetrahedral elements of order 1 giving rise to     
27623 degrees of freedom.                                               
                                                                        
TEM152078: section 5.1 in the above paper; layered half-space problem   
discretized by 24582 tetrahedral elements of order 2 giving rise to     
152078 degrees of freedom.                                              
                                                                        
TEM181302: section 5.2 in the above paper; homogeneous subsurface with  
topography discretized by 28849 tetrahedral elements of order 2 giving  
rise to 181302 degrees of freedom.                                      
                                                                        
In the SuiteSparse Matrix Collection, the primary matrix Problem.A is   
the matrix C in the TEM* problems.  The M matrix appears as             
Problem.aux.M, and the q vector is Problem.aux.q.                       
',
    aux_fields: 'M: sparse 181302-by-181302
q: full 181302-by-1
',    image_files: 'TEM181302.png,',
}
