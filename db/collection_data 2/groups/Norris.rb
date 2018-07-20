{
    name: 'Oberwolfach',
    num_matrices: '38',
    notes: 'Oberwolfach model reduction benchmark collection


================================================================================
==> bone010/README.txt <==
================================================================================

--------------------------------------------------------------------------------
Trabecular Bone Micro-Finite Element Models (bone* problems)
--------------------------------------------------------------------------------

B. van Rietbergen, E. B. Rudnyi, J. G. Korvink

Three-dimensional serial reconstruction techniques allow us to develop very
detailed micro-finite element (micro-FE) model of bones that can very
accurately represent the porous bone micro-architecture. Fig. 1 sketches the
micro finite element analysis [1]. Micro computed tomography (CT) is employed
to make 3D high-resolution images (~50 microns) of a bone. Then the 3D
reconstruction is directly transformed into an equally shaped micro finite
element model by simply converting all bone voxels to equally sized 8-node
brick elements. This results in finite element (FE) models with a very large
number of elements. Such models can be used, for example to study differences
in bone tissue loading between healthy and osteoporotic human bones during
quasi static loading [2].

Fig. 1: see http://www.imtek.de/simulation/benchmark/

Fig. 1. Micro finite element analysis.

There is increasing evidence, however, that bone responds in particular to
dynamic loads [3]. It has been shown that the application of high-frequency,
very low magnitude strains to a bone can prevent bone loss due to osteoporosis
and can even result in increased bone strength in bones that are already
osteoporotic. In order to better understand this phenomenon, it is necessary to
determine the strain as sensed by the bone cells due to this loading. This
would be possible with the micro-FE analysis, but then such an analysis need to
be a dynamic one.

The present benchmark presents 6 bone models varying in dimension from about
200 thousand to 12 millions equations with the goal to research on scalability
of model reduction software. Each model represent a second order system in the
form

M d2x/dt2 + K x = B

y = Cx

where the matrices M and K are symmetric and positive definite. The goal of
model reduction is to speed up harmonic response analysis in the frequency
range 1-100 Hz.

The matrix properties are given in Table 1 below.

Table 1.

Bone micro-finite
element models.

BS01    BS10    B010    B025    B050    B120
number of elements  20098   192539  278259    606253  1378782	3387547
number of nodes	    42508   305066  329001    719987  1644848	3989996
number of DoFs	    127224  914898  986703   2159661  4934244	11969688
nnz in half M	   1182804  9702186 12437739 27150810 61866069  151251738
nnz in half K	   3421188 28191660 36326514 79292769 180663963 441785526

Fig. 2 and 3 : see http://www.imtek.de/simulation/benchmark/

Fig. 2. Bone models for BS01 and BS10.

It should be stressed that the first two models have been obtained differently
and they are much simpler to deal with than the last four. The connectivity in
the last four models is about four times higher. This can be seen by comparing
models BS10 and B010. Although models look similar by number of nonzeros in the
system matrices, the model B010 is much harder to solve: the number of nonzero
elements in the factor for model B010 is about four times more than for BS10.

The method allows for the compact representation of the models, as the element
mass and stiffness matrices are the same for all elements. As a result, a file
describing the node indices for each element is enough to assemble the global
matrix. Each node has three degrees of freedom (UX, UY, UZ) and it contributes
three consecutive entries to the state vector. The node numbering is natural
from the first to the last. The assembly procedure as a pseudo-code is
presented below (indices start from one). It is assumed that the last 300
degrees of freedom are fixed as zero Dirichlet boundary conditions. For
simplicity, the pseudo-code does not take into account that the matrix is
symmetric.

The data file for each model contains the number of elements, nel, and the
number of nodes, nnod, in the first line and then nel lines with eight numbers
for node indices in each line.

The input matrix contains a single column with B(1) = 1. The output matrix
takes first three components of the state vector, that is, three displacements
UX, UY and UZ for the first node.

The archive assemble.tar.gz contains the element mass and stiffness matrices as
well as the sample code in C++ to assemble the dynamic system. The code can
write the dynamic system in the Matrix Market format or can be used as a hook
to transform the global matrices to an appropriate format. The gzipped data
files for element assembly as described above can be downloaded from Table 1.

Model reduction for models BS010 and BS10 was performed in [4]. The
benchmarking of the parallel MUMPS direct solver [5] for the stiffness matrices
is described in [6].  References

[1] B. van Rietbergen, H. Weinans, R. Huiskes, A. Odgaard, A new method to
determine trabecular bone elastic properties and loading using micromechanical
finite-elements models. J. Biomechanics, v. 28, N 1, p. 69-81, 1995.

[2] B. van Rietbergen, R. Huiskes, F. Eckstein, P. Rueegsegger, Trabecular Bone
Tissue Strains in the Healthy and Osteoporotic Human Femur, J. Bone Mineral
Research, v. 18, N 10, p. 1781-1787, 2003.

[3] L. E. Lanyon, C. T. Rubin, Static versus dynamic loads as an influence on
bone remodelling, Journal of Biomechanics, v. 17, p. 897-906, 1984.

[4] E. B. Rudnyi, B. van Rietbergen, J. G. Korvink. Efficient Harmonic
Simulation of a Trabecular Bone Finite Element Model by means of Model
Reduction. 12th Workshop "The Finite Element Method in Biomedical Engineering,
Biomechanics and Related Fields", University of Ulm, 20-21 July 2005.
Proceedings of the 12th FEM Workshop, p. 61-68. ISBN: 3-9806183-8-2.

[5] P. R. Amestoy and A. Guermouche and J.-Y. L\'Excellent, S. Pralet, Hybrid
scheduling for the parallel solution of linear systems. Parallel Computing, v.
32, N 2, pp. 136-156 (2006). http://graal.ens-lyon.fr/MUMPS/

[6] E. B. Rudnyi, B. van Rietbergen, J. G. Korvink. Model Reduction for High
Dimensional Micro-FE Models. TAM\'06, The Third HPC-Europa Transnational Access
Meeting, Barcelona, 14 - 16 June 2006.

==> bone010/bone010.C.names <==
Node1_UX
Node1_UY
Node1_UZ
==> boneS01/boneS01.C.names <==
Node1_UX
Node1_UY
Node1_UZ
==> boneS10/boneS10.C.names <==
Node1_UX
Node1_UY
Node1_UZ

================================================================================
==> chipcool0/README.txt <==
================================================================================

--------------------------------------------------------------------------------
Convective Thermal Flow Problems (chipcool*, flowmeter* problems)
--------------------------------------------------------------------------------

Christian Moosmann, moosmann@imtek.uni-freiburg.de Andreas Greiner,
greiner@imtek.uni-freiburg.de

Many thermal problems require simulation of heat exchange between a solid body
and a fluid flow. The most elaborate approach to this problem is computational
fluid dynamics (CFD). However, CFD is computationally expensive. A popular
solution is to exclude the flow completely from the computational domain and to
use convection boundary conditions for the solid model. However, caution has to
be taken to select the film coefficient.

An intermediate level is to include a flow region with a given velocity
profile, that adds convective transport to the model. Compared to convection
boundary conditions this approach has the advantage that the film coefficient
has not to be specified and that information about the heat profile in the flow
can be obtained. A drawback of the method is the greatly increased number of
elements needed to perform a physically valid simulation, because the solution
accuracy when employing upwind finite element schemes depends on the element
size. While this problem still is linear, due to the forced convection, the
conductivity matrix changes from a symmetric matrix to an un-symmetric one. So
this problem type can be used as a benchmark for problems containing
un-symmetric matrices.

Fig. 1a.    Fig. 1b.  see http://www.imtek.de/simulation/benchmark

Fig. 1. Convective heat flow examples: 2D anemometer model (left), 3D cooling
structure (right)

Two different designs are tested: a 2D model of an anemometer-like structure
mainly consisting of a tube and a small heat source (Fig 1 left) [1]. The solid
model has been generated and meshed in ANSYS. Triangular PLANE55 elements have
been used for meshing and discretizing by the finite element method, resulting
in 19 282 elements and 9710 nodes. The second design is a 3D model of a chip
cooled by forced convection (Fig 1 right) [2]. In this case the tetrahedral
element type SOLID70 was used, resulting in 107 989 elements and 20542 nodes.
Since the implementation of the convective term in ANSYS does not allow for
definition of the fluid speed on a per element, but on a per region basis, the
flow profile has to be approximated by piece-wise step functions. The
approximation used for this benchmarks is shown in figure 1.

The Dirichlet boundary conditions are applied to the original system. In both
models the reference temperature is set to 300 K, Dirichlet boundary conditions
as well as initial conditions are set to 0 with respect to the reference. The
specified Dirichlet boundary conditions are in both cases the inlet of the
fluid and the outer faces of the solids. Matrices are supplied for the
symmetric case (fluid speed is zero; no convection), and the unsymmetric case
(with forced convection). Table 1 shows the output nodes specified for the two
benchmarks, table 2 links the filenames according to the different cases.

Matrices are in the Matrix Market format. The matrix name is used as an
extension of the matrix file. *.C.names contains a list of ouput names written
consecutively. The system matrices have been extracted from ANSYS models by
means of mor4ansys.

Table 1: Output nodes for the two models

Model	Number	Code	Comment
Flow Meter  1	out1	outlet position
	    2	out2	outlet position
	    3	SenL	left sensor position
	    4	Heater	within the heater
	    5	SenR	right sensor position
cooling Structure   1	out1	outlet position
	    2	out2	outlet position
	    3	out3	outlet position
	    4	out4	outlet position
	    5	Heater within the heater

Table 2: Provided files

Model	fluid speed (m/s)   name
Flow Meter  
	    0	    flow_meter_model_v0.tgz	   renamed flowmeter0
	    0.5	    flow_meter_model_v0.5.tgz	   renamed flowmeter5
cooling Structure
	    0	chip_cooling_model_v0.tgz	   renamed chipcool0
	    0.1	    chip_cooling_model_v0.1.tgz	   renamed chipcool1


Further information on the models can be found in [3] where model reduction by
means of the Arnoldi algorithm is also presented.  Bibliography

1 H. Ernst : High-Resolution Thermal Measurements in Fluids, PhD thesis,
University of Freiburg, Germany(2001).

2 C. A. Harper : Electronic packaging and interconnection handbook, New York
McGraw- Hill, USA (1997)

3 C. Moosmann, E. B. Rudnyi, A. Greiner, J. G. Korvink: Model Order Reduction
for Linear Convective Thermal Flow, Proceedings of 10th International Workshops
on THERMal INvestigations of ICs and Systems, THERMINIC2004, 29 Sept - 1 Oct ,
2004, Sophia Antipolis, France.  Preprint is at
http://www.imtek.uni-freiburg.de/simulation/mor4ansys/

==> chipcool0/chip_cooling_model_v0.C.names <==
out1
out2
out3
out4
Heater

==> chipcool1/chip_cooling_model_v0.1.C.names <==
out1
out2
out3
out4
Heater

==> flowmeter0/flow_meter_model_v0.C.names <==
out1
out2
SenL
Heater
SenR

==> flowmeter5/flow_meter_model_v0.5.C.names <==
out1
out2
SenL
Heater
SenR

================================================================================
==> filter2D/README.txt <==
================================================================================

--------------------------------------------------------------------------------
Tunable Optical Filter (filter2D, filter3D problems)
--------------------------------------------------------------------------------

Dennis Hohlfeld, hohlfeld@imtek.uni-freiburg.de Tamara Bechtold,
bechtold@imtek.uni-freiburg.de Hans Zappe, zappe@imtek.uni-freiburg.de

The DFG project AFON (funded under grant ZA 276/2-1) aimed at the development
of an optical filter, which is tunable by thermal means. The thin-film filter
is configured as a membrane in order to improve thermal isolation. Fabrication
is based on silicon technology. Wavelength tuning is achieved through thermal
modulation of resonator optical thickness, using metal resistor deposited onto
the membrane. The devices features low power consumption, high tuning speed and
excellent optical performance [1].

Fig. 1. see http://www.imtek.de/simulation/benchmark

Fig. 1. Tunable optical filter.

The benchmark contains a simplified thermal model of a filter device. It helps
designers to consider important thermal issues, such as what electrical power
should be applied in order to reach the critical temperature at the membrane or
homogeneous temperature distribution over the membrane. The original model is
the heat transfer partial differential equation.

There are two different benchmarks, 2D model and 3D model (see Table 1). Due to
modeling differences, their simulation results cannot be compared with each
other directly.

Table 1: Tunable optical filter benchmarks
Code	    comment			    dimension nnz(A)	nnz(E)
filter2D    2D, linear elements, PLANE55    1668	6209    1668
filter3D    3D, linear elements, SOLID90    108373   1406808	1406791

The device solid models have been made, meshed and discretized in ANSYS 6.1 by
the finite element method. All material properties are considered as
temperature independent. Temperature is assumed to be in Celsius with the
initial state of 0 C. The Dirichlet boundary conditions of T = 0 C have been
applied at the bottom of the chip.

The output nodes for the models are described in Table 2 and schematically
displayed in Fig 2. Output 1 is located at the very center of the membrane. By
simulating itÕs temperature one can prove what input power is needed to reach
the critical membrane temperature for each wavelength. Furthermore, the output
2 to 5 must be very close to output 1 (homogenous temperature distribution) in
order to provide the same optical properties across the complete diameter of
the laser beam.

Table 2: Outputs for the optical filter model
Number	Code	Comment
1 Memb1   Membrane center
2 Memb2   Membrane node with radius 25E-6, theta 90
3 Memb3   Membrane node with radius 50E-6 theta 90
4 Memb4   Membrane node with radius 25E-6, theta 135
5 Memb5   Membrane node with radius 50E-6 theta 135

Fig. 2. see http://www.imtek.de/simulation/benchmark

Fig. 2. Schematical position of the chosen output nodes.

The benchmark contains a constant load vector. The input function equal to 1
corresponds to the constant input power of of 1 mW for 2D model and 10 mW for
3D model. The linear ordinary differential equations of the first order are
written as:

E dT/dt = A T + B u y = C T

where E and A are the symmetric sparse system matrices (heat capacity and heat
conductivity matrix), B is the load vector, C is the output matrix, and T is
the vector of unknown temperatures.

The output of the transient simulation for node 1 over the rise time of the
device (0.25 s) for 3D model can be find in Filter3DTransResults. The results
can be used to compare the solution of a reduced model with the original one.
The time integration has been performed in ANSYS with accuracy of about 0.1 %.
The results are given as matrices where the first row is made of times, the
second of the temperatures.

Download matrices in the Matrix Market format: filter2D.tar.gz, 106502 bytes;
filter3D.tar.gz, 37417415 bytes. The matrix name is used as an extension of the
matrix file. File *.C.names contains a list of ouput names written
consecutively. The system matrices have been extracted from ANSYS models by
means of mor4ansys.

The discussion of electro-thermal modeling related to the benchmark can be
found in [2].

Bibliography

1. D. Hohlfeld, H. Zappe, All-dielectric tunable optical filter based on the
thermo-optic effect, Journal of Optics A: Pure and Applied Optics, 6(6), 504-
511 (2003).

2. T. Bechtold, Model Order Reduction of Electro-Thermal MEMS, PhD thesis,
University of Freiburg, Germany (In preparation).

==> filter2D/filter2D.C.names <==
Memb1
Memb2
Memb3
Memb4
Memb5

==> filter3D/filter3D.C.names <==
Memb1
Memb2
Memb3
Memb4
Memb5

================================================================================
==> gas_sensor/README.txt <==
================================================================================

--------------------------------------------------------------------------------
Microhotplate Gas sensor (gas_sensor problem)
--------------------------------------------------------------------------------

Jürgen Hildenbrand, hildenbr@imtek.uni-freiburg.de Tamara Bechtold,
bechtold@imtek.uni-freiburg.de Jürgen Wöllenstein, woellen@ipm.fhg.de

The goal of European project Glassgas (IST-99-19003) was to develop a novel
metal oxide low power microhotplate gas sensor [1]. In order to assure a robust
design and good thermal isolation of the membrane from the surrounding wafer,
the silicon microhotplate is supported by glass pillars emanating from a glass
cap above the silicon wafer, as shown in Fig 1. In present design, four
different sensitive layers can be deposited on the membrane. The thermal
management of a microhotplate gas sensor is of crucial importance.

Fig. 1. see http://www.imtek.de/simulation/benchmark/

Fig. 1. Micromashined metal oxide gas sensor array; Bottom view (left), top
view (right).

The benchmark contains a thermal model of a single gas sensor device with three
main components: a silicon rim, a silicon hotplate and glass structure [2]. It
allows us to simulate important thermal issues, such as the homogeneous
temperature distribution over gas sensitive regions or thermal decoupling
between the hotplate and the silicon rim. The original model is the heat
transfer partial differential equation.

The device solid model has been made and then meshed and discretized in ANSYS
6.1 by means of the finite element method (SOLID70 elements were used). It
contains 68000 elements and 73955 nodes. Material properties were considered as
temperature independent. Temperature is assumed to be in degree Celsius with
the initial state of 0 C. The Dirichlet boundary conditions of T = 0 C is
applied at the top and bottom of the chip (at 7038 nodes).

The output nodes are described in Table 1. In Fig 2 the red marked nodes are
positioned on the silicon rim. Their temperature should be close to the initial
temperature in the case of good thermal decoupling between the membrane and the
silicon rim. The black marked nodes are placed on the sensitive layers above
the heater and are numbered from left to right row by row, as schematically
shown in Fig 2. They allow us to prove whether the temperature distribution
over the gas sensitive layers is homogeneous (maximum difference of 10C is
allowed by design).

Table 1: Outputs for the gas sensor model
Number    Code		  Comment
1	aHeater		  within a heater, to be used for nonlinear input
2-7	SiRim1 to SiRim7  silicon rim
8-28	Memb1 to Memb21	  gas sensitive layer

Fig. 2. see http://www.imtek.de/simulation/benchmark/

Fig. 2. Masks disposition (left) and the schematical position of the chosen
output nodes (right).

The benchmark contains a constant load vector. The input function equal to 1
corresponds to the constant input power of 340 mW. One can insert a weak input
nonlinearity related to the dependence of heater\'s resistivity on temperature
given as:

R(T)=R{0}(1 + alpha T)

where alpha =1.469e-3 K^-1. To this end, one has to multiply the load vector by
a function:

{U^2 274.94 (1 + alpha T)}/{0.34 (274.94 (1 + alpha T)+148.13)^2}

where U is a desired constant voltage. The temperature in equation above should
be replaced by the temperature at the output 1.

The linear ordinary differential equations of the first order are written as:

E dT/dt = A T + B u y = C T

where E and A are the symmetric sparse system matrices (heat capacity and heat
conductivity matrix), B is the load vector, C is the output matrix, and T is
the vector of unknown temperatures. The dimension of the system is 66917, the
number of nonzero elements in matrix E is 66917, in matrix A is 885141.

The outputs of the transient simulation at output 18 (Memb11) over the rise
time of the device of 5 s for the original linear (with constant input power of
340 mW) and nonlinear (with constant voltage of 14 V) model are placed in files
LinearResults and NonlinearResults respectively. The results can be used to
compare the solution of a reduced model with the original one. The time
integration has been performed in ANSYS with accuracy of about 0.1 %. The
results are given as matrices where the first row is made of times, the second
of the temperatures.

Download matrices in the Matrix Market format: GasSensor.tar.gz, 8407057 bytes.
The matrix name is used as an extension of the matrix file. File *.C.names
contains a list of ouput names written consecutively. The system matrices have
been extracted from ANSYS models by means of mor4ansys.

The discussion of electro-thermal modeling related to the benchmark including
the nonlinear input function can be found in [3].  Bibliography

1. J. Wöllenstein H. Böttner, J. A. Pláza, Carlos Carné, Y. Min, H. L. Tuller :
A novel single chip thin film metal oxide array, Sensors and Actuators B:
Chemical 93 (1-3) 350-355 (2003).

2. J. Hildenbrand : Simulation and Characterisation of a Gas sensor and
Preparation for Model Order Reduction, Diploma Thesis, University of Freiburg,
Germany (2003).

3. T. Bechtold, J. Hildenbrand, J. Wöllenstein, J. G. Korvink : Model Order
Reduction of 3D Electro-Thermal Model for a Novel, Micromachined Hotplate Gas
Sensor, Proceedings of 5th International conference on thermal and mechanical
simulation and experiments in microelectronics and microsystems, EUROSIME2004,
May 10-12, 2004, Brussels, Belgium, p. 263-267.  Preprint is at
http://www.imtek.uni-freiburg.de/simulation/mor4ansys/

==> gas_sensor/GasSensor.C.names <==
aHeater
SiRim1
SiRim2
SiRim3
SiRim4
SiRim5
SiRim6
Memb1
Memb2
Memb3
Memb4
Memb5
Memb6
Memb7
Memb8
Memb9
Memb10
Memb11
Memb12
Memb13
Memb14
Memb15
Memb16
Memb17
Memb18
Memb19
Memb20
Memb21

================================================================================
==> gyro/README.txt <==
================================================================================

Oberwolfach model reduction benchmark collection
------------------------------------------------

Contributions by Evgenii Rudnyi and Dag Billger.

See also:

http://www.imtek.de/simulation/benchmark
http://www.imtek.de/simulation/benchmark/wb/38847
http://www.imtek.de/simulation/benchmark/wb/35889


--------------------------------------------------------------------------------
IMEGO gyroscope
--------------------------------------------------------------------------------

The Butterfly Gyro
Dag Billger, The Imego Institute, Arvid Hedvalls Backe 4, SE-411 33,
Goteborg, Sweden, Tel. +46 317 501 853, Fax. +46 317 501 801,
Email: dag dot billger at imego dotcom

Figure 1: see http://www.imtek.de/simulation/benchmark/wb/35889/fig1.jpg

Fig. 1. The Butterfly and micro-SIC mounted together. 

The Butterfly gyro is developed at the Imego Institute in an ongoing
project with Saab Bofors Dynamics AB. The Butterfly is a
vibrating micro-mechanical gyro that has sufficient theoretical
performance characteristics to make it a promising candidate for use in
inertial navigation applications. The goal of the current project is to
develop a micro unit for inertial navigation that can be commercialized
in the high-end segment of the rate sensor market. This project has
reached the final stage of a three-year phase where the development and
research efforts have ranged from model based signal processing, via
electronics packaging to design and prototype manufacturing of the
sensor element. The project has also included the manufacturing of an
ASIC, named micro-SIC, that has been especially designed for the
sensor (see Fig. 1). 

The gyro chip consists of a three-layer silicon wafer stack, in
which the middle layer contains the sensor element. The sensor consists
of two wing pairs that are connected to a common frame by a set of beam
elements (see Fig. 2 and 3); this is the reason the gyro is called the
Butterfly. Since the structure is manufactured using an anisotropic
wet-etch process, the connecting beams are slanted. This makes it
possible to keep all electrodes, both for capacitive excitation and
detection, confined to one layer beneath the two wing pairs. The
excitation electrodes are the smaller dashed areas shown in Fig. 2. The
detection electrodes correspond to the four larger ones.

Figure 2: see http://www.imtek.de/simulation/benchmark/wb/35889/fig2.jpg

Fig. 2. Schematic layout of the Butterfly design. 

By applying DC-biased AC-voltages to the four pairs of small
electrodes, the wings are forced to vibrate in anti-phase in the wafer
plane. This is the excitation mode. As the structure rotates
about the axis of sensitivity (see Fig. 2), each of the masses will be
affected by a Coriolis acceleration. This acceleration can be
represented as an inertial force that is applied at right angles with
the external angular velocity and the direction of motion of the mass.
The Coriolis force induces an anti-phase motion of the wings out of the
wafer plane. This is the detection mode. The external angular velocity
can be related to the amplitude of the detection mode, which is
measured via the large electrodes. 

When planning for and making decisions on future improvements of the
Butterfly, it is of importance to improve the efficiency of the gyro
simulations. Repeated analyses of the sensor structure have to be
conducted with respect to a number of important issues. Examples of
such are sensitivity to shock, linear and angular vibration
sensitivity, reaction to large rates and/or acceleration, different
types of excitation load cases and the effect of force-feedback.

The use of model order reduction indeed decreases runtimes for
repeated simulations. Moreover, the reduction technique enables a
transformation of the FE representation of the gyro into a state space
equivalent formulation. This will prove helpful in testing the model
based Kalman signal processing algorithms that are being designed for
the Butterfly gyro.

The structural model of the gyroscope has been done in ANSYS using
quadratic tetrahedral elements (SOLID187, see Fig. 3). The model shown
is a simplified one
with a coarse mesh as it is designed to test the model reduction
approaches. It includes the pure structural mechanics problem only. The
load vector is composed from time-varying nodal forces applied at
the centres of the excitation electrodes (see Fig. 2). The amplitude and
frequency of each force is equal to 0.055 micro-Newtons and 2384 Hz,
respectively. The Dirichlet boundary conditions have been applied to
all degree of freedom of the nodes
belonging to the top and bottom surfaces of the frame. The output nodes
are listed in Table 2 and correspond to the centres of the detection
electrodes (see Fig. 3).

Figure 3: see http://www.imtek.de/simulation/benchmark/wb/35889/fig3.jpg

Fig. 3. Finite element mesh of the gyro with a background photograph
of the gyro wafer pre-bonding.

The structural model

M d<sup>2</sup>x/dt<sup>2</sup> + E dx/dt + K x = B
y = C x

contains the mass M and stifness matrices K. The
damping matrix E can be modeled as E = alpha M + beta K, where the typical
values of alpha and beta are 0 and 1e-6 respectively.  The nature of the
damping matrix is in reality more complex (squeeze film damping, thermo
elastic damping, etc.) but this simple approach has been chosen with respect
to the model reduction test. B is the load vector, C is the output matrix.

The dynamic model has been converted to
(http://math.nist.gov/MatrixMarket/) Matrix Market format by
means of (http://www.imtek.de/simulation/mor4ansys/) mor4ansys. The
statistics for the matrices is shown in Table 1.

Table 1. System matrices for the gyroscope.

      matrix m     n        nnz Is Symmetric?  
      M      17361 17361 178896 yes
      K      17361 17361 519260 yes
      B      17361     1      8 no 
      C         12 17361     12 no

Table 2. Outputs for the Butterfly Gyro Model 

      # Code Comment 

      1-3 det1m_Ux, det1m_Uy, det1m_Uz
	    Displacements of detection electrode 1,
	    (bottom left large electrode of Fig. 2) 

      4-6 det1p_Ux, det1p_Uy, det1p_Uz 
	    Displacements of detection electrode 2,
	    (bottom right large electrode of Fig. 2) 

      7-9 det2m_Ux, det2m_Uy, det2m_Uz 
	    Displacements of detection electrode 3,
	    (top left large electrode of Fig. 2) 
    
    
      10-12 det2p_Ux, det2p_Uy, det2p_Uz 
	    Displacements of detection electrode 4,
	    (top right large electrode of Fig. 2) 

(Note: the original matrices, in Matrix Market format, are at
http://www.imtek.de/simulation/benchmark).

The model reduction of the gyroscope model by means of 
(http://www.imtek.de/simulation/mor4ansys/) mor4ansys is described in Ref [1].

[1] Jan Lienemann, Dag Billger, Evgenii B. Rudnyi, Andreas Greiner,
and Jan G. Korvink, MEMS Compact Modeling Meets Model Order Reduction:
Examples of the Application of Arnoldi Methods to Microsystem Devices,
the Technical Proceedings of the 2004 Nanotechnology Conference and
Trade Show, Nanotech 2004, March 7-11, 2004, Boston, Massachusetts, USA

Preprint is at http://www.imtek.uni-freiburg.de/simulation/mor4ansys/




==> gyro/gyro.C.names <==
det1pUX
det1pUY
det1pUZ
det1mUX
det1mUY
det1mUZ
det2pUX
det2pUY
det2pUZ
det2mUX
det2mUY
det2mUZ

================================================================================
==> inlet/README.txt <==
================================================================================

--------------------------------------------------------------------------------
Active Control of a Supersonic Engine Inlet (Inlet problem)
--------------------------------------------------------------------------------

Karen Willcox, Guillaume Lassaux, and David Gratton

http://web.mit.edu/kwillcox/www/home.htm

================================================================================
==> LF10/README.txt <==
================================================================================

--------------------------------------------------------------------------------
Linear 1D Beam Models (LF* problems)
--------------------------------------------------------------------------------

Jan Lienemann <lieneman (at) imtek (dot) de>, Andreas Greiner <greiner (at)
imtek (dot) de>, Jan G. Korvink <korvink (at) imtek (dot) de> Introduction

Moving structures are an essential part for many microsystem devices, among
them fluidic components like pumps and electrically controllable valves,
sensing cantilevers, and optical structures.

Several actuation principles can be employed on microscopic length scales, the
most frequent certainly the electromagnetic forces. While electrostatic
actuation falls behind at the macro scale, the effect of charged bodies
outperforms magnetic forces in the micro scale both in terms of performance and
fabrication expense.

While the single component can easily be simulated on a usual desktop computer,
the calculation of a system of many coupled devices still presents a challenge.
This challenge is raised by the fact that many of these devices show a
nonlinear behavior. Especially for electrostatic structures, a further
difficulty is the large reach of the electrostatic forces, leading to a strong
spatial coupling of charges.

Accurate modelling of such a system typically leads to high order models. The
tasks of simulation, analysis and controller design of high order nonlinear
control systems can be simplified by reducing the order of the original system
and approximate it by a lower order model.

A application of electrostatic moving structures are e.g. RF switches or
filters. Given a simple enough shape, they often can be modelled as
one-dimensional beams embedded in two or three dimensional space.  Model
description

Setup of beam

This model describes a slender beam with four degrees of freedom per node:

x Axial displacement thetax Axial rotation y Flexural displacement thetaz
Flexural rotation

Degree of Freedom x

Degree of Freedom theta x

Degrees of Freedom y and theta z

The beam is supported either on the left side or on both sides. For the left
side (fixed) support, the force is applied on the rightmost node in y
direction, whereas for the support on both sides (simply supported), a node in
the middle is loaded. The damping matrix is calculated by a linear combination
of the mass matrix M and the stiffness matrix K.  Benchmark examples

Based on the finite element discretization presented in [1], an interactive
matrix generator has been created using Wolfram Research\'s webMathematica. It
is available online at
http://www.imtek.uni-freiburg.de/simulation/mstkmpkt/models/LinearBeam.html,
"Linear beam model". However, models produced by this generator are in the DSIF
format, which allows for nonlinear terms. For the purpose of the benchmark
collection, we have precomputed four systems and converted them to the Matrix
market format which is easier to import in standard computer algebra packages.

All examples are made for a steel beam with the following properties: Property
Value Beam length (l)	0.1 m Material density (rho)	8000 kg/m3
Cross-sectional area (A)    7.854e-7 m2 Moment of inertia (I)	4.909e-14 m4
Polar moment of inertia (J) 9.817e-14 Modulus of elasticity (E)   2e11 Pa
Poisson ratio (nu)  0.29 Contribution of M to damping	1e2 Contribution of K
to damping	1e-2 Support	Simple, both sides

The following examples are available (all files are compressed .zip archives,
Units: SI):

File	Degrees of freedom  Number of nodes Number of equations
File size/Compressed size

LF10.zip    flexural (y and thetaz) 10	18 
LF10000.zip flexural (y and thetaz) 10000   19998  
LFAT5.zip   flexural (y and thetaz), axial, torsional	5   14
LFAT5000.zip	flexural (y and thetaz), axial, torsional  50000 19994  

The zip files contain matrices M, E, K, B and E for the following system of
equations: M x" + E x\' + K x   = B u y   = C x

where B is a n×1 matrix and C is a 1×n matrix with the only nonzero entry at
the y DOF of the middle node.

Details of the implementation are available in a separate report (PDF, 88 kB).
A typical input to this system is a step response; periodic on/off switching is
also possible. The reduced model should thus both represent the step response
as well as the possible influence of higher order harmonics.

[1] William Weaver, Jr., Stephen P. Timoshenko, and Donovan H. Young, Vibration
problems in engineering, 5th ed., Wiley (1990) Last modified: Wed Sep 8
16:53:01 CEST 2004 

================================================================================
==> piston/README.txt <==
================================================================================

--------------------------------------------------------------------------------
Axi symmetric infinite element model for circular piston (piston problem)
--------------------------------------------------------------------------------

Karl Meerbergen

Free Field Technologies, 16, place de l\'Université, 1348 Louvain-la-Neuve,
Belgium

This example is a model of the form

\\begin{displaymath} M \\ddot{x} + E \\dot{x} + K x = f \\end{displaymath}

with $M$, $C$, and $K$ non-symmetric matrices and $M$ singular. This is thus a
differential algebraic equation. It is shown that it has index one [1]. The
input of the system is $f$, the output is the state vector $x$. The motivation
for using model reduction for this type of problems is the reduction of the
computation time of a simulation.

This is an example from an acoustic radiation problem discussed in [3].
Consider a circular piston subtending a polar angle $0 < \\theta < \\theta_p$ on
a submerged massless and rigid sphere of radius $\\delta$. The piston vibrates
harmonically with a uniform radial acceleration. The surrounding acoustic
domain is unbounded and is characterized by its density $\\rho$ and sound speed
$c$.

We denote by $p$ and $a_r$ the prescribed pressure and normal acceleration
respectively. In order to have a steady state solution $\\tilde p(r,\\theta,t)$
verifying

\\begin{displaymath} \\tilde p(r,\\theta,t) = \\mathcal R \\mbox{e} \\left(
p(r,\\theta) e^{i\\omega t} \\right), \\end{displaymath}

the transient boundary condition is chosen as:

\\begin{displaymath} a_r = \\left. \\frac{-1}{\\rho} \\frac{\\partial
p(r,\\theta)}{\\pa... ...e \\theta_p, \\\\ 0, & \\theta > \\theta_p.\\\\
\\end{array}\\right. \\end{displaymath}

The axisymmetric discrete finite-infinite element model relies on a mesh of
linear quadrangle finite elements for the inner domain (region between
spherical surfaces $r=\\delta$ and $r = 1.5 \\delta$). The numbers of divisions
along radial and circumferential directions are $5$ and $80$, respectively. The
outer domain relies on conjugated infinite elements of order $5$. For this
example we used $\\delta=1 \\mathrm{(m)}$, $\\rho = 1.225 \\mathrm{(kg/m^3)}$,
$c=340 \\mathrm{(m/s)}$, $a_0 = 0.001 \\mathrm{(m/s^2)}$ and $\\omega = 1000
\\mathrm{(rad/s)}$.

The matrices $K$, $C$, $M$ and the right-hand side $f$ are computed by
MSC.Actran [2]. The dimension of the second-order system is $N = 2025$.



================================================================================
==> rail_79841/README.txt <==
================================================================================

--------------------------------------------------------------------------------
A Semi-discretized Heat Transfer Problem for Optimal Cooling of Steel Profiles
(rail* problems)
--------------------------------------------------------------------------------

Summary

Several generalized state-space models arising from a semi-discretization of a
controlled heat transfer process for optimal cooling of steel profiles are
presented. The models oder differs due to different refinements applied to the
computational mesh.  The model equations

We consider the problem of optimal cooling of steel profiles. This problem
arises in a rolling mill when different steps in the production process require
different temperatures of the raw material. To achieve a high production rate,
economical interests suggest to reduce the temperature as fast as possible to
the required level before entering the next production phase. At the same time,
the cooling process, which is realized by spraying cooling fluids on the
surface, has to be controlled so that material properties, such as durability
or porosity, achieve given quality standards. Large gradients in the
temperature distributions of the steel profile may lead to unwanted
deformations, brittleness, loss of rigidity, and other undesirable material
properties. It is therefore the engineers goal to have a preferably even
temperature distribution.

The scientific challenge here is to give the engineers a tool to pre-calculate
different control laws yielding different temperature distributions in order to
decide which cooling strategy to choose.

We can only briefly introduce the model here for details we refer to [Saa03] or
[BS04]. We assume an infinitely long steel profile so that we may restrict
ourselves to a 2D model. Exploiting the symmetry of the workpiece, the
computational domain Ω⊂R2 is chosen as the half of a cross section of the rail
profile. The heat distribution is modeled by the instationary linear heat
equation on Ω

(1)

cρ ∂t x(t,ξ) - λΔx(t,ξ) = 0 in R>0 × Ω,
x(0,ξ) = x0(ξ) in Ω,
λ ∂νx(t,ξ) = gi on R>0× Γi, ∂Ω = ∪i Γi	

where x is the temperature distribution (∈H1([0,∞],X) with X:=H1(Ω) the state
space), c the specific heat capacity, λ the heat conductivity and ρ the density
of the rail profile. We split the boundary into several parts Γi on which we
have different boundary functions gi, allowing us to vary controls on different
parts of the surface. By ν we denote the outer normal on the boundary.

Figure 1: Initial mesh, partitioning of the boundary, and a picture of a
cooling plant. Grobgitter  Kühlbett
see http://www.imtek.de/simulation/benchmark/

We want to establish the control by a feedback law, i.e. we define the boundary
functions gi to be functions of the state x and the control ui, where
(ui)i=:u=Fy for a linear operator F which is chosen such that the cost
functional

    J(x_0,u):=∫0∞ (Qy,y)Y +(Ru,u)U dt     with  y=Cx    (2)

is minimized. Here, Q and R are linear selfadjoint operators on the output
space Y and the control space U with Q≥0, R>0 and C∈ L(X,Y). The variational
formulation of (1) with gi(t,ξ) = qi(ui- x(ξ,t)) leads to:

(∂tx,v)=-∫Ω α∇x ∇v dξ + ∑k { qk uk ∫Γk (cρ)-1 v dσ -∫Γk qk(cρ)-1 xv dσ}	    (3)

for all v∈C0∞(Ω). Here the uk are the exterior (cooling fluid) temperatures
used as the controls, qk are constant heat transfer coefficients (i.e.
parameters for the spraying intensity of the cooling nozzles)[2] and α:=λ/(cρ).
Note that q0=0 gives the Neumann isolation boundary condition on the artificial
inner boundary on the symmetry axis. In view of (3) we can apply a standrrd
Galerkin approach for discretizing the heat transfer model in space, resulting
a first-order ordinary differential equation. This idescribed in the following
section.  The discretized mathematical model

For the discretization we use the ALBERTA-1.2 fem-toolbox (see [SS00] for
details). We applied linear Lagrange elements and used a projection method for
the curved boundaries. The initial mesh (see Fig. 1. on the left) was produced
by MATLABs pdetool which implements a Delaunay triangulation algorithm. The
finer discretizations were produce by global mesh refinement using a bisection
refinement method. The discrete LQR problem is then: minimize (2) with respect
to

    (4)

    E d/dt x(t) = A x(t) + B u(t),  with t>0,
    x(0) = x0,
    y(t) = C x(t).	

This benchmark includes four different mesh resolutions. The best
fem-approximation error that one can expect (under suitable smoothness
assumptions on the solution) is of order O(h2) where h is the maximum edge size
in the corresponding mesh. This order should be matched in a model reduction
approach. The following table lists some relevant quantities for the provided
models.

matrix dimension    num. nonzero in A	num. nonzero in E   max. mesh width
1357		    8985		8997		    5.5280e-2
5177		    35185		35241		    2.7640e-2
20209		    139233		139473		    1.3820e-2
79841		    553921		554913		    6.9100e-3

Note that A is negative definite while E is positive definite, so that the
resulting linear time-invariant system is stable.

The data sets are named rail_(problem dimension)_C60.(matrix name). Here C60 is
a specific output matrix which is defined to minimize the temperature in the
node numbered 60 (refer to the numbers given in Fig 1.) and keep temperature
gradients small. The latter task is taken into account by the inclusion of
temperature differences between specific points in the interior and reference
points on the boundary, e.g. temperature difference between nodes 83 and 34.
Again refer to Figure 1. for the nodes used. the definitions of other output
matrices that we tested can be found in [Saa03]. The problem resides at
temperatures of approximately 1000 degrees centigrade down to about 500-700
degrees depending on calculation time. The state values are scaled to 1000
being equivalent to 1.000. This results in a scaling of the time line with
factor 100, meaning that calculated times have to be divided by 100 to get the
real time in seconds.  Acknowledgments

This benchmark example serves as a model problem for the project A15: Efficient
numerical solution of optimal control problems for instationary
convection-diffusion-reaction-equations of the Sonderforschungsbereich SFB393
Parallel Numerical Simulation for Physics and Continuum Mechanics, supported by
the Deutsche Forschungsgemeinschaft. It was motivated by the model described in
TU01. A very similar problem is used as model problem in the LYAPACK software
package Pen00b.  Bibliography

BS04 P. Benner and J. Saak.  Efficient numerical solution of the LQR-problem
for the heat equation.  Proc. Appl. Math. Mech., 2004.  submitted.

Pen00 T. Penzl.  LYAPACK Users Guide.  Technical Report SFB393/00-33,
Sonderforschungsbereich 393 Numerische Simulation auf massiv parallelen
Rechnern, TU Chemnitz, 09107 Chemnitz, FRG, 2000.  Available from
http://www.tu-chemnitz.de/sfb393/sfb00pr.html .

Saa03 J. Saak.  Effiziente numerische Lösung eines Optimalsteuerungsproblems
für die Abkühlung von Stahlprofilen.  Diplomarbeit, Fachbereich 3/Mathematik
und Informatik, Universität Bremen, D-28334 Bremen, September 2003.  Available
from http://www-user.tu-chemnitz.de/∼saak/Data/index.html .

SS00 A. Schmidt and K. Siebert.  ALBERT: An adaptive hierarchical finite
element toolbox.  Preprint 06/2000 / Institut für Angewandte Mathematik,
Albert-Ludwigs-Universität Freiburg, edition: albert-1.0 edition, 2000.
Available from http://www.mathematik.uni-freiburg.de/IAM/ALBERT/doc.html.

TU01 F. Tröltzsch and A. Unger.  Fast solution of optimal control problems in
the selective cooling of steel.  Z. Angew. Math. Mech., 81:447-456, 2001. 


================================================================================
==> spiral/README.txt <==
================================================================================

--------------------------------------------------------------------------------
Spiral Inductor PEEC Model (spiral models)
--------------------------------------------------------------------------------

Figure: Spiral inductor with part of overhanging copper plane; see
http://www.imtek.de/simulation/benchmark/

Excerpt from report "PEEC model of a spiral inductor generated by
Fasthenry" at http://www.imtek.de/simulation/benchmark/ :

This inductor which first appeared in [KWW00] is intended as an integrated RF
passive inductor. To make it also a proximity sensor, a 0.1 um plane of copper
is added 45 um above the spiral. The spiral is also copper with turns 40 um
wide, 15um thick, with a separation of 40um. The spiral is suspended 55um over
the substrate by posts at the corners and centers of the turns in order to
reduce the capacitance to the substrate. (Note that neither the substrate nor
the capacitance is modeled in this example.) The overall extent of the
suspended turns is 1.58mm x 1.58mm.

...

The frequency dependence of the resistance shows two effects, first a rise due
to currents induced in the copper plane and then a much sharper rise due to the
skin effect. Capturing the rise due to the skin effect while also maintaining
the low frequency response is a challenge for many model reduction algorithms.


Authors:

Jing-Rebecca Li, INRIA-Rocquencourt, Projet Ondes, Domaine de Voluceau -
Rocquencourt - B.P. 105, 78153 Le Chesnay Cedex, France jingrebecca.li at
inria.fr

Mattan Kamon, Coventor, Inc. 625 Mt. Auburn St, Cambridge, Ma 02138, USA matt
at coventor.com.  

"E" dx/dt = "A"x+"B"u, y = "B"^Tx.

The complex impedence is

Z(w) = Resis(w)+i*w*Induc(w) = (G(i*w))^(-1)=(B^T(-A+i*w*E)^(-1)B)^(-1)

Download short matlab files from www.imtek.de to 1.  plot Resis(w) and Induc(w)
2. perform a PRIMA reduction of order 50 3. produce symmetrized standard
state-space system: dx/dt = "A_symm"x+"B_symm"u, y = "B_symm"^Tx, where A_symm
is symmetric.
    
Last modified: Wed Jul 6 17:38:31 CEST 2005 

[KWW00] Mattan Kamon, Frank Wang, and Jacob White. Generating nearly optimally
compact models from krylov-subspace based reduced order models. IEEE
Transactions On Circuits and Systems-II:Analog and Digital Signal Processing,
47(4):239-248, April 2000.

================================================================================
==> t2dah/README.txt <==
================================================================================

Oberwolfach model reduction benchmark collection
------------------------------------------------

Contributions by Evgenii Rudnyi and Dag Billger.

See also:

http://www.imtek.de/simulation/benchmark
http://www.imtek.de/simulation/benchmark/wb/38847
http://www.imtek.de/simulation/benchmark/wb/35889

--------------------------------------------------------------------------------
Micropyros Thruster
--------------------------------------------------------------------------------

E. B. Rudnyi, rudnyi AT imtek dot uni-freiburg
dot de

The goal of the European project Micropyros
(http://www.laas.fr/Micropyros/)
was to develop a microthruster array
shown in fig. 1. It is based on the co-integration of solid fuel with a
silicon micromachined system [1]. In addition to space applications,
the device can be also used for gas generation or as a highly-energetic
actuator. When the production of a bit-impulse is required, the fuel is
ignited by heating a resistor at the top of a particular microthruster.
Design requirements and modeling alternatives are described in Ref [2].
The discussion of electro-thermal modeling related to the benchmark can
be found in Ref [3].

Figure 1: see http://www.imtek.de/simulation/benchmark/wb/38847/fig1.jpg

Fig. 1. Firing a micro thruster in an 4x4 array. Illustration
courtesy of C. Rossi, LAAS-CNRS.

The benchmark contains a simplified thermal model of a single
microthruster to help with a design problem to reach the ignition
temperature within the fuel and at the same time not to reach the
critical temperature at neighboring microthrusters, that is, at the
border of the computational domain. At the same time, the resistor
temperature during the heating pulse should not become too high as this
leads to the destruction of the membrane.
The benchmark suite has been made with the Micropyros software
developed by IMTEK
(http://www.imtek.uni-freiburg.de/simulation/pyros/).
There are four
different test cases described in Table 1 with the goal to cover
different cases of different computational complexity. Note that the
results
from different models
cannot be compared directly with each other as the output nodes are
located in slightly different geometrical positions and there is some
difference in modeling for the 3D and 2D-axisymmetric cases.

Table 1. Microthruster benchmarks.

      Code  comment                             dimension nnz(A) nnz(E) 
      T2DAL 2D-axisymmetric, linear elements     4257   20861    4257 
      T2DAH 2D-axisymmetric, quadratic elements 11445   93781   93781 
      T3DL  3D, linear elements                 20360  265113   20360 
      T3DH  3D, quadratic elements              79171 2215638 2215638 

The device solid model has been made and meshed in ANSYS. The material
properties assumed to be constant. The system matrices have been
converted to the (http://math.nist.gov/MatrixMarket/) Matrix
Market format by means of mor4ansys.

Temperature is assumed to be in Celsius with the initial state of 0 C.
The output nodes are described in Table 2. Nodes 2 to 5 show the fuel
temperature distribution and nodes 6 and 7 characterize temperature in
the wafer, nodes 5 and 7 being the most faraway from the resistor.

Table 2. Outputs for the microthruster models.

      # Code    Comment 
      1 aHeater within the heater 
      2 FuelTop fuel just below the heater 
      3 FT-100  fuel 0.1 mm below the heater 
      4 FT-200  fuel 0.2 mm below the heater 
      5 FuelBot fuel bottom 
      6 WafTop1 wafer top (touching fuel) 
      7 WafTop2 wafer top (end of computational domain) 

The benchmark files contain a constant load vector, corresponding to
the constant power input of 150 mW. In order to insert a weak
nonlinearity related to the dependence of the resistivity on
temperature, one has to multiply the load vector by a function

1 + 0.0009 T + 3E-07 T^2

assuming the constant current. It is necessary to replace the
temperature in the equation above by the temperature at the node 1.

The linear ordinary differential equations of the first order are
written as

E dT/dt = A T + B
y = C T

where E and A are the system
matrices (both are symmetric), B is the load vector, C is the output
matrix, and T is the vector of unknown temperatures.

(Note: the original matrices, in Matrix Market format, are at
http://www.imtek.de/simulation/benchmark).

The ANSYS results for the original models as well as the reduced models
obtained by mor4ansys can be found at the 
(http:///www.imtek/de/simulation/pyros/) Micropyros software page:
choose EleThermo for T2DAL and T2DAH or EleThermo3D for T3DL and T3DH.

The model reduction of the microthruster model by means of 
(http://www.imtek.ed/simulation/mor4ansys/) mor4ansys is described in Ref [4].

[1] C. Rossi, B. Larangot, T. Camps, M. Dumonteil, D. Lagrange, P.  Q.
Pham, D. Briand, N. F. de Rooij, M. Puig-Vidal, P. Miribel, E. Montane, E.
Lopez, J. Samitier, E. B. Rudnyi, T. Bechtold, J. G. Korvink, Review of solid
propellant microthrusters on silicon, Journal Propulsion and Power
(2004), to be published.

[2] E. B. Rudnyi, T. Bechtold, J. G. Korvink, C. Rossi, Solid
Propellant Microthruster: Theory of Operation and Modelling Strategy,
Nanotech 2002 - At the Edge of Revolution, September 9-12, 2002,
Houston, USA, AIAA Paper 2002-5755.

[3] G. Korvink, E. B. Rudnyi, Keynote: Computer-aided engineering of
electro-thermal MST devices: moving from device to system simulation,
EUROSIME\'03, 4th international conference on thermal and mechanical
simulation and experiments in micro-electronics and micro-systems
Aix-en-Provence, France, March 30 - April 2, 2003.

[4] T. Bechtold, E. B. Rudnyi, J. G. Korvink and C. Rossi, Efficient
Modelling and Simulation of 3D Electro-Thermal Model for a
Pyrotechnical Microthruster. International Workshop on Micro and
Nanotechnology for Power Generation and Energy Conversion Applications
PowerMEMS 2003, Makuhari,Japan, 4-5 December 2003.

Preprints are at http://www.imtek.uni-freiburg.de/simulation/mor4ansys/


==> t2dah/T2DAH.C.names <==
aHeater
FuelTop
FT-100
FT-200
FuelBot
WafTop1
WafTop2

==> t2dal/T2DAL.C.names <==
aHeater
FuelTop
FT-100
FT-200
FuelBot
WafTop1
WafTop2

==> t3dh/T3DH.C.names <==
aHeater
FuelTop
FT-100
FT-200
FuelBot
WafTop1
WafTop2

==> t3dl/T3DL.C.names <==
aHeater
FuelTop
FT-100
FT-200
FuelBot
WafTop1
WafTop2

================================================================================
==> t2dal_bci/README.txt <==
================================================================================

--------------------------------------------------------------------------------
Boundary Condition Independent Thermal Model (t2dal_bci_* problems)
--------------------------------------------------------------------------------

E. B. Rudnyi, rudnyi@imtek.uni-freiburg.de J. G. Korvink,
korvink@imtek.uni-freiburg.de

One of important requirements for a compact thermal model is that it should be
boundary condition independent. This means that a chip producer does not know
conditions under which the chip will be used and hence the chip compact thermal
model must allow an engineer to research on how the change in the environment
influences the chip temperature. The chip benchmarks representing boundary
condition independent requirements are described in [1].

Mathematically, the problem is that the thermal problem is modeled by the heat
transfer partial differential equation when the heat exchange through device
interfaces is modeled by convection boundary conditions. The latter contains
the film coefficient, h_i, to describe the heat exchange for the i-th
interface. After the discretization of both equations one obtains a system of
ordinary differential equations as follows

E dT/dt = (A + Sum_i h_i A_i)T + B

where E and A are the device system matrices, A_i is the diagonal matrix due to
the discretization of convection boudnary condition for the i-th interface, T
is the vector with unknown temperatures.

In terms of the equation above, the engineering requirements read as follows. A
chip producer specifies the system matrices but the film coefficient, h_i, is
controlled later on by another engineer. As such, any reduced model to be
useful should preserve h_i in the symbolic form. This problem can be
mathematically expressed as parametric model reduction [2,3,4].

Unfortunately, the benchmark from [1] is not available in the computer readable
format. For research purposes, we have modified a microthruster benchmark [5]
(see Fig 1). In the context of the present work, the model is as a generic
example of a device with a single heat source when the generated heat
dissipates through the device to the surroundings. The exchange between
surrounding and the device is modeled by convection boundary conditions with
different film coefficients at the top, h_top, bottom, h_bottom, and the side,
h_side. From this vewpoint, it is quite similar to a chip model used as a
benchmark in [1]. The goal of parametric model reduction in this case is to
preserve h_top, h_bottom, and h_side in the reduced model in the symbolic form.

Fig. 1. see http://www.imtek.de/simulation/benchmark

Figure 1. A 2D-axisymmetrical model of the micro-thruster unit (not scaled).
The axis of the symmetry on the left side. A heater is shown by a red spot.

We have used a 2D-axisymmetric microthruster model (T2DAL in [5]). The model
has been made in ANSYS and system matrices have been extracted by means of
mor4ansys [6]. The benchmark contains a constant load vector. The input
function equal to one corresponds to the constant input power of 15 mW.

The linear ordinary differential equations of the first order are written as:

E T=(A - h_top A_top - h_bottom A_bottom - h_side A_side) T + B u y=Cx

where E and A are the symmetric sparse system matrices (heat capacity and heat
conductivity matrix), B is the load vector, C is the output matrix, A_top,
A_bottom, and A_side are the diagonal matrices from the discretization of the
convection boundary conditions and T is the vector of unknown temperatures.

The numerical values of film coefficients, h_top, h_bottom, and h_side can be
from 1 to 1e9. Typical important sets film coefficients can be found in [1].
The allowable approximation error is 5 % [1].

The benchmark has been used in [7,8] where the problem is also described in
more detail.

Download matrices in the Matrix Market format: T2DAL_BCI.tar.gz, 223938 bytes.
The matrix name is used as an extension of the matrix file. File
T2DAL_BCI.C.names contains a list of ouput names written consecutively.
Bibliography

1. C. J. M. Lasance, Two benchmarks to facilitate the study of compact thermal
modeling phenomena, IEEE Transactions on Components and Packaging Technologies,
24, 559-565 (2001).

2. D. S. Weile, E. Michielssen, E. Grimme, K. Gallivan, A method for generating
rational interpolant reduced order models of two-parameter linear systems,
Applied Mathematics Letters, 12, 93-102 (1999).

3. P. K. Gunupudi, R. Khazaka, M. S. Nakhla, T. Smy, and D. Celo, Passive
parameterized time-domain macromodels for high-speed transmission-line
networks, IEEE Transactions on Microwave Theory and Techniques, 51, 2347-2354
(2003).

4. L. Daniel, O. C. Siong, L. S. Chay, K. H. Lee, and J. White, A
Multiparameter Moment-Matching Model-Reduction Approach for Generating
Geometrically Parameterized Interconnect Performance Models, IIEEE Transactions
on Computer-Aided Design of Integrated Circuits and Systems, 23, 678-693
(2004).

5. E. B. Rudnyi, Micropyros Thruster,
http://www.imtek.uni-freiburg.de/simulation/benchmark/.

6. E. B. Rudnyi and J. G. Korvink, Model Order Reduction of MEMS for Efficient
Computer Aided Design and System Simulation, MTNS2004, Sixteenth International
Symposium on Mathematical Theory of Networks and Systems, Katholieke
Universiteit Leuven, Belgium, July 5-9, 2004.
http://www.imtek.uni-freiburg.de/simulation/mor4ansys/

7. L. Feng, E. B. Rudnyi, J. G. Korvink, Parametric Model Reduction to Generate
Boundary Condition Independent Compact Thermal Model, THERMINIC 2004, 10th
International Workshop on Thermal Investigations of ICs and Systems, 29
September - 1 October 2004, Sophia Antipolis, Cªte d\'Azur, France.  Preprint is
at http://www.imtek.uni-freiburg.de/simulation/mor4ansys/

8. L. Feng, E. B. Rudnyi, J. G. Korvink, Preserving the film coefficient as a
parameter in the compact thermal model for fast electro-thermal simulation,
2004, to be submitted.

==> t2dal_bci/T2DAL_BCI.C.names <==
aHeater
FuelTop
FT-100
FT-200
FuelBot
WafTop1
WafTop2

================================================================================
==> windscreen/README.txt <==
================================================================================

--------------------------------------------------------------------------------
Structural model of a car windscreen (windscreen problem)
--------------------------------------------------------------------------------

Karl Meerbergen Free Field Technologies, Louvain-la-Neuve, Belgium.
Karl.Meerbergen@fft.be

This is an example for a model in the frequency domain of the form

\\begin{eqnarray*} K_d x - \\omega^2 M x & = & f \\\\ y & = & f^* x \\end{eqnarray*}

where $f$ represents a unit point load in one unknown of the state vector. $M$
is a symmetric positive-definite matrix and $K_d = (1+i\\gamma) K$ where $K$ is
symmetric positive semi-definite.

The test problem is a structural model of a car windscreen. This is a 3D
problem discretized with 7564 nodes and 5400 linear hexahedral elements (3
layers of $60 \\times 30$ elements). The mesh is shown in Figure 1. The material
is glass with the following properties: the Young modulus is $7\\,10^{10}
\\mathrm{N}/\\mathrm{m}^2$, the density is $2490 \\mathrm{kg}/\\mathrm{m}^3$, and
the Poisson ratio is $0.23$. The natural damping is $10\\%$, i.e. $\\gamma=0.1$.
The structural boundaries are free (free-free boundary conditions). The
windscreen is subjected to a point force applied on a corner. The goal of the
model reduction is the fast evaluation of y. Modelreduction is used as a fast
linear solver for a sequence of parametrized linear systems.

The discretized problem has dimension $n=22,692$. The goal is to estimate
$x(\\omega)$ for $\\omega\\in[0.5,200]$. In order to generate the plots the
frequency range was discretized as $\\{\\omega_1,\\ldots,\\omega_m\\} =
\\{0.5j,j=1,\\ldots,m\\}$ with $m=400$.

Figure 1: Mesh of the car windscreen and frequency response function
see http://www.imtek.de/simulation/benchmark/
    
The archive contains files windscreen.K, windscreen.M and windscreen.B
representing Kd, M and f accordingly.

Karl Meerbergen 2004-11-17

',

}

