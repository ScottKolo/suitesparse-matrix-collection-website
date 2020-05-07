{
    name: 'UTEP',
    num_matrices: '3',
    notes: 'Matrices from Lenka Dubcova, Jakub Cerveny, and Pavel Solin
Univ. of Texas at El Paso.   From a PDE solver.  The fill-in when working on
a leading submatrix can be higher than for the whole matrix.

Subsets of interest are the first k rows and columns where:

    matrix Dubcova1	k = 12033
    matrix Dubcova2	k = 48641
    matrix Dubcova3	k = 81153


Details below:


1 Dubcova1 ==========================================================

---------------- complete matrix:
      name: \'UTEP/Dubcova1\'
     title: \'Univ. Texas at El Paso, from a PDE solver\'
        id: 1847
         A: [16129x16129 double]
      date: \'2007\'
    author: \'L. Dubcova, J. Cerveny, and P. Solin\'
        ed: \'T. Davis\'
      kind: \'2D/3D problem\'

UMFPACK resid 1.23002e-10, tot time 0.374201 with AMD
nnz L: 576080 (with AMD), ordering time: 0.035546
nnz L: 608040 with METIS, ordering time: 0.264172
UMFPACK resid 1.22938e-10, tot time 0.625973 with METIS

---------------- small subset:
UMFPACK resid 1.20162e-10, tot time 0.406472 with AMD
nnz L: 814164 (with AMD), ordering time: 0.024683
nnz L: 571918 with METIS, ordering time: 0.169995
UMFPACK resid 1.19592e-10, tot time 0.458673 with METIS


2 Dubcova2 ==========================================================

---------------- complete matrix:
      name: \'UTEP/Dubcova2\'
     title: \'Univ. Texas at El Paso, from a PDE solver\'
        id: 1848
         A: [65025x65025 double]
      date: \'2007\'
    author: \'L. Dubcova, J. Cerveny, and P. Solin\'
        ed: \'T. Davis\'
      kind: \'2D/3D problem\'

UMFPACK resid 1.91486e-09, tot time 1.991 with AMD
nnz L: 2956869 (with AMD), ordering time: 0.168376
nnz L: 3018738 with METIS, ordering time: 1.42383
UMFPACK resid 1.9355e-09, tot time 3.30308 with METIS

---------------- small subset:
UMFPACK resid 1.89023e-09, tot time 2.54658 with AMD
nnz L: 4357099 (with AMD), ordering time: 0.121351
nnz L: 2835807 with METIS, ordering time: 0.92858
UMFPACK resid 1.87189e-09, tot time 2.48607 with METIS


3 Dubcova3 ==========================================================

---------------- complete matrix:
      name: \'UTEP/Dubcova3\'
     title: \'Univ. Texas at El Paso, from a PDE solver\'
        id: 1849
         A: [146689x146689 double]
      date: \'2007\'
    author: \'L. Dubcova, J. Cerveny, and P. Solin\'
        ed: \'T. Davis\'
      kind: \'2D/3D problem\'
     Zeros: [146689x146689 double]

UMFPACK resid 2.04934e-09, tot time 5.38897 with AMD
nnz L: 7252162 (with AMD), ordering time: 0.331024
nnz L: 7539100 with METIS, ordering time: 2.49977
UMFPACK resid 2.05082e-09, tot time 7.39527 with METIS

---------------- small subset:
UMFPACK resid 2.04213e-09, tot time 5.87802 with AMD
nnz L: 10085274 (with AMD), ordering time: 0.195067
nnz L: 6536588 with METIS, ordering time: 1.11139
UMFPACK resid 2.03453e-09, tot time 4.6961 with METIS

',

}

