{
    name: 'Langemyr',
    num_matrices: '1',
    notes: 'FEM structural mechanics matrix from Lars Langemyr, COMSOL.

This is one of the few matrices for which a pivot tolerance of 0.1 (in UMFPACK
V4.0) is not sufficient.  An inaccurate solution is found with that tolerance.

Penny Anderson, of The MathWorks, Inc, solved the problem in MATLAB 6.5 by
detecting a poor solution and automatically refactorizing with a pivot
tolerance of 1.0.

',

}

