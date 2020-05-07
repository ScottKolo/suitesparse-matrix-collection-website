{
    name: 'QLi',
    num_matrices: '3',
    notes: 'Mixed complementarity optimization problems from Qaun Li and Michael Ferris.

QLi/crashbasis and QLi/majorbasis have the same nonzero pattern.  However,
UMFPACK 5.1 is much slower for majorbasis than for crashbasis, because of
the extensive amount of denormal arithmetic that occurs during the factorization
of majorbasis.  This does not occur in the crashbasis matrix.

QLi/largebasis added in 2008.  The matrix is unsymmetric. 

',

}

