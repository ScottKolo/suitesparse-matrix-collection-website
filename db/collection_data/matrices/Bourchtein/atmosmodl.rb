{
    matrix_id: '2267',
    name: 'atmosmodl',
    group: 'Bourchtein',
    description: 'Atmospheric models, Andrei Bourchtein',
    author: 'A. Bourchtein',
    editor: 'T. Davis',
    date: '2009',
    kind: 'computational fluid dynamics problem',
    problem_2D_or_3D: '1',
    num_rows: '1489752',
    num_cols: '1489752',
    nonzeros: '10319760',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '1489752',
    pattern_symmetry: '1.000',
    numeric_symmetry: '0.671',
    rb_type: 'real',
    structure: 'unsymmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'Atmospheric modeling problems from Andrei Bourchtein                      
                                                                          
These matrices arise in the numerical weather prediction and atmospheric  
modeling.  Such matrices usually appear in semi-implicit schemes applied  
to three-dimensional Euler or Navier-Stokes equations (called             
nonhydrostatic models in the atmospheric sciences) or to their simplified 
form with hydrostatic balance equation instead of vertical momentum       
equation (called hydrostatic or primitive equation models in the          
atmospheric sciences).                                                    
                                                                          
Such linear systems represent discretization of three-dimensional elliptic
problems (frequently Dirichlet or Neumann problems for Helmholtz or       
quasi-Helmholtz equations), arising at each time step of semi-implicit    
algorithms due to implicit time approximation of some linear terms in the 
governing equations.  If spectral spatial approximation is applied, then  
the elliptic problem is usually transformed to the linear system with a   
diagonal matrix solved trivially.  If finite-difference or finite-element 
approximation is used, then the linear systems with the sparse matrices of
the coefficients similar to the four submitted matrices arise.  However,  
the semi-implicit schemes usually do not require explicit construction of 
the matrix of coefficients, neither do iterative methods used to solve    
these systems in the atmospheric models.  Besides, avoiding construction  
of the matrix of coefficients allows reducing the required computer       
memory.  Due to these reasons, as far as I know, the explicit form of     
matrices of coefficients usually is not described, except for the local   
structure of the respective difference equations.                         
                                                                          
The two right-hand sides b(:,1) and b(:,2) refer to the long wave or      
short wave perturbation of atmospheric fields, respectively.              
                                                                          
The description of such semi-implicit algorithms together with arising    
elliptic problems can be found, for example, in the following recent      
papers (and references therein):                                          
                                                                          
1. Steppeler J., Hess R., Schattler U., Bonaventura L.: Review of         
numerical methods for nonhydrostatic weather prediction models. Met. Atm  
Phys. 82 (2003) 287-301.                                                  
                                                                          
    This is a review paper on nonhydrostatic models, including            
    particularly, semi-implicit time differencing.  Some description of   
    arising elliptic problems and their solvers used in atmospheric models
    can be found on pp.294-296.                                           
                                                                          
2. Cote J., Gravel S., Methot A., Patoine A., Roch M., Staniforth A.: The 
CMC-MRB global environmental multiscale (GEM) model. Part I: Design       
considerations and formulation. Mon. Wea. Rev. 126 (1998) 1373-1395.      
                                                                          
3. Yeh K.S., Cote J., Gravel S., Methot A., Patoine A., Roch M.,          
Staniforth A.: The CMC-MRB global environmental multiscale (GEM) model.   
Part III: Nonhydrostatic formulation. Mon. Wea. Rev. 130 (2002) 339-356.  
                                                                          
    This pair of papers is about hydrostatic and nonhydrostatic versions  
    of the modern semi-implicit Canadian model.  Some description of      
    elliptic problems and their solution can be found on p.1389 of the    
    first paper and p.343 of the second paper.                            
                                                                          
4. Davies T., Cullen M.J.P., Malcolm A.J., Mawson M.H., Staniforths A.,   
White A.A., Wood N.: A new dynamical core for the Met Office’s global and 
regional modeling.  Q. J. Roy. Met. Soc. 131 (2005) 1759-1782.            
                                                                          
    This is a brief report on United Kingdom modern semi-implicit model.  
    Some description of elliptic problem can be found on p.1778 and its   
    solution on pp.1771-1772.                                             
',
    b_field: 'full 1489752-by-2
',
}
