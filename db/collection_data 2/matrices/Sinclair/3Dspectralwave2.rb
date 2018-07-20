{
    matrix_id: '1857',
    name: '3Dspectralwave2',
    group: 'Sinclair',
    description: '3-D spectral-element elastic wave modelling in freq. domain, C. Sinclair, Univ. Adelaide',
    author: 'C. Sinclair',
    editor: 'T. Davis',
    date: '2007',
    kind: 'materials problem',
    problem_2D_or_3D: '1',
    num_rows: '292008',
    num_cols: '292008',
    nonzeros: '12935272',
    num_explicit_zeros: '1387472',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '292008',
    pattern_symmetry: '1.000',
    numeric_symmetry: '1.000',
    rb_type: 'complex',
    structure: 'Hermitian',
    cholesky_candidate: 'yes',
    positive_definite: 'no',
    notes: 'The A matrix is produced using 3-D spectral-element elastic wave modelling in
the frequency domain.The medium is homogeneous and isotropic with elastic    
coefficients: c11 = 6.30, c44 = 1.00. The B matrix contains only one non-zero
entry, representing a real y-directed source, placed approximately in the    
centre.  The model size in elements is 10x10x10. Each element is 1m x1m x 1m.
Each element is a 4x4x4 Gauss-Lobbato-Legendre mesh, so the height, width and
depth of the system is 31 nodes. There are 3 unknown complex components at   
each node - the x, y and z displacements. The A matrix therefore has         
dimension 89373 x 89373.  ((10 x 4) - (10 - 1))^3 * 3 = 89373.  The solution 
will consist of x-z planes.  Note that A is complex and b is sparse and real 
(b has a single nonzero).                                                    
                                                                             
The A matrix was provided with a nonzero imaginary part, but was otherwise   
complex Hermitian.  To save space in the Matrix Market and Rutherford/Boeing 
formats, the A matrix here has had this imaginary diagonal removed.  The     
shift can be found in the aux.shift auxiliary matrix.  To reproduce the      
original A matrix, use A = Problem.A + Problem.aux.shift ;                   
',
    b_field: 'sparse 292008-by-1
',
    aux_fields: 'shift: sparse 292008-by-292008
',    image_files: '3Dspectralwave2.png,3Dspectralwave2_graph.gif,',
}
