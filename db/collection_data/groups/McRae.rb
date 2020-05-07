{
    name: 'McRae',
    num_matrices: '2',
    notes: 'circuitscape: circuit theory applied to animal/gene flow. B. McRae, UCSB

Landscape ecology problem, using electrical network theory to model
animal movement an gene flow.

    Brad McRae
    National Center for Ecological Analysis and Synthesis
    735 State Street, Suite 300
    Santa Barbara, CA 93101-5504
    Tel: (541) 223-1170
    FAX: (805) 892-2510
    email: mcrae at nceas.ucsb.edu
    http://www.nceas.ucsb.edu/~mcrae/

--------------------------------------------------------------------------------

NOTE (added Feb 9, 2012): The McRae/ecology1 matrix is tagged in the UF Sparse
Matrix Collection as \'not positive definite\', but it appears to be very close
to being positive definite.  See below for more details.

--------------------------------------------------------------------------------

On 01/09/2012 02:20 PM, Alexander Andrianov wrote:
Dear Professor Davis,

I am trying to test an eigensolver on your sparse matrix collection but am
having difficulty figuring out the "indefiniteness" of the following instance:
ecology1. It looks like the smallest eigenvalue is so close to the machine
precision that running the eigensolver with different settings results in a
range of the estimates from 9.2271971e-15 to -4.8936273e-14. Running the dense
eigensolver is not an option due to the problems size (1000000). To make things
more interesting, both LDL and (somewhat modified for semi-definite case)
Cholesky factorizations seem to factorize that matrix fine even though Cholesky
results in a normalized residual which may vary between 1.0e-11 and 1.e-16
while LDL factorization\'s normalized residual is around the machine precision.

So I was wondering if you have some eigenvalue info on that matrix. And more
generally would it be possible for you to include more information about each
matrix in your collection such as the eigenvalue range (smallest and largest)
as well as some conditioning info? That would most certainly help in instance
selection for test sets for various solvers.

Thank you for nay help with this.

Best regards,
Alexander Andrianov SAS Institute Inc.

--------------------------------------------------------------------------------

From: Tim Davis
Sent: Monday, January 09, 2012 2:26 PM
To: Alexander Andrianov
Cc: Leslie Foster
Subject: Re: UF collection matrices info

I\'ve begun to collect the singular values, but so far I have only matrices of
dimension 25,000 or less (or so).  I don\'t have eigenvalue info for any matrix,
but it\'s something I\'ve considered.  I just haven\'t done it yet.

The difficulty I would have for this matrix is the same that you have, though.
I might report -1e-14, or 1e-16, depending on how I compute it.

Les Foster may have more info.  You could try our recent spqr_rank pagckage
to find the rank.  It\'s pretty accurate and doesn\'t require an SVD.

Thanks,
Tim
',

}

