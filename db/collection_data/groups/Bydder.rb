{
    name: 'Bydder',
    num_matrices: '2',
    notes: 'MRI reconstruction matrices from Mark Bydder, UCSD.
Note that that A is sparse and rectangular, and b is complex.
Added March, 2006.

--------------------------------------------------------------------------------
Excerpts of description, from email:
--------------------------------------------------------------------------------

Inside there is a matrix A and a RHS vector b. Usually we want to
solve Ax=b, for example x = lsqr(A,b,0,10) uses conjugate gradient
on the normal equations to give an approximate answer. The data b are
Fourier coefficients at arbitrary locations (in this case, in a spiral
trajectory) and the matrix interpolates these data onto
a regular grid suitable for FFT. So it\'s like non-uniform FFT.

Please let me know if you find this matrix helpful or want to try some
other (similar) matrices, eg. with radial trajectories.

--------------------------------------------------------------------------------

The matrix I sent derives from a technique called regridding - a process
of interpolating data at arbitrary locations onto an equally spaced grid.

Eg. we sample a function f at two points 0<x,y<1, f(x) = X and f(y) = Y,
then want to estimate the values of f(0) and f(1). Assuming an interpolation
method (say, linear interpolation) we can write

X = (1-x)*f(0) + x*f(1)
Y = (1-y)*f(0) + y*f(1)

So in this case the matrix A = [1-x x;1-y x] and the right hand side is
[X Y].  This is why A is real - it consists of the interpolation
coefficients. The RHS represent the data, which are Fourier domain in MRI
hence complex valued.

For a problem with ~1e5 knowns and unknowns, that we encounter regularly,
finding a feasible solution is computationally intensive. And, like you
noticed, some parts of the solution are very well supported by data while
other parts are supported poorly, due to the variable sampling density.

I\'ve attatched a paper that gives some examples and background.
[See references below]

As far as I know, the only solver that can produce an answer to Ax=b
is lsqr which gives the minimum norm. The other methods in MATLAB fail
in various ways. The min norm solution does appear to be acceptable, insofar
as the resulting images look good. I\'d imagine most "reasonable" solutions
to Ax=b would also be acceptable although I have no results to support 
this :)

The preference would be for reliable & fast, over a specific type of
norm or metric minimization.

An interesting side issue is brought up in the paper attatched - how to
calculate the sampling density d at the sampling points, ie. how many
data points are there per unit area. The sampling density is widely used
to approximate the min norm solution as x ~ A\'*(b./d).

One way to find d is to solve A\'*q=ones(n,1), then d = 1./q. This might be
an interesting test problem for someone interested in numerical issues only,
since it does not involve measurement noise.

Well I do hope the info I\'ve given you is useful - I\'m more than happy
to provide article references, matrices and data if you decide the matrix is
sufficiently interesting :)

Best wishes,
Mark

--------------------------------------------------------------------------------

for the mri2 matrix:

Please find attatched another MRI matrix A and a RHS vector b.
In case you want to see the end result, these commands will help:

x=lsqr(A,b);
imagesc(abs(fftshift(fft2(reshape(x,384,384)))))

--------------------------------------------------------------------------------

References:  "On the optimality of the Gridding Reconstruction Algorithm",
H. Sedarat and D. G. Nishimura, IEEE Trans. Medical Imaging, vol 19, no 4,
pp. 306-317, 2000.
',

}

