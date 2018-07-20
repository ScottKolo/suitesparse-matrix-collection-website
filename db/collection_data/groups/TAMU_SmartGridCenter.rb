{
    name: 'TKK',
    num_matrices: '12',
    notes: 'Matrices from Reijo Kouhia, Structural Mechanics, Helsinki Univ. of Technology
(Teknillinen Korkeakoulo)

http://users.tkk.fi/~kouhia/sparse.html

Sparse matrix test problems
These matrices are stored either in the compressed column format (Harwell-Boeing format, see I. Duff et al.: Sparse Matrix Test Problems, ACM Transactions on Mathematical Software, Vol. 15 No. 1, March 1989, 1-14) or in the MatrixMarket coordinate format (R.F. Boisvert et al.: The Matrix Market Exchange Formats: Initial Design, NISTIR 5935, 1996). Description of both formats can be found from MatrixMarket.

    * Cylindrical shell problems: Short description (html), and slightly more
      informative documentation (gzipped postcript-file cylshell.ps.gz, size
      205 k).

  The following matrices can be found from the MatrixMarket in the set CYLSHELL

      o Cyl shell, R/t = 10, unif 30 x 30 quadrilateral mesh, N = 5489,
         NZ = 143300, triangular mesh NZ = 112505,
      o Cyl shell, R/t = 100, unif 30 x 30 quadrilateral mesh, N = 5489,
         NZ = 143300, triangular mesh NZ = 112505,
      o Cyl shell, R/t = 1000, unif 30 x 30 quadrilateral mesh, N = 5489,
         NZ = 143300, triangular mesh NZ = 112505
      o Cyl shell, R/t = 1000, unif 100 x 150 quadrilateral mesh, N = 90449,
         NZ = 2455670, triangular mesh NZ = 1921955
      o Cyl shell graded mesh with 1666 triangles R/t = 1000, N = 5357,
         NZ = 106526,

Matrices in this group:

    Kouhia/s4dkt3m2
    Kouhia/g3rmt3m3
    Kouhia/t520
    Kouhia/smt
    Kouhia/engine
    Kouhia/plbuckle
    Kouhia/cbuckle
    Kouhia/cyl6
    Kouhia/tube1
    Kouhia/tube2
    Kouhia/t2d_q4
    Kouhia/t2d_q9

Matrices from Reijo Kouhia in other matrix groups:

    Cylshell/s1rmq4m1
    Cylshell/s2rmq4m1
    Cylshell/s3rmq4m1
    Cylshell/s1rmt3m1
    Cylshell/s2rmt3m1
    Cylshell/s3rmt3m1
    Cylshell/s3rmt3m3
    GHS_psdef/s3dkq4m2
    GHS_psdef/s3dkt3m2


--------------------------------------------------------------------------------
s4dkt3m2
--------------------------------------------------------------------------------

  Some additional cases not in MatrixMarket:
      o Cyl shell R/t = 10000, unif 100 x 150 triangular mesh,
             s4dkt3m2.dat.gz , N = 90449, NZ = 1921955

--------------------------------------------------------------------------------
g3rmt3m3
--------------------------------------------------------------------------------

      o g3rmt3m3.dat.gz 

--------------------------------------------------------------------------------
t520.hb.gz, t520.load.gz
--------------------------------------------------------------------------------

    * T-beam: t520.hb.gz , load vector, t520.load.gz ,

--------------------------------------------------------------------------------
smt.hb.gz, smt.mtx.gz
--------------------------------------------------------------------------------

    * 3-D solid model from a thermal stress analysis of a surface mounted
      transistor, N = 25710, NZ = 1889447,
      1704 triquadratic Serendipity 20 node brick elements, four different
      materials.  HB-format file smt.hb.gz, MM-format file smt.mtx.gz,
      figure of the FE-model: smt.ps.gz

--------------------------------------------------------------------------------
engine.hb.gz, engine.rhs.gz
--------------------------------------------------------------------------------

    * 3-D solid model from a thermal stress analysis of an engine head: matrix
      in HB-format: engine.hb.gz, rhs-vector: engine.rhs.gz

--------------------------------------------------------------------------------
eigen/plb_k, eigen/plb_g -> renamed plbuckle
--------------------------------------------------------------------------------

    * Double eigenvalue plate buckling problem: stiffness matrix and initial
    stress matrix .  Symmetric matrices, upper triangle is stored in coordinate
    format.

--------------------------------------------------------------------------------
ck.dat, cg.dat -> renamed cbuckle
--------------------------------------------------------------------------------

    * Compressed cylindrical shell -- buckling problem: stiffness matrix and
      initial stress matrix .  Symmetric matrices, lower triangle is stored in
       coordinate format N = 13681.

--------------------------------------------------------------------------------
cyl6, v_6_[0,1,2]
--------------------------------------------------------------------------------

    * Cylindrical shell, from non-linear analysis, indefinite: HB-format file
         cyl6.dat.gz Symmetric matrix N = 13681, NZ = 363961.
          Some rhs vectors at step 6 v_6_0.rhs, v_6_1.rhs, v_6_2.rhs

--------------------------------------------------------------------------------
tube*
--------------------------------------------------------------------------------

    * Tube, SPD matrix: HB-format file tube1.dat.gz Symmetric matrix N = 21498,
         NZ = 459277.  HB-format file tube1-2.dat.gz Symmetric matrix N = 21498,
         NZ = 459277, load vector tube1-2.load.gz

--------------------------------------------------------------------------------
t2d_q4
--------------------------------------------------------------------------------

    * Non-linear diffusion problem, sequence of matrices and rhs-vectors. These
      matrices are in the compressed sparse row format (CSR). 100x100 bilinear
      mesh (41 MB)

--------------------------------------------------------------------------------
t2d_q9
--------------------------------------------------------------------------------

    * Non-linear diffusion problem, sequence of matrices and rhs-vectors. These
      matrices are in the compressed sparse row format (CSR)
      50x50 biquadratic mesh (87 MB). Temperature field. 


The following data was not imported into the UF Sparse Matrix Collection:

--------------------------------------------------------------------------------
mesh2
--------------------------------------------------------------------------------

  Node-unknown data for mesh 2 (100 x 150 element mesh)
',

}

