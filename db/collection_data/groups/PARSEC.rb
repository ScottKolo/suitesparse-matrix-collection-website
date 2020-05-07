{
    name: 'PARSEC',
    num_matrices: '21',
    notes: 'PARSEC matrices, density functional theory. Zhou, Saad, Tiago, Chelikowsky, UMN.

------------------------------------------------------------------
 Yunkai Zhou
 Dept. of Computer Science & Eng.   http://www.cs.umn.edu/~yunkai
 University of Minnesota            fax:   612-625-0572
 200 Union St. SE.                  phone: 612-203-1816 (cell)
 Minneapolis, MN 55455              email: (first name) at the domain cs.umn.edu
------------------------------------------------------------------

The matrices I am trying to submit are from symmetric eigenvalue
problems in density functional theory calculations.

The matrices are sparse, indefinite, with multiple and clustered
eigenvalues---typical character of Hamiltonian matrices from the
Kohn-Sham equations.

Sparsity structures of the matrices may be viewed at
http://www-users.cs.umn.edu/~yunkai/matrices/
One can see very nice, kind of self-similar (fractal) sparsity
structures if using higher resolution for the plots.

------------------------------------------------------------------

Contributors:
Yunkai Zhou, Yousef Saad, Murilo L. Tiago and James R. Chelikowsky.
------------------------------------------------------------------

The matrices are obtained using the PARSEC package.

PARSEC is a FORTRAN90 package in density functional theory (DFT)
calculations, it implements the real-space pseudopotential method
(e.g. [1,2]). High order centered finite difference schemes are used
for the discretization of the Laplacian in the Kohn-Sham equations.
PARSEC is developed by a research group lead by Prof. J. R.
Chelikowsky and Prof. Y. Saad.

The Hamiltonian matrices are constructed when self-consistency
in the self-consistent loop is reached.

Some of the matrices have been used in [3, 4].

[1] @Article{cts:94,
  author =	 {J. R. Chelikowsky and N. Troullier and Y. Saad},
  title =	 {Finite-difference-pseudopotential method: Electronic
                  structure calculations without a basis},
  journal =	 {Phys. Rev. Lett.},
  year =	 1994,
  volume =	 72,
  pages =	 {1240-1243}
}

[2] @Article{che-PDFM00,
  author =	 {J.R. Chelikowsky},
  title =	 {The Pseudopotential-Density Functional Method
                  Applied to Nanostructures},
  journal =	 {J. Phys. D: Appl. Phys.},
  year =	 2000,
  volume =	 33,
  pages =	 {R33--R50}
}

[3] @TechReport{chebdav,
  author =	 {Y. Zhou and Y. Saad},
  title =	 {A {Chebyshev-Davidson} Algorithm for Large
                  Symmetric Eigenvalue Problems},
  institution =	 {Minnesota Supercomputing Institute, Univ. of
                  Minnesota},
  year =	 {2005},
}

[4] @TechReport{blkchebdav,
  author =	 {Y. Zhou},
  title =	 {Block-wise Polynomial Filtered {Davidson}-type
                  Subspace Iteration},
  institution =	 {Minnesota Supercomputing Institute, Univ. of
                  Minnesota},
  year =	 {2005},
}


======================================================================
',

}

