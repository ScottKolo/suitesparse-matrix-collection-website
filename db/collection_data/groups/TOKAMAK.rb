{
    name: 'TSOPF',
    num_matrices: '27',
    notes: 'Transient stability-constrained optimal power flow, G. Geng, Zhejiang Univ.

comments on the TSOPF_RS_b2303 matrix:
We are now trying UMFPACK in MATLAB to do some research work
power system optimization. UMFPACK LU function (5 outputs) performs much
faster than normal LU function (3 outputs) of MATLAB for most test cases in
our experiment. However, in one of our test, UMFPACK runs out of memory when
performing LU decomposition to an unsymmetric, non-positive definite matrix
Ck (uploaded on the website). But the normal LU function with COLAMD
successfully completes LU decomposition without any warning and error. All
tests are done in MATLAB 2008b x64 on a PC with 4Gb RAM. We have tried both
UMFPACK 5.0 and 5.2 but neither works. We would very appreciate it if you
could give some suggestions on our implementation.

comments from Guangchao Geng regarding the TSOPF_FS_300 matrix:
KLU (which you recommend us in your last letter) does a perfect
a job in our application of power system optimization. It\'s faster than
UMFPACK and SuperLU about 10 times in LU factorization phase and 5 times in
backward substitution phase. It greatly speeds up our research work. However,
when we try UMFPACK and KLU to solve a symmetric sparse linear system in
another program, both of the two fails to exceed backslash in MATLAB.
The left-hand side matrix A and right-hand side vector b1 are uploaded in a
single .MAT file at the website. We wonder if MATLAB backslash is the
performance limit for matrices of this kind, or we have other external
solvers worth to try.

Thank you for your consideration.  Guangchao Geng
                
-------------- Guangchao Geng E-mail: genggc at gmail dot com
Institute of Power System, College of Electrical Engineering,
Zhejiang University, Hangzhou, 310027, China.


remainder: 
Here is a matrix collection of our power system optimization application,
This .zip file contains matrices collection of Transient Stability
constrained Optimal Power Flow (TSOPF). All matrices are stored in MAT format
and divided in two groups: Full-Space (FS) group and Reduced-Space (RS)
group.

FS group: 
    - Left-hand side: A (symmetric & indefinite)
    - Right-hand side: b1
    - Solve fastest with Matlab backslash \'\\\' (actually MA57)

RS group:
    - Left-hand side: Ck (asymmetric & indefinite)
    - Right-hand side: Nk (sparse with 300+ columns for large systems)
    - Solve fastest with KLU

Guangchao Geng (genggc at gmail dot com)
2009.01.08

(Update: the titles of the matrices were corrected on March 6, 2009).
',

}

