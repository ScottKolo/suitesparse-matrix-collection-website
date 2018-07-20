{
    name: 'Gupta',
    num_matrices: '3',
    notes: 'Linear programming matrices from Anshul Gupta, IBM T. J. Watson Research Center.

Discussed in "Fast and Effective Algorithms for Graph Partitioning and Sparse
Matrix Ordering," Ansul Gupta, IBM Research Division, T.J. Watson Research
Center, PO Box 218, Yorktown Heights, New York, 10598, USA,
anshul :at the domain: watson.ibm.com.  Tech Report RC 20496 (90799)
July 10, 1996
Computer Science / Mathematics.  The report discusses the WGPP graph
partitioner.

All three matrices come from linear programming problems.  They
are matrices of the form A times A transpose, where A is a rectangular
matrix with N rows (not provided).  All three matrices are positive definite,
but values are not provided.

	   N	     NZ (in all of matrix, not just lower triangular part)

Gupta1.psa  31,802   2,164,210

Gupta2.psa  62,064   4,248,286

Gupta3.psa  16,783   9,323,427


If you "spy" these matrices in Matlab, you can see that
the Gupta1 and Gupta2 matrices have a structure roughly of the form:

	A D
	D A D
	  D A D
	    D ...

where D is banded, and A is an arrowhead matrix of the form

	x x x x x x x x x 
	x x
	x   x
	x     x
	x       x
	x         x
	x           x
	x             x
	x               x

where the "x" above, is a dense block.  Gupta1 has 3 of these arrowheads,
and Gupta2 has 6 of them.  The Gupta1 matrix is not used in the tech. report,
but it is similar to Gupta2, which is used in the experiments reported there.

The Gupta3 matrix has a form

	 x               x
	   x             x
	     x           x
	       x         x
	         x       x
	           x     x
	             x   x
	               x x
	 x x x x x x x x x	<=== the border, with nearly all the nonzeros

where the "x"\'s are block submatrices (dense, or with some sparse pattern).

The leading 15343-by-15343 submatrix of Gupta3 has only 596,765 nonzeros.
This leading submatrix appears to be block diagonal, with dense blocks of
size 39, 40, or 41.  If a natural ordering is used, L has the same number of
nonzeros in its leading 15343-by-15343 submatrix as does the lower triangular
part of the leading 15343-by-15343 submatrix of Gupta3.  That is, no fill-in
occurs in this part of the matrix.

The remaining 8.72 million nonzeros are in the border (which is very dense).
Cholesky factorization of Gupta3, using the natural ordering, results in a
factor L with 5.4 million nonzeros, requiring 2.262 billion floating-point
operations to compute.  This compares with 2.181 billion flops when using an
ordering from WGPP.  Essentially, the matrix does not need any permutation to
reduce fill-in.

These dense rows cause minimum degree ordering algorithms (AMD, for example)
to take a long time to run.  A simple preprocessing can remove them from
the matrix prior to calling AMD.  The dense rows/columns can then be
ordered last.   This technique can greatly improve AMD\'s run time.

',

}

