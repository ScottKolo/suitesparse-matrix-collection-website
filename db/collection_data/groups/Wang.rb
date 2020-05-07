{
    name: 'Wang',
    num_matrices: '6',
    notes: '3D semiconductor device, 2D incompressible flow. S. Wang, Univ. New South Wales.

The simulators solve the corresponding coupled nonlinear PDE
system (i.e. the semiconductor device equations or the Navier-Stokes equations)
iteratively and in each nonlinear iteration unsymmetric sparse matrices 
with the same sparse pattern are formed.

The size of the matrices depends on the mesh used. Typical size (3d problems)
is 60,000. Presently the CGS is used.  These represent smaller test matrices.

The swang1.rua and swang2.rua matrices:
---------------------------------------
They are from the discretisation of the vorticity equation based on
a arbitrary triangular mesh with 3489 mesh nodes. The problem
is a square driven cavity problem and the Reynolds number is 1000.
The discretisation used is an exponentially fitted finite volume
method. Reference: ``An exponentially fitted finite volume method
for the solution of incomopressible flow problems\'\' by Miller J.J.H
and Wang S. in Proceedings of the 4th international symposium
on computational fluid dynamics, vol.3, Davis, California, 1991 pp49-54.

swang1.rua and swang2.rua have the same nonzero pattern.

The wang1.rua and wang2.rua matrices:
-------------------------------------
These two files are from the discretisation of the electron continuity
equations of a 3d diode with piecewise doping function N = 10e16 in
n-region and -10e16 in p-region. The mesh is a non-uniform mesh with
14x14x16 (=3136) mesh nodes, and the forward bias is 1 volt. 
Reference: ``An exponentially fitted finite element method for
a stationary convection-diffusion problem\'\' by Miller J.J.H. and Wang S.
in Computatioal methods for boundary and interior layers in
several dimensions (ed. Miller J.J.H.), Boole Press, Dublin, 1991
pp 120-137.

wang1.rua and wang2.rua have the same nonzero pattern.

The wang3.rua matrix:
---------------------
The same 3d diode semiconductor device problem as the wang1.rua and
wang2.rua matrices, but at a higher resolution.

The wang4.rua matrix:
---------------------
A MOSFET (metal on semiconductor field-effect device). The doping profile 
is 1.0e19 in the two n-regions and 1.0e15 in the p-region (it is an
n-channel device). The applied biases are 0 on substrate and source
terminals, 0.2 on drain terminal and 5.0 on gate terminal.

Meshes for the wang3.rua and wang4.rua problems: 30 X 30 X 30 uniform mesh is
used for both.  The orders of the two linear systems are about 26,000 
(due to the Dirichlet boundaries).

Reference for the discretisation scheme (wang3 and wang4):
either the previous reference or `An analysis of the Scharfetter-Gummel box
method for the stationary semiconductor device equations\' by J.J.H. Miller
and S. Wang, RIORO Model. Math. Nal. Numer., vol. 28, No.2, 1994, pp123-140


Dr. Song Wang
School of Mathematics
University of New South Wales
Sydney, 2052
Australia
email: S.Wang :at the domain: unsw.edu.au


Minor change, 3/31/03:  "rua" changed to "RUA" 4 of the matrices.
',

}

