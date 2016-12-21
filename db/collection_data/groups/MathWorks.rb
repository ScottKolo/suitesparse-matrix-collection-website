{
    name: 'MaxPlanck',
    num_matrices: '2',
    notes: 'Weather shallow water equations, Max-Planck Institute of Meteoroloy

The two shallow_water* matrices arise from weather shallow water equations
(see http://www.icon.enes.org), from the Max-Plank Institute of Meteorology.
The problem gives rise to an automatic differentiation problem.  An iterative
solver is used for the larger problem, but a direct sovler is used for
finding the adjoints of a linear problem.  The velocity field is integrated
over a time loop with a semi-implicit method.  The implicit part leads to
a linear problem A*x=b, whose entries vary with time.  Two of these matrices
A are in this collection, with shallow_water1 at dtime=100 and shallow_water2
at dtime=200.  The nonzero patterns of the two matrices are the same, but
shallow_water1 is much slower.  The reason is that many denormals appear
during factorization, which greatly slows down the BLAS.  This can be solved
by compiling with gcc -ffast-math, to flush denormals to zero.
',

}

