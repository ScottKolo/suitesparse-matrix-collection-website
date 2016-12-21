{
    matrix_id: '1919',
    name: '2cubes_sphere',
    group: 'Um',
    description: 'FEM, electromagnetics, 2 cubes in a sphere. Evan Um, Geophysics, Stanford',
    author: 'E. Um',
    editor: 'T. Davis',
    date: '2008',
    kind: 'electromagnetics problem',
    problem_2D_or_3D: '1',
    num_rows: '101492',
    num_cols: '101492',
    nonzeros: '1647264',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '101492',
    pattern_symmetry: '1.000',
    numeric_symmetry: '1.000',
    rb_type: 'real',
    structure: 'symmetric',
    cholesky_candidate: 'yes',
    positive_definite: 'yes',
    notes: 'A matrix from Evan Um, Geophysics, Stanford.  Studying finite-element  
time domain solvers for electromagnetic diffusion equations. The 3-D   
computational domain consists of 88,213 tetrahedral elements.  The     
computational domain consists of the two parts.  First, there are two  
300m x 300m x 150m boxes where a fine mesh is used.  Second, the two   
boxes are enclosed by a large sphere whose radius is 10 km.  An element
growth factor is used to increase the mesh size gradually inside the   
sphere.  This is because absorbing boundary conditions are not very    
good choices for these problems.  The finite element technique is      
edge-based rather than node-based.  Therefore, the unknowns are        
amplitudes of electromagnetic fields on an edge of each element.       
',
    b_field: 'full 101492-by-1
',
}
