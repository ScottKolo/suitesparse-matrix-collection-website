{
    name: 'Puri',
    num_matrices: '4',
    notes: 'ABAQUS benchmarks: pt.loaded fluid-filled shell.  Srinivasan Puri
ROM benchmark test matrices.

http://sites.google.com/site/srinivaspuri/Home/rom-test-matrices

The problem can be found in any ABAQUS Benchmark manual: Section
1.10.2, and is often known as the "acid-test" within the
structural-acoustic community.

A small description of the problem follows.

The Abaqus/Standard Model:

This problem involves the steady-state vibration of a point-loaded
spherical shell coupled to an acoustic fluid that fills its interior.
It is modeled using axisymmetric shell and acoustic elements. The
closed form solution of Stepanishen and Cox (2000) is used for
validation of the analysis. The basis of the coupled
acoustic-structural vibration capability in Abaqus is described in
"Coupled acoustic-structural medium analysis," Section 2.9.1 of the
Abaqus Theory Manual, and "Acoustic, shock, and coupled
acoustic-structural analysis," Section 6.9.1 of the Abaqus Analysis
User\'s Manual.

Problem description

The model is a semicircular shell and fluid mesh of radius 2.286 m. A
point load on the symmetry axis of magnitude 1.0 N is applied to the
shell. The shells are 0.0254 m in thickness and have a Young\'s modulus
of 206.8 GPa, a Poisson\'s ratio of 0.3, and a mass density of 7800.0
kg/m^{3}. The acoustic fluid has a density, of 1000 kg/m^{3} and a bulk
modulus, of 2.25 GPa. The response of the coupled system is calculated
for frequencies ranging from 100 to 1000 Hz in 5 Hz increments. There
are two different finite element meshes used: one with explicitly
defined acoustic-structural interaction elements and one that uses the
*TIE option. The former model consists of 220 SAX1 elements surrounding
a mesh of 15848 ACAX4 elements. Coupling is effected using 220 ASI2A
elements. The latter model uses 80 SAX2 elements surrounding a mesh of
965 ACAX8 elements. For this mesh, coupling is effected using the *TIE
option to generate the acoustic-structural interaction elements
internally.

A dummy part is included in the models to ensure that the analytical
solution appears in the output database. This part consists of a single
point mass, uncoupled from the model described above, with a
displacement boundary condition on degree of freedom 1. This imposed
displacement uses an amplitude table consisting of the Stepanishen/Cox
analytical solution for the drive point admittance.

The ANSYS Model & the Higher Dimensional Coupled System Matrices:

We generate the required matrices in ANSYS by reading through the
ABAQUS documentation and preparing the relevant finite element mesh in
ANSYS. This particular model was done with ANSYS V10/V11. A detailed
description can be found in and R. S. Puri, D Morrey, J. L. Cipolla
(2007) and R. S. Puri (2008). In the ANSYS model, we sweep from
100-1000Hz in 1Hz increments as opposed to 5Hz increments in the ABAQUS
model. This is simply for ease of comparison with analytical solutions
- since we have closed form solutions at every 1Hz. increments for the
undamped case.

A diagram of the coupled Finite Element mesh along with the point
loading condition/location & the sparsity plots of the coupled
stiffness and mass matrices are given at
http://sites.google.com/site/srinivaspuri/Home/rom-test-matrices

For the undamped model, the matrices can be found in BM_Uda.zip in the
Attachments section.

For damped models, we have three sub test cases: Low Damping, Moderate
Damping, High Damping.  The higher dimensional matrices can be found in
BM_Ld.zip ; BM_Md.zip ; BM_Hd.zip in the Attachments sections (see
"contd.." sub page also).

General file description are as follows:

full* represents higher dimensional system.

full.M: Coupled Mass matrix: Unsymm. (explicit zeros in Mzeros matrix)
full.K: Coupled Stiffness matrix: Unsymm.
full.E: Structural-Acoustic damping matrix
     (In this case, we vary only structural damping).
full.B: Structural-Acoustic input vector
     (i.e forcing function for the freq domain simulation)
full.C: Output measurement matrix.
full.C.names: Description of the output measurement:
     Not required for model reduction.
frequency.txt: Frequencies for frequency domain simulation.
     (100-1000Hz.)
N10945_<ud/ld/md/hd>.txt: Results from direct inversion of the
     higher dimensional system:  Coupled nodal displacements.
TSSOAR_N10945_<ld/md/hd>.txt: Results from Two Sided Arnoldi
     projection:  Coupled nodal displacements.
closedform.txt: Velocity Results from analytical solution
     [modal expansion] for the problem.

Key: <ud>: undamped;
     <ld>: low damping;
     <md>: moderate damping;
     <hd>: high damping.

Coupled System Matrix Properties:

Type: Second order, SISO.
Format: Matrix Market.
Dimension: 23412 x 23412.
Mass Matrix: Coupled, Unsymmetric.
Stiffness Matrix: Coupled, Unsymmetric.
Damping Matrix: Undamped & Structurally Damped Symmetric.

Approximation Properties:

State Variable to be approximated: Coupled Displacement at driving point location.
Eigen Solution:
    50 coupled vectors for say Coupled Lanczos projection procedure ;
    Uncoupled approach: 50 structural and uncoupled acoustic modes
        till 4000Hz for AMLS projection.

Arnoldi Vectors:
    100 for undamped via One Sided or Two Sided Arnoldi Process [OSA-TSA];
    110 for damped via Two-Sided Second Order Arnoldi Process [SOAR].

Matrix Extraction Information:

[1.0] Undamped Matrices:

BM_Uda.zip : No issues to report. You should be able to generate the
plots in Figure: 3 and Figure: 4 with minimal effort.

[1.1] Damped Matrices:

BM_<Ld/Md/Hd>.zip : No issues with Mass and Stiffness Matrices. The
damping matrices for the weakly non-linear test cases are assembled
from the total Dynamic matrix in ANSYS. That is, ANSYS writes the
dynamic, coupled structural-acoustic "supermatrix" as follows:

[A] {x} = F ;                                       -- Equation (1)

where, [A] is the dynamic "super matrix" which is computed as follows:

[A]  =  -Omega^{2} [M] + i*Omega [E] + [K]  ;       -- Equation (2)

which is directly written to the ANSYS FULL file. It follows from
above that the damping matrix can be "back calculated" by using the
following relationship:

[E] = [Ai]  / Omega  ;                              -- Equation (3)

where,  [Ai] represents the imaginary part of the dynamic coupled
structural-acoustic "super matrix".

Unfortunately, at this moment, there is no other direct way to extract
the damping matrix including linearly varying damping.

Shortly speaking, the damping matrix [E] for the coupled
structural-acoustic system can be extracted by dividing the imaginary
part of the "super matrix" with a high enough frequency.

Remarks on Matrix Extraction for Damped Test Cases:


For the damped cases, the [E] matrices for the benchmark models were
extracted at around 1000Hz, which is close to the end frequency of the
analysis range.

This above extraction procedure sometimes results in a "non-symmetric"
damping matrix rather than a symmetric one, which can be attributed to
the very small "round-off" differences at different frequencies. Note
also that this "unsymmetricity" is not always the case. In many cases
(e.g. ones with lower dimension), the damping matrices are indeed
symmetric.

Saying that, we note that this should not yield any issues/differences
in the dimension reduction process.

Please let me know if you do encounter any difficulties or questions
on the matrices/reduction process. Results for the linearly damped
cases can be found in R. S. Puri (2008).

References:

Stepanishen,  P., and D. L. Cox, "Structural-Acoustic Analysis of an
Internally Fluid-Loaded Spherical Shell: Comparison of Analytical and
Finite Element Modeling Results," NUWC Technical Memorandum 00-118,
Newport, Rhode Island, 2000.

Puri, R. S., D. Morrey, and J. L. Cipolla (2007), A comparison between
One-sided and Two-sided Arnoldi based model order reduction techniques
for fully coupled structural acoustic analysis. In 153rd Meeting of
the Acoustical Society of America, The Journal of Acoustical Society
of America, Volume 121.

R.S. Puri (2008), Krylov Subspace Based Direct Projection Techniques
For Low Frequency, Fully Coupled, Structural Acoustic Analysis and
Optimization, Ph.D. Thesis, School of Technology, Department of
Mechanical Engineering and Mathematical Sciences, Oxford Brookes
University, Oxford, UK.

E. B. Rudnyi and J. G. Korvink (2006), Model Order Reduction for Large
Scale Engineering Models Developed in ANSYS. Lecture Notes in Computer
Science, v. 3732, pp. 349-356.

If you run into any trouble, do ping me:
srinivaspuri[at]gmail[dot].com
',

}

