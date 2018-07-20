{
    matrix_id: '2829',
    name: 'ACTIVSg70K',
    group: 'TAMU_SmartGridCenter',
    description: 'DC power flow for a synthetic 70,000-bus power grid',
    author: 'A. B. Birchfield, T. J. Overbye',
    editor: 'T. Davis',
    date: '2018',
    kind: 'power network problem',
    problem_2D_or_3D: '0',
    num_rows: '69999',
    num_cols: '69999',
    nonzeros: '238627',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '69999',
    pattern_symmetry: '1.000',
    numeric_symmetry: '1.000',
    rb_type: 'real',
    structure: 'symmetric',
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
                                                                          
Matrix: TAMU_SmartGridCenter/ACTIVSg70K                                   
Title: Linearized or "dc" power flow susceptance matrix for a synthetic   
70,000-bus power grid                                                     
                                                                          
Description:                                                              
ACTIVSg70K is a 70,000-bus power system dataset that is entirely          
synthetic, built from public information and a statistical analysis of    
real power systems.  Its geographic footprint is the Eastern United       
States, but it bears no relation to any actual grid, except that          
generation and load profiles are similar, based on public data. This      
matrix is the linearized or "dc" power flow susceptance matrix.           
                                                                          
The full dataset can be downloaded at:                                    
https://electricgrids.engr.tamu.edu/electric-grid-test-cases/activsg70K/  
',
    image_files: 'ACTIVSg70K.png,',
}
