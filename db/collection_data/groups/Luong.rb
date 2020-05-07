{
    name: 'Luong',
    num_matrices: '2',
    notes: 'Photogrammetry problem from Bruno Luong, FOGALE nanotech, France.

The problem of interest is:

    [U S V]=svd(full(A),0);
    s=diag(S);

The spectrum has two parts:
- the singular values s(1) to s(end-7) are 1.7486e-004 to 3.4655e-007 
(ratio 504.57).
- the singular values s(end-6) to s(end) is smaller than 2.9614e-012 
(ratio > 5.9e7).

So in my problem, I consider
K = span<U(:,end-6:end) > is the kernel of A, and
L = span<U(:,1:end-7) > = orthogonal(K) is isomorph to Im(A).

The rank deficient is not quite clear since of A is a Jacobian of 
certain non-linear operator. One can prove this non-linear operator has 
a same value on a manifold of dimension 7. This manifold has some sort 
of curvature.

Best regards,

Bruno

',

}

