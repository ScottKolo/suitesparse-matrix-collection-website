{
    name: 'Engwirda',
    num_matrices: '1',
    notes: 'Unstructured 2D mesh (an airfoil) from Darren Engwirda.
Includes coordinates of the mesh.  Used in a Navier-Stokes solver.
Added March, 2006.

Try this in MATLAB:

A = Problem.A ;
p = Problem.coord ;
t = Problem.t ;
n = size (A,1) ;
b = ones (n,1) ;
x = A\\b ;
gplot(A,p) ;
trimesh (t, p(:,1), p(:,2), x) ;

',

}

