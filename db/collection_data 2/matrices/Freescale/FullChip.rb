{
    matrix_id: '2380',
    name: 'FullChip',
    group: 'Freescale',
    description: 'circuit simulation, Kiran Gullapalli, Freescale Semiconductor, Inc.',
    author: 'K. Gullapalli',
    editor: 'T. Davis',
    date: '2011',
    kind: 'circuit simulation problem',
    problem_2D_or_3D: '0',
    num_rows: '2987012',
    num_cols: '2987012',
    nonzeros: '26621983',
    num_explicit_zeros: '7',
    num_strongly_connected_components: '35',
    num_dmperm_blocks: '35',
    structural_full_rank: 'true',
    structural_rank: '2987012',
    pattern_symmetry: '1.000',
    numeric_symmetry: '0.006',
    rb_type: 'real',
    structure: 'unsymmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'Full-chip circuit simulation matrix from Kiran Gullapalli, Freescale  
Semiconductor, Inc.                                                   
                                                                      
This is a full-chip (everything that is actually built in silicon is  
in the netlist), for an automotive part.  For simulation, the         
flash-memory and sram-memory cores are removed. But everything else is
in the matrix.                                                        
                                                                      
The chip takes an external battery (voltage source), but has internal 
voltage generators. the node of the external battery can be removed   
from the matrix. but the internal generators create some VERY HIGH    
degree nodes. So, there are about 6 nodes with degree greater than    
1000 (actually, the degree is 2M+ for 2 of these).                    
                                                                      
After ordering, nnz(L+U) = 200,180,468, with about 1.03793E+11        
flops (a += b * c is counted as one flop).                            
',
    image_files: 'FullChip.png,FullChip_dmperm.png,FullChip_scc.png,FullChip_APlusAT_graph.gif,FullChip_graph.gif,',
}
