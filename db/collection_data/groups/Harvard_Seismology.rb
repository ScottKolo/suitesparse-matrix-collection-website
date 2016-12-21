{
    name: 'Hohn',
    num_matrices: '6',
    notes: 'Single-material crack problem, Michael Hohn, Univ. of Utah.

The included files contain the matrices and rhs vectors arising in
two ways of discretizing a single-material crack problem.

The *coord files are in zero-indexed coordinate format (row, column, value);
the *vec files contain 
    -- the size N
    -- the entries from first to last

The fd-* files come from a finite difference approximation;
the sinc-* files from a sinc-basis approximation.

Both use the same logarithmic grid.

The fd matrices are very sparse, and factor in a few seconds, so
they\'re not terribly interesting, but the sinc matrices are another matter...

Larger matrices available on demand :)

-- Michael Hohn, hohn :at the domain: math.utah.edu
',

}

