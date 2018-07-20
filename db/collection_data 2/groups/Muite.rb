{
    name: 'Mulvey',
    num_matrices: '2',
    notes: 'Multistage stochastic financial modelling.  J. Mulvey, Princeton.
Matrices provided by Ed Rothberg, Silicon Graphics, Inc.
From the paper:

	A. Berger, J. Mulvey, E. Rothberg, and R. Vanderbei,
	"Solving multistage stochastic programs using tree dissection,"
	tech. report SOR-97-07, Program in Statistics and Operations
	Research

Ed Rothberg, email: rothberg :at the domain: multnomah.engr.sgi.com
John Mulvey, email: mulvey :at the domain: macbeth.Princeton.edu 

A stochastic programming matrix in an interior-point algorithm
for financial portfolio optimization.

Random nonzero values added (finan512.rsa) by Tim Davis.  The values were
then modified to ensure that the matrix was symmetric positive definite.

This matrix is quite strange, and appears to be highly sensitive to
tie-breaking issues, or some other phenomenon...  See the paper, above,
for a description of the phenomenon.

The following ordering algorithms were run
on a Sparc-10.  AMDperm is the Approximate Minimum Degree method, with
various "elbow room" sizes (see TR-94-038),
based on upper bounds on the external degree.
AMDtry3 is AMD with a different tie-breaking strategy.  oldAMDt is the same
as MA27, except that exact degree computations are replaced with an upper
bound on the true degree.  initMD is MA27, and origMD is a modification in MUPS
that ignores the computation of degrees above a certain threshold.  MMD is
Joseph Liu\'s multiple minimum degree algorithm (with delta = 0, 1, and 2).
ND is the nested dissection algorithm in Sparspak, and QMD is the minimum
degree ordering algorithm in Sparspak.  The columns in the table are
the number of nonzeros in L, the Mflops needed to compute L, the ordering
time, the number of garbage collections, the memory usage (excluding O(n)-size
arrays), and the number of size-n work arrays.

NOTE: Lnz is the number of nonzeros in the strictly lower diagonal part.
The A+AT number is the number of off-diagonal nonzeros in A+A^T.
Since this is a symmetric matrix, that\'s just the nonzeros in A minus n.

Matrix Portfolio/finan512.psa.gz n  74752 Anz   596992 A+AT   522240 -
Method:delta/elbow Lnz      LL^Tmflops      time comp memory O(n)usage
AMDperm:      3361993       1035.385920      5.53    0    833747  8
AMDperm:4     3361993       1035.385920      5.47    0    833747  8
AMDperm:3     3361993       1035.385920      5.63    1    776090  8
AMDperm:2     3361993       1035.385920      5.66    1    671745  8
AMDperm:1     3361993       1035.385920      5.64    1    671745  8
AMDtry3:      2522769        536.937792      5.18    0    797305  9
oldAMDt:      9285069      14968.698880      5.90    0    996344  8
 initMD:      9285069      14968.315904     10.07    0   1000263  7
 origMD:      9237356      14654.392320      6.56    0   1036206  7
    MMD:0     6432433       5933.023232    292.65    0    522240  7
    MMD:1     6432433       5933.025280    291.97    0    522240  7
    MMD:2     6432433       5933.025280    278.82    0    522240  7
     ND:      8530875       3412.739840      6.20    0    522240  5
    QMD:      4345895       2121.354368    970.03    0    522240  9


These minimum degree algorithms do show large variations in ordering times for
other matrices, but they usually produce comparable results.  This matrix
(finan512) is a very unusual exception.  The bcsstk30 matrix shows
more typical relative results, for example:


Matrix HB/bcsstk30.psa           n  28924 Anz  2043492 A+AT  2014568 -
Method:delta/elbow Lnz      LL^Tmflops      time comp memory O(n)usage
AMDperm:      3768625        899.876992      2.30    0   2088703  8
AMDperm:4     3768625        899.876992      2.31    0   2088703  8
AMDperm:3     3768625        899.876992      2.29    0   2088703  8
AMDperm:2     3768625        899.876992      2.31    0   2088703  8
AMDperm:1     3768625        899.876992      2.76    1   2072417  8
AMDtry3:      3764679        916.359040      2.32    0   2088942  9
oldAMDt:      4518625       1363.998720      2.23    0   2107723  8
 initMD:      4583033       1409.133568      2.66    0   2107538  7
 origMD:      4487456       1336.230912      2.73    0   2135673  7
    MMD:0     3849328        938.700288      4.63    0   2014568  7
    MMD:1     3863974        955.433984      4.53    0   2014568  7
    MMD:2     3886867        963.582848      4.29    0   2014568  7
     ND:      5743266       2204.590848     12.11    0   2014568  5
    QMD:      4689554       1586.877184     59.55    0   2014568  9

',

}

