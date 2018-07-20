{
    matrix_id: '1878',
    name: 'fem_filter',
    group: 'Lee',
    description: 'FEM bandpass microwave filter, 500MHz. Center for Comp. Electromag., UIUC',
    author: 'S.-H. Lee',
    editor: 'T. Davis',
    date: '2008',
    kind: 'electromagnetics problem',
    problem_2D_or_3D: '1',
    num_rows: '74062',
    num_cols: '74062',
    nonzeros: '1731206',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '74062',
    pattern_symmetry: '1.000',
    numeric_symmetry: '0.613',
    rb_type: 'complex',
    structure: 'unsymmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'From the Univ of Illinois at Urbana-Champaign, Center for Computational 
Electromagnetics (development and application of the finite element     
method for analyzing antennas, high-frequency circuits, high-speed      
circuits, and so on).  The governing equations are Maxwell\'s equations. 
The matrix results from the finite-element discretization of a bandpass 
microwave filter at 500 MHz. The first-order vector element is employed.
The absorbing boundary condition is applied on the outer boundary of the
structure for emulating the open space.  The port boundary condition is 
applied on each port of the circuit for the truncating the computational
domain and exciting the circuit. Due to these boundary conditions, the  
finite-element system matrix is complex.                                
',
    image_files: 'fem_filter.png,fem_filter_graph.gif,',
}
