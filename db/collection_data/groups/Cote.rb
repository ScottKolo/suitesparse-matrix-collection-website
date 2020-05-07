{
    name: 'Cote',
    num_matrices: '2',
    notes: 'Vibroacoustic matrices from Andre Cote, Univ. Sherbrooke, Quebec.

  Andre Cote
  GAUS, genie mecanique
  Universite de Sherbrooke     |  E-mail :
  Andre.Cote :at the domain: gme.usherb.ca
  2500, boul. Universite       |  Tel    : (819) 821-8000 ext. 3166
  Sherbrooke ( Quebec )        |  Fax    : (819) 821-7163
  J1K 2R1                      |  Web    : http://www-gaus.gme.usherb.ca/


Andre Cote writes:

Depending on the type of problems we solve ( structure only, fluid only,
fluid-structure, etc.), and the type of solutions we are interested in
(eigenvalue or forced problems), we use different calculations schemes.
But, basically, the main bottleneck for every path comes down to two
situations:

1. Solving Ax = b for A symmetric and real (double precision)

	file name:	vibrobox.rsa

	How large                  ?  12328 DOFS       
	What is the structure like ?  symmetric with large bandwidth
	What structural problem    ?  flexible box (structure only)


2. Solving Ax = b for A symmetric and complex (double precision)

	file name:	mplate.csa

	How large                  ?  5962 DOFS        
	What is the structure like ?  symmetric 
	What structural problem    ?  multi-layer plate (that is
	a plate-air-poroelastic-air-plate system)

Many solves are required (a few to 5000).

',

}

