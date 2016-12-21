{
    matrix_id: '1862',
    name: 'Ill_Stokes',
    group: 'Szczerba',
    description: 'Ill-conditioned matrix from a Stokes problem, by Dominick Szczerba',
    author: 'D. Szczerba',
    editor: 'T. Davis',
    date: '2007',
    kind: 'computational fluid dynamics problem',
    problem_2D_or_3D: '1',
    num_rows: '20896',
    num_cols: '20896',
    nonzeros: '191368',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '20896',
    pattern_symmetry: '0.990',
    numeric_symmetry: '0.330',
    rb_type: 'real',
    structure: 'unsymmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'The matrix comes from a global formulation of the Stokes problem posed  
directly (without pressure correction) on an unstructured tet mesh.  It 
includes momentum equations (3 quadrants) and continuity equation (last 
quadrant).  Unknowns are organized as : vx, vy, vz, p. The last quadrant
does not contain diagonal entries of course (continuity eq. does not    
contain pressure) and is the reason bicgstab and related methods do not 
work.  Does not invert nicely with umfpack (strong oscillations in the  
4th quadrant of the solution). LSQR produces better results (smaller    
oscillations) but takes ages. Dominik Szczerba, Ph.D. Computer Vision   
Lab, ETH. CH-8092 Zurich. http://www.vision.ee.ethz.ch/~domi            
',
    b_field: 'full 20896-by-1
',
    norm: '5.442867e+00',
    min_singular_value: '2.415944e-09',
    condition_number: '2.252894e+09',
    svd_rank: '20896',
    sprank_minus_rank: '0',
    null_space_dimension: '0',
    full_numerical_rank: 'yes',
}
