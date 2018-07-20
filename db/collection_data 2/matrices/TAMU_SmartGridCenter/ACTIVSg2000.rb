{
    matrix_id: '2827',
    name: 'ACTIVSg2000',
    group: 'TAMU_SmartGridCenter',
    description: 'Power flow Jacobian for a synthetic 2000-bus power grid',
    author: 'A. B. Birchfield, T. J. Overbye',
    editor: 'T. Davis',
    date: '2018',
    kind: 'power network problem',
    problem_2D_or_3D: '0',
    num_rows: '4000',
    num_cols: '4000',
    nonzeros: '28505',
    num_explicit_zeros: '831',
    num_strongly_connected_components: '262',
    num_dmperm_blocks: '262',
    structural_full_rank: 'true',
    structural_rank: '4000',
    pattern_symmetry: '1.000',
    numeric_symmetry: '0.007',
    rb_type: 'real',
    structure: 'unsymmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'Texas A&M Smart Grid Center: synthetic (yet realistic) power system grids 
                                                                          
Group name: TAMU_SmartGridCenter                                          
                                                                          
Synthetic electric grid models are fictitious representations that are    
designed to be statistically and functionally similar to actual electric  
grids while containing no confidential critical energy infrastructure     
information (CEII).  Some of these cases were developed with the support  
of the U.S. DOE ARPA-E Grid Data program; their support is gratefully     
acknowledged.                                                             
                                                                          
For more information and full datasets, see:                              
https://electricgrids.engr.tamu.edu/electric-grid-test-cases/             
                                                                          
A. B. Birchfield; T. Xu; K. M. Gegner; K. S. Shetye; T. J. Overbye, "Grid 
Structural Characteristics as Validation Criteria for Synthetic Networks,"
in IEEE Transactions on Power Systems, vol. 32, no. 4, pp. 3258-3265, July
2017.                                                                     
                                                                          
A. B. Birchfield, E. Schweitzer, H. Athari, T. Xu, T. J. Overbye, A.      
Scaglione, and Z.Wang, "Validation metrics to assess the realism of       
synthetic power grids," Energies, vol. 10, no. 8, p. 1233, Aug. 2017.     
                                                                          
A. B. Birchfield, T. Xu, and T. J. Overbye, "Power flow convergence and   
reactive power planning in the creation of large synthetic grids," in IEEE
Transactions on Power Systems, 2018.                                      
                                                                          
----------------------------------------------------------------------    
                                                                          
Matrix: TAMU_SmartGridCenter/ACTIVSg2000                                  
Title: Power flow Jacobian for a synthetic 2000-bus power grid            
                                                                          
Description:                                                              
ACTIVSg2000 is a 2000-bus power system dataset that is entirely synthetic,
built from public information and a statistical analysis of real power    
systems.  Its geographic footprint is Texas, but it bears no relation to  
any actual grid, except that generation and load profiles are similar,    
based on public data. This matrix is the power flow Jacobian for the peak 
planning operating point.                                                 
                                                                          
The full dataset can be downloaded at:                                    
https://electricgrids.engr.tamu.edu/electric-grid-test-cases/activsg2000/ 
',
    image_files: 'ACTIVSg2000.png,ACTIVSg2000_dmperm.png,ACTIVSg2000_map.png,',
}
