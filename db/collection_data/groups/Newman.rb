{
    name: 'Norris',
    num_matrices: '12',
    notes: 'Finite element modelling of human body parts. Stuart Norris, Univ. Aukland.

email: s.norris :at the domain: auckland.ac.nz
Bioengineering Institute, University of Auckland
http://www.esc.auckland.ac.nz/People/Staff/Norris   wk: +(64 9) 373 7599 x3055

Finite element matrices from bioengineering problems.


Matrices:
fv1	FV_100x100_works    finite element, Laplace eqn. on a 2D mesh
fv2	FV_101x101_fails    finite element, Laplace eqn. on a 2D mesh, causes
			    UMFPACK V4.0 with default pivot tolerance to fail.
			    Requires a larger tolerance.
fv3	FV_101x101_works    finite element, Laplace eqn. on a 2D mesh

lung1	Lung_1		Coupled temperature and water vapour transport in a lung
lung2	Lung_2		Ditto, with finer mesh resolution

heart1	Heart_1		Quasi-static finite-element model of a heart
heart2	Heart_2		Quasi-static finite-element model of a heart
heart3	Heart_3		Quasi-static finite-element model of a heart

stomach	Stomach3D	Electro-physiological model of a Duodenum

torso1	Torso_FDandBE	Coupled Finite difference/Boundary element
			electro-physiological model of a torso (2D)

torso2	Torso_FDin2D	Finite difference electro-physiological model of
			a torso (2D)
torso3	Torso_FDin3D	Finite difference electro-physiological model of
			a torso (3D)

',

}

