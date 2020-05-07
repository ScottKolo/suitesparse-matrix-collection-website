{
    name: 'FIDAP',
    num_matrices: '35',
    notes: 'Fluid dynamics, finite element matrices from Yousef Saad (SPARSKIT2 collection).
Names converted to Univ. of Florida naming convention (.mat changed to
.rua).

c------------------------------------------------------------------------c
c                           FIDAP MATRICES:                              c
c------------------------------------------------------------------------c
c  These  matrices are extracted from the examples provided by Fidap     c
c  The matrices are stored in Harwell-Boeing format                      c
c  For the physic of the problems, see detailed description in Fidap     c
c                                                                        c
c  Matrices extracted by:     Abdelkader Baggag  (baggag at cs.umn.edu)
c  with the help of Barry Rackner (bnr at msc.edu)
c									 c
c  For help or more informations, contact:				 c
c           Prof. Yousef Saad  (saad at cs.umn.edu)
c                                                                        c
c------------------------------------------------------------------------c
c            GENERAL INFORMATION ON THE PROBLEMS                         c
c------------------------------------------------------------------------c
c The elements used are Q2 for the velocity and P1 for the pressure      c
c for 2D problems and the so-called Brick elements (8 nodes) for 3D      c
c problems  (unless specified)					    	 c
c									 c
c We are solving the fully coupled Navier-Stokes Equations (unless       c
c specified), including the Temperature Equation for the Heat Transfer   c
c Problems and the Chemical Convection-Diffusion Equations for different c
c species                                                                c
c The Mesh is regular structured but not uniform                         c
c									 c
c                 | Kmax  				                 c
c		  |							 c
c                 |							 c
c  	 	  | 							 c
c		  |__________________ Jmax  		                 c
c                / 							 c
c               /     							 c
c	       /							 c
c             /								 c
c            / Imax							 c	
c------------------------------------------------------------------------c
c     This version is dated: June 09, 1994                               c
c------------------------------------------------------------------------c
c  ex1.mat  : 2D Transient Poiseuille Flow in a Pipe
c             Reynolds = 1.0
c             Imax = 9, Jmax = 5
c
c  ex2.mat  : 3D Steady Couette Flow
c             Reynolds = 1.0
c             Imax = 9, Jmax = 3
c
c  ex3.mat  : 2D Flow Past a Cylinder in Freestream
c             Reynolds = 40.0
c             Imax = 19, Jmax = 9
c
c  ex4.mat  : 2D Hamel Flow
c             Reynolds = 0.0
c             Imax = 9, Jmax = 5
c
c  ex5.mat  : Non-newtonian Flow in a Channel (Power Law Poiseuille Flow)
c             Reynolds = Power Law
c             
c  ex6.mat  : 2D Die Swell Problem
c             Capillary number = 1.0
c             Imax = 43, Jmax = 15
c
c  ex7.mat  : 2D natural Convection in a Square Enclosure
c             Rayleigh = 1000
c             Imax = 9, Jmax = 9
c
c  ex8.mat  : Developing Flow, Vertical Channel, Angle = 0.0
c             Rayleigh = 1000
c             Imax = 5, Jmax = 13
c
c  ex9.mat  : 2D Jet Impingement Cooling
c             Reynolds = 0.0 ; (Jet) = 300
c             Imax = 21, Jmax = 89
c
c  ex10.mat : 2D Flow over Multisteps in a Channel
c             Reynolds = 100 ; Prandtl = 0.6896
c             Imax = 13, Jmax = 5
c
c  ex11.mat : 3D Steady Flow; Cylinder and Flat Plate Heat Exchanger
c             Imax = 21; Jmax = 7; Kmax = 5 
c             Density = 1.0; Viscosity = 0.025; SpecifiHeat = 1.0; 
c             Conductivity = 3.760e-3
c
c  ex12.mat : 2D Flow Stokes Flow in Lid-Driven Wedge (28.5 Degree Angle)
c             Imax = 7; Jmax = 5
c             Density = 1.0; Viscosity = 5.0 
c
c  ex13.mat : Axisymmetric Flow through a Poppet Valve
c             Imax = 12; Jmax = 13
c             Steady, Newtonian, Axi-Symmetric, Isothermal, Nonlinear
c             Density = 3.122e-2; Viscosity = 6.77e-4
c
c  ex14.mat : 2D Isothermal Seepage Flow
c             Imax = 23; Jmax = 23
c             Density = 1000.0; Permeability = 100; Porosity = 0.5
c
c  ex15.mat : 2D Spin up of a Liquid in an Annulus                           
c             Imax = 7; Jmax = 7
c             Transient, Nonlinear, Newtonian, Cylindrical
c             Density = 1.0; Viscosity = 0.02
c
c  ex16.mat : 3D Flow Past a Heated Obstacle
c             Imax = 13; Jmax = 13; Kmax = 9
c             Nonlinear
c             Density = 1.0; Viscosity = 0.1; Conductivity = 0.1
c
c  ex17.mat : 3D Flow in a Rectangular Duct Around a 120 Degree Bend
c             Imax = 5; Jmax = 3; Kmax = 3
c             Nonlinear, Turbulent
c             Density = 1.74e-3; Viscosity = 1.84e-4  1.0 (Mixing)
c
c  ex18.mat : 2D Turbulent Flow Over a backward-Facing Step
c	      Imax = 5; Jmax = 9
c             Nonlinear, Turbulent (k-epsilon)
c             Density = 1.0; Viscosity = 2.2222e-5
c             
c  ex19.mat : 2D Developing Pipe Flow, Turbulent k-epsilon
c             Imax = 5; Jmax = 5
c             Nonlinear, Axi-Symmetric, Turbulent
c             Density = 1.0; Viscosity = 1.0e-5
c
c  ex20.mat : 2D Attenuation of a Surface Disturbance
c             Imax = 7; Jmax = 5
c             Transient, Nonlinear, free
c             Density = 1.0; Viscosity = 0.1
c
c  ex21.mat : 2D Growth of a Drop from a Nozzle
c             Imax = 5; Jmax = 3
c             Transient, Nonlinear, free, axi-symmetric
c             Density = 1.0; Viscosity = 1.0
c
c  ex22.mat : 2D Slot Coater
c             Imax = 6; Jmax = 3
c             Steady, Nonlinear, free
c             Density = 1.0; Viscosity = 0.1; SurfaceTension = 1.0
c
c  ex23.mat : 2D Fountain Flow in Injection Molding
c             Imax = 4; Jmax = 3
c             Nonlinear, Free
c             Density = 1.0; Viscosity = 2706.0
c
c  ex24.mat : 2D Unsymmetric Forward Roll Coating
c             Imax = 5; Jmax = 3
c             Nonlinear, Free
c             Viscosity = 1.0; Density = 1.0; SurfaceTension = 10
c
c  ex25.mat : 2D Drop Growth Resulting from a Moving Piston
c             Imax = 3; Jmax = 3
c             Transient, Nonlinear, Free, AxiSymmetric
c             Density = 1.0; Viscosity = 1.0; SurfaceTension = 10.0
c
c  ex26.mat : 2D surface Tension Gradient Driven Thermal Convection
c             Imax = 3; Jmax = 3
c             Steady, Nonlinear, Free, Weakly
c             Density = 1.0; Viscosity = 1.0; Surface Tension = variable;
c             Conductivity = 0.565
c
c  ex27.mat : 2D Crystal Growth Simulation
c             Imax = 3; Jmax = 3
c             Axisymmetric, Transient, Nonlinear, Free, Strongly     
c             Density = 1.0; Viscosity = 1.0; Conductivity = 0.051282
c
c  ex28.mat : 2D Two Merging Liquids with one External and an interior Interface
c             Imax = 7; Jmax = 6
c             Nonlinear, Steady, Free
c             Viscosity = 0.50; density = 
c
c  ex29.mat : 2D Turbulent flow in AxiSymmetric U-Bend: k-epsilon
c             Imax = 5; Jmax = 3
c             Nonlinear, Turbulent, Axisymmetric
c             Density = 1.0; Viscosity = 1.0e-5
c
c  ex30.mat : 3D Crystal Growth: Bridgman Technique
c             Imax = 11; Jmax = 7; Kmax = 3; MaxPoints = 999
c             Nonlinear, Strongly
c             Density = 1.0; Conductivity = 0.6; SpecifiHeat = 1.0 (Solid region)
c             density = 306; Viscosity = 4; Enthalpy = 4; Conductivity = 4 (Fluid Region)
c
c  ex31.mat : 2D Dilute Species Deposition on a Titled heated Plate
c             Imax = 7; Jmax = 3
c             Nonlinear, Weakly
c             Density = 1.0; Viscosity = 0.16; Conductivity = variable; Diffusivity = 0.15
c
c  ex32.mat : 2D radiation Heat Transfer in an Open Channel
c             Imax = 5; Jmax = 7
c             Nonlinear, weakly
c             Density = 1.3698; Conductivity = variable; Emissivity = variable
c
c  ex33.mat : 2D Radiation Heat Transfer in a Square Cavity
c             Imax = 7; Jmax = 7
c             Ra = 1.6e7; Rad = 5.88; Density = 1.3698; SpecifiHeat = 0.7300
c             Emissivity = 0.45--0.88
c             Nonlinear, Strongly 
c
c  ex34.mat : 2D Conduction Melting
c             Imax = 3; Jmax = 3
c             Transient, Nonlinear, Strongly
c             Density = 1.0; Conductivity = 0.1; Diffusivity = 1.0 (NonIsotropic)
c             Viscosity and Enthalpy definec on curves
c
c  ex35.mat : 2D Turbulent Flow in a Heated Channel
c             Imax = 41; Jmax = 7
c             Reynolds = 25960; k-epsilon
c             Nonlinear, Turbulent
c
c  ex36.mat : 2D Chemical Vapor Deposition in a Horizontal Reactor
c             Imax = 7; Jmax = 3
c             Nonlinear, Strongly 
c             Density = variable; Viscosity = variable defined on a curve
c             All the other properties are variable and defined on curves
c
c  ex37.mat : 3D Flow of Plastic in a profile extrusion Die
c             Imax = 7; Jmax = 9; Kmax = 5
c             Nonlinear, NonNewtonian, Weakly
c             Viscosity = variable; Conductivity = 1.0 
c
c  ex38.mat : Multiple Species Reaction A + 2B -----> 2C + D
c             Imax = 5; Jmax = 5
c             axisymmetric, nonlinear, weakly
c             all the properties are variable
c
c  ex39.mat : 3D Mixing Tank 2 Blades
c             Imax = 9; Jmax = 5; Kmax =7
c             Nonlinear
c             Density = 1.0; Viscosity = 1.0
c
c  ex40.mat : 3D Die Swell Problem on a Square Die
c             Imax = 5; Jmax = 11; Kmax = 5
c             Re = 1.0; Ca = inf
c             Viscosity = 1.0; Density = 0.5
c
c-----------------------------------------------------------------------
c-----------------------------------------------------------------------        
',

}

