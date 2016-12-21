{
    name: 'Li',
    num_matrices: '2',
    notes: '3D magnetohydrodynamics finite element matrix from Ben Li, Washington State Univ.
A magnetohydrodynamics problem with 5 variables.  Collected and converted
to Harwell/Boeing format by Tim Davis.

Email: li :at the domain:
mme.wsu.edu. http://www.mme.wsu.edu/people/bql.htm

Order: 22,695 with 1,350,309 entries.  1,215,181 nonzero entries.
If the specified zero entries (135,128 of them)
in li.rua are included, the pattern is symmetric.

Doing a Cholesky factorization (if it were possible) would lead
to 19,896,926 entries in L if *no* reordering is done, and about 2e10
floating-point operations.  A symmetric-pattern LU code, such as MA41,
could get close to that (with about 4e10 ops), I would think, assuming 
that the diagonal entries are reasonably large in value.  The smallest
nonzero entry on the diagonal is 0.09, which is not too bad.

For comparison, a skyline solver got 40,262,417 entries
in L and U.  That\'s almost the same as a non-skyline code
(L+L\' for Cholesky would have about 39.7 million entries).
So a skyline solver is doing very well for this matrix.

On an 167 Mhz UltraSPARC-I, AMDBAR takes only 2.06 seconds to get a
permutation P such that the L (for Cholesky factorization) has 30,408,134
entries ... much worse than when using the given ordering, which is unusual.

Doing a nested dissection ordering using Chaco (from Sandia) as the
graph partitioner gives an ordering such that the Cholesky factorization
has 13,142,711 nonzeros in L.  It took 81.7 seconds to get this
ordering on an UltraSPARC-1.  I used John Gilbert\'s mesh partitioner code at
ftp://parcftp.xerox.com in /pub/gilbert/meshpart.uu which as a Matlab
interface to Chaco, and P = ndperm (\'chaco\', 8, B) in Matlab,
where B is the pattern that includes the explicit zeros.
This ordering results in only 1.4e10 flops for Cholesky, or about
twice that for a symmetric-pattern LU factorization, assuming no "delayed
pivoting" becaose of small entries on the diagonal.

li.psa is the symmetric pattern of li.rua, where all specified entries of
li.rua are included, including entries with zero value.

Using the li.psa version, Bruce Hendrickson reports the following.
Using BEND on an SGI Onyx, in 8 seconds and ordering was obtained
in which L has 13,052,539 nonzeros and about 1.37e10 flops for a
Cholesky factorization.

Tim Davis, June 23, 1999

',

}

