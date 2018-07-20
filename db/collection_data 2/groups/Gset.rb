{
    name: 'Guettel',
    num_matrices: '3',
    notes: '3D Transient Electromagnetic Modelleing, Stefan Guettel, Univ Manchester

The TEM problem relates to the time-dependent modelling of a transient
electromagnetic field in geophysical exploration. The set contains a
matrix pencil (C,M) and an initial value vector q, corresponding to a
Nedelec finite element discretization of Maxwell\'s equations for the
electric field density e(t). The curl-curl matrix C is symmetric
positive semi-definite and the mass matrix M is symmetric positive
definite. The problem to be solved is a linear initial value problem

   M*e\'(t) = C*e(t),  M*e(0) = q,

for logarithmically distributed time points t in the interval
[1e-6,1e-3].

There are three test sets which are described in the following
publication:

@article{BEG2015,
  title={Three-dimensional transient electromagnetic modelling using
    rational {K}rylov methods},
  author={B{\\"o}rner, Ralph-Uwe and Ernst, Oliver G and G{\\"u}ttel,
    Stefan},
  journal={Geophysical Journal International},
  volume={202},
  number={3},
  pages={2025--2043},
  year={2015},
  publisher={Oxford University Press}
}

The problem details are

TEM27623: section 5.1 in the above paper; layered half-space problem
discretized by 24582 tetrahedral elements of order 1 giving rise to
27623 degrees of freedom.

TEM152078: section 5.1 in the above paper; layered half-space problem
discretized by 24582 tetrahedral elements of order 2 giving rise to
152078 degrees of freedom.

TEM181302: section 5.2 in the above paper; homogeneous subsurface with
topography discretized by 28849 tetrahedral elements of order 2 giving
rise to 181302 degrees of freedom.

',

}

