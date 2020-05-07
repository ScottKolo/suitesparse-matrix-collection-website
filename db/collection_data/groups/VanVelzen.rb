{
    name: 'VanVelzen',
    num_matrices: '10',
    notes: 'Chemical process simulation matrices from Nils van Velzen, VORtech Computing.
Added March, 2006.

These require a Dulmage-Mendelsohn decomposition (see cs_dmperm in CSparse).
Since UMFPACK v4.6 does not include a dmperm preordering, the fillin can
be higher than it should be.

--------------------------------------------------------------------------------
Email from Nils van Velzen:
--------------------------------------------------------------------------------

I\'m using UMFPACK for some time as part of a nonlinear solver, that is
used to solve large systems of nonlinear equations (production of
ethylene). Before we used UMFPACK, we first applied a lower block
decomposition where after we permuted the diagonal blocks in order to
minimise the bandwidth and used an lu-decomposition that only permuted
for numerical stability. When the model became more complex it became
harder to keep the bandtwidht small and UMFPACK decreased the
computational speed up to a factor 40.

I have however a number of cases where UMFPACK performs significally
worst than a LU-decomposition without a reordering strategy (except
for numerical stability). The difference is over a factor 4 and I have
a case I cannot solve using UMFPACK due to an allocation error.

I do not think that this is a "bug", and I\'ve found a good strategy
for selecting between UMFPACK and my old decomposition algorithm,  but
I wonder whether you are interested in these test cases.

If you are interested, please let my know, the matrices are approx 6 MB
each.

Kind regards,

Nils van Velzen
Numerical Software Engineer,
VORtech Computing,
The Netherlands
nils at vortech dot (country code for The Netherlands)

--------------------------------------------------------------------------------

My intention is to use it only for the diagonal blocks. I know I take
a risk, where I create in theory a numerical singular matrix, but this
has never happened. There are still a number of things I have to
figure out before I can use UMFPACK on all the diagonal elements. The
structure of our system is that we have one very large diagonal block
and all large number
of relative small blocks. In my current implementation I only use
UMFPACK for the largest diagonal block, and my "old" solver for the
other blocks. And this works very fine for the time being.  There are
two issues I have to investigate first before applying UMFPACK for all
diagonal blocks (at ones), and maybe you know the answers by hart.

1) Does the AMD/UMFPACK reordering preserve the diagonal blocks, that
means does it only permute within the blocks. because I\'d like to
apply it to the diagonal blocks using a single call (decomposing the
blocks one at a time will destroy the performance, I\'ve already tried
this a few years ago when I experimented combining different solvers)
2) I have to figure out the data structures (LU-decomposition) of
UMFPACK because I have to program my back-substitution for my lower
block matrix and LU-decomposition of the diagonal blocks.

I\'ll collect a number of my linear systems (that cause problems) and
will upload them to you including a readme-file explaining the format.

Kind regards,
Nils van Velzen.

--------------------------------------------------------------------------------

   Hi,
   A number of test matrices that are hard (in the sense of computational time)
   to solve by UMFPACK + additional information.
   Uploading them all at onces did not work. Therefore I\'ll try to send it in
   small bits. The first part contains the most relevant information. (matrices
   only containing the diagonal blocks)  The other parts will contain the "full"
   matrices before block decomposition.
   (see info in tar.gz-file)

--------------------------------------------------------------------------------

   part 2: the complete Jacobians of Zd.

--------------------------------------------------------------------------------

   part 3: the complete Jacobians of std1.

--------------------------------------------------------------------------------
Description of the matrices, and results:
--------------------------------------------------------------------------------

Matrices that are "hard" to solve using UMFPACK.

The directories contains (Jacobian) matrices of two models:
*std1
*Zd

The number in the filename corresponds to the iteration number of the
non-linear solver. 

Jac<n> contains the whole Jacobian matrix
Jac<n>_db  only contains the diagonal blocks (lower block triangularisation)


For both models, UMFPACK performs relativly good for the second iteration.
As a result of the initial guess. The sparsity pattern changes slightly during
the first few iterations.

At the third iteration however UMFPACK is significally slower than an
LU-decomposition without ordering.
As an indication I present a number of test results (note UMFPACK is approx a
factor 1.5 faster when using blas of K. Goto, but these results using
imsl-BLAS were the most easy to produce and the exact timings are not
relevent):

Times in seconds, computing lu-decomposition of diagonal blocks
(symbolic+numeric step for UMFPACK), using Win XP, Pentium IV, 3.4 GHz,
1Gb Ram.


                      normal LU           UMFPACK
model   iteration    cpu     wall      cpu      wall

std1     2,        2.219,   2.219,   2.500,   2.516
std1     3,        2.266,   2.266,  34.547,  34.594
Zd2      2,        3.859,   3.860,   3.594,   3.593
Zd2      3,        3.969,   3.985,  32.766,  32.828
Zd2      6,        3.359,   3.359,  29.797,  29.797


Nils van Velzen
VORtech Computing 
The Netherlands

Marco van Goethem
Technip Benulux b.v.
The Netherlands
mvangoethem at technip
dot com


',

}

