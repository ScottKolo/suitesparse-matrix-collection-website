{
    matrix_id: '1856',
    name: '3Dspectralwave',
    group: 'Sinclair',
    description: '3-D spectral-element elastic wave modelling in freq. domain, C. Sinclair, Univ. Adelaide',
    author: 'C. Sinclair',
    editor: 'T. Davis',
    date: '2007',
    kind: 'materials problem',
    problem_2D_or_3D: '1',
    num_rows: '680943',
    num_cols: '680943',
    nonzeros: '30290827',
    num_explicit_zeros: '3359762',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '680943',
    pattern_symmetry: '1.000',
    numeric_symmetry: '1.000',
    rb_type: 'complex',
    structure: 'Hermitian',
    cholesky_candidate: 'yes',
    positive_definite: 'no',
    notes: 'The A matrix is produced using 3-D spectral-element elastic wave modelling in
the frequency domain. The medium is homogeneous and isotropic with elastic   
coefficients: c11 = 6.30,  c44 = 1.00 The B matrix represents a real         
y-directed source, placed approximately in the centre.  The model size in    
elements is 20x20x20. Each element is 1m x1m x 1m. Each element is a 4x4x4   
Gauss-Lobbato-Legendre mesh, so the height, width and depth of the system is 
61 nodes. There are 3 unknown components at each node - the x, y and z       
displacements. The A matrix therefore has dimension 680943 x 680943, where   
((20 x 4) - (20 - 1))^3 * 3 = 680943. The problem domain is earth sciences.  
Note that A is complex and b is sparse and real (b has a single nonzero).    
                                                                             
The A matrix was provided with a nonzero imaginary part, but was otherwise   
complex Hermitian.  To save space in the Matrix Market and Rutherford/Boeing 
formats, the A matrix here has had this imaginary diagonal removed.  The     
shift can be found in the aux.shift auxiliary matrix.  To reproduce the      
original A matrix, use A = Problem.A + Problem.aux.shift ;                   
',
    b_field: 'sparse 680943-by-1
',
    aux_fields: 'shift: sparse 680943-by-680943
',    image_files: '3Dspectralwave.png,3Dspectralwave2.png,3Dspectralwave2_graph.gif,3Dspectralwave_graph.gif,',
}
