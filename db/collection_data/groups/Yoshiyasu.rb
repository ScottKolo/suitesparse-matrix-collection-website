{
    name: 'Yoshiyasu',
    num_matrices: '2',
    notes: 'Image editting and mesh deformation problem from Y. Yoshiyasu, Keio Univ., Japan

I uploaded 5 matrices A1,b1,A2,b2 and D (for x=(A1\'*A1)/(A1\'*b1) and
v=(A2\'*D*A2)/(A2\'*D*b2)).  What I\'m doing is template-mesh deformation to match
with silhouettes.  In this process, there are two kinds of linear systems that
I have to solve.

First one is smooth vector field construction from images, which is harmonic
interpolation (minimizing laplacian: Lx=0) of intensity gradient field p.  I\'m
solving this by normal equation and cholesky factorization.

x=(A1\'*A1)/(A1\'*b1)

where A1=[L;C] and b1=[zeros(size(length(L),1);1);C*p]. C is a square diagonal
matrix containing weights.  I\'m doing this on a 400x300 image, so
Ix=reshape(x,400,300) must be done to get the vector field. After solving y
direction for Iy, the result is visualized with quiver(Ix,Iy).   At each
iteration the both C submatrix and the right-hand-side change but L remains
unchanged.

Second one is template deformation using above vector field.  I\'m solving this
by:

v=(A2\'*D*A2)/(A2\'*D*b2)

where D is diagonal matrix containing weights.  Structures of A2 and b2 are a
little bit more complex than A1 and b1, but they are similar.

Both systems are not quite time-consuming for themselves, but I iterate this
process more than 10 times for 10 views. So I would like them to be faster and
also I\'d like to reuse and update the factored matrix (if it\'s possible).

[Reply:  if all of C changes at each step, this is a nearly n-rank change,
so an update/downdate process would be much more expensive than refactorizing
the matrix.  Update/downdate is effective for low-rank changes.

In the collection,]


',

}

