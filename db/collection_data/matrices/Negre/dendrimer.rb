{
    matrix_id: '2850',
    name: 'dendrimer',
    group: 'Negre',
    description: 'Negre/dendrimer: phenyl dendrimer density matrix',
    author: 'C. Negre',
    editor: 'T. Davis',
    date: '2018',
    kind: 'computational chemistry problem',
    problem_2D_or_3D: '0',
    num_rows: '730',
    num_cols: '730',
    nonzeros: '63024',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '730',
    pattern_symmetry: '1.000',
    numeric_symmetry: '1.000',
    rb_type: 'real',
    structure: 'symmetric',
    cholesky_candidate: 'yes',
    positive_definite: 'no',
    notes: 'Negre: phenyl dendrimer density matrix, for graph partitioning           
                                                                         
The phenyl dendrimer structure is composed of 22 covalently bonded       
phenyl groups. The density matrix hereby uploaded accounts for the       
connectivity of 730 orbitals. This matrix has been used as a substrate   
for implementing a graph-partitioning method using the D-wave quantum    
annealer. See: https://dl.acm.org/citation.cfm?id=3149531                
                                                                         
Christian F. A. Negre, Los Alamos National Lab, cnegre@lanl.gov          
                                                                         
Graph Partitioning Using Quantum Annealing on the D-Wave System,         
H. Ushijima-Mwesigwa, C. F. A. Negre, and S. M. Mniszewski,              
Proc. of 2nd Intl. Workshop on Post Moore\'s Era Supercomputing,          
(PMES17) 2017, Denver, CO, USA, 22--29, ACM.                             
                                                                         
Abstract:                                                                
Graph partitioning (GP) applications are ubiquitous throughout           
mathematics, computer science, chemistry, physics, bio-science, machine  
learning, and complex systems. Post Moore\'s era supercomputing has       
provided us an opportunity to explore new approaches for traditional     
graph algorithms on quantum computing architectures. In this work, we    
explore graph partitioning using quantum annealing on the D-Wave 2X      
machine. Motivated by a recently proposed graph-based electronic         
structure theory applied to quantum molecular dynamics (QMD) simulations,
graph partitioning is used for reducing the calculation of the density   
matrix into smaller subsystems rendering the calculation more            
computationally efficient. Unconstrained graph partitioning as community 
clustering based on the modularity metric can be naturally mapped into   
the Hamiltonian of the quantum annealer. On the other hand, when         
constraints are imposed for partitioning into equal parts and minimizing 
the number of cut edges between parts, a quadratic unconstrained binary  
optimization (QUBO) reformulation is required. This reformulation may    
employ the graph complement to fit the problem in the Chimera graph of   
the quantum annealer. Partitioning into 2 parts and k parts concurrently 
for arbitrary k are demonstrated with benchmark graphs, random graphs,   
and small material system density matrix based graphs. Results for graph 
partitioning using quantum and hybrid classical-quantum approaches are   
shown to be comparable to current "state of the art" methods and         
sometimes better.                                                        
',
    image_files: 'dendrimer.png,',
}
