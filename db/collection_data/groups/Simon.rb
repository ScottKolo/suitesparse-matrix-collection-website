{
    name: 'Sinclair',
    num_matrices: '2',
    notes: '3-D spectral-element elastic wave modelling in freq. domain, C. Sinclair,
Univ. Adelaide, Australia.

catherine dot sinclair at adelaide dot edu dot au.

3Dspectralwave:

The A matrix is produced using 3-D spectral-element elastic wave modelling in
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

Added to the collection in May, 2007, by Tim Davis

--------------------------------------------------------------------------------
3Dspectralwave2 is a smaller version:

The A matrix is produced using 3-D spectral-element elastic wave modelling in 
the frequency domain. The medium is homogeneous and isotropic with 
elastic coefficients: c11 = 6.30,  c44 = 1.00 The B matrix 
represents a real y-directed source, placed approximately in the centre.

The model size in elements is 20x20x20. Each element is 1m x1m x 1m. Each 
element is a 4x4x4 Gauss-Lobbato-Legendre mesh, so the height, width and 
depth of the system is 61 nodes. There are 3 unknown components at each node 
- the x, y and z displacements. The A matrix therefore has dimension 
680943 x 680943. 

((20 x 4) - (20 - 1))^3 * 3 = 680943 

Added to the collection in June, 2007, by Tim Davis
',

}

