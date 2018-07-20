{
    matrix_id: '2377',
    name: 'mc2depi',
    group: 'Williams',
    description: 'Epidemiology: 2D Markov model of epidemic.  Williams et al.',
    author: 'unknown',
    editor: 'S. Williams, L. Oliker, R. Vuduc, J. Shalf, K. Yelick, J. Demmel',
    date: '2008',
    kind: '2D/3D problem',
    problem_2D_or_3D: '1',
    num_rows: '525825',
    num_cols: '525825',
    nonzeros: '2100225',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '525825',
    pattern_symmetry: '0.000',
    numeric_symmetry: '0.000',
    rb_type: 'integer',
    structure: 'unsymmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'Matrices used by S. Williams et al for sparse matrix multiplication on GPUs.   
                                                                               
14 matrices were used in the following paper:                                  
                                                                               
    S. Williams, L. Oliker, R. Vuduc, J. Shalf, K. Yelick, J. Demmel,          
    "Optimization of Sparse Matrix-Vector Multiplication on Emerging Multicore 
    Platforms", Parallel Computing Volume 35, Issue 3, March 2009, Pages       
    178-194.  Special issue on Revolutionary Technologies for Acceleration of  
    Emerging Petascale Applications.                                           
                                                                               
    https://hpcrd.lbl.gov/~swwilliams/research/papers/parco08_spmv.pdf         
    http://dx.doi.org/10.1016/j.parco.2008.12.006                              
                                                                               
This same set of 14 matrices was also used in a subsequent technical report by 
NVIDIA:                                                                        
                                                                               
    http://www.nvidia.com/object/nvidia_research_pub_001.html "Efficient Sparse
    Matrix-Vector Multiplication on CUDA" Nathan Bell and Michael Garland, in, 
    "NVIDIA Technical Report NVR-2008-004", December 2008                      
                                                                               
file            Name            dim*    nnz     description                    
                                                                               
dense2          Dense           2K      4.0M    dense matrix in sparse format  
pdb1HYS         Protein         36K     4.3M    protein data bank 1HYS         
consph          FEM/Spheres     83K     6.0M    FEM concentric spheres         
cant            FEM/Cantilever  62K     4.0M    FEM cantilever                 
pwtk            Wind Tunnel     218K    11.6M   pressurized wind tunnel        
rma10           FEM/Harbor      47K     2.37M   3D CFD of Charleston Harbor    
qcd5_4          QCD             49K     1.90M   quark propagators (QCD/LGT)    
shipsec1        FEM/Ship        141K    3.98M   FEM Ship section / detail      
mac_econ_fwd500 Economics       207K    1.27M   Macroeconomic model            
mc2depi         Epidemiology    526K    2.1M    2D Markov model of epidemic    
cop20k_A        FEM/Accelerator 121K    2.62M   Accelerator cavity design      
scircuit        Circuit         171K    959K    Motorola circuit simulation    
webbase-1M      webbase         1M      3.1M    Web connectivity matrix        
rail4284        LP              4Kx1.1M 11.3M   Railways set cover,            
                                                constraint matrix              
                                                                               
(*) the matrix is square if only one dimension listed.                         
                                                                               
Six of the matrices are nearly identical to the matrices already in the        
UF Collection.  They are thus not included in the UF Collection.  See          
the README.txt file for this collection for details.                           
',
    image_files: 'mc2depi.png,mc2depi_APlusAT_graph.gif,mc2depi_graph.gif,',
}
