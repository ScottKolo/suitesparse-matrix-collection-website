{
    name: 'Pothen',
    num_matrices: '22',
    notes: 'Structrual engineering matrices from NASA, collected by Alex Pothen.
Each matrix has xy or xyz coordinates for each node (row/column) in the matrix.

These are all symmetric positive definite matrices.  Some have only their
nonzero patterns supplied.  The diagonal entries were not specified, so
for non-binary matrices they have been defined so that the diagonal A(i,i)
is equal to the sum of the absolute values of the off-diagonal entries in
row i, plus one.

The xy or xyz coordinates for each matrix are in seperate files.
For example, for the bodyy4.rsa matrix, the coordinates are in bodyy4.xyz.
Row i of the bodyy4.xyz file lists the xy or xyz coordinates of node i.
2D problems list just 2 values per line, 3D problems have 3 values per line.

Converted to Harwell/Boeing format by Tim Davis, January 2003.

',

}

