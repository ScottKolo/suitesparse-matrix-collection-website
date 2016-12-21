{
    name: 'VDOL',
    num_matrices: '91',
    notes: 'Optimal control problems, Vehicle Dynamics & Optimization Lab, UF
Anil Rao and Begum Senses, University of Florida
http://vdol.mae.ufl.edu

Each optimal control problem is described below.  Each of these
problems gives rise to a sequence of matrices of different sizes
when they are being solved inside GPOPS, an optimal control
solver created by Anil Rao, Begum Senses, and others at in VDOL
lab at the University of Florida.  The matrices are all
symmetric indefinite.

Rao, Senses, and Davis have created a graph coarsening strategy
that matches pairs of nodes.  The mapping is given for each matrix,
where map(i)=k means that node i in the original graph is mapped to
node k in the smaller graph.  map(i)=map(j)=k means that both nodes
i and j are mapped to the same node k, and thus nodes i and j have
been merged.

Each matrix consists of a set of nodes (rows/columns) and the
names of these rows/cols are given for each matrix.

Anil Rao, Begum Sense, and Tim Davis, 2015.

----------------------------------------------------------------------
VDOL/dynamicSoaring
----------------------------------------------------------------------

Dynamic soaring optimal control problem is taken from
Ref.~\cite{zhao2004optimal} where the dynamics of a glider is
derived using a point mass model under the assumption of a flat
Earth and stationary winds. The goal of the dynamic soaring
problem is to determine the state and the control that minimize
the average wind gradient slope that can sustain a powerless
dynamic soaring flight.  The state of the system is defined by the
air speed, heading angle, air-realtive flight path angle,
altitude, and the position of the glider and the control of the
system is the lift coefficient. The specified accuracy tolerance
of $10^{-7}$ were satisfied after eight mesh iterations. As the
mesh refinement proceeds, the size of the KKT matrices increases
from  647 to 3543.

@article{zhao2004optimal,
  title={Optimal Patterns of Glider Dynamic Soaring},
  author={Zhao, Yiyuan J},
  journal={Optimal Control applications and methods},
  volume={25},
  number={2},
  pages={67--89},
  year={2004},
  publisher={Wiley Online Library}
}


----------------------------------------------------------------------
VDOL/freeFlyingRobot
----------------------------------------------------------------------

Free flying robot optimal control problem is taken from
Ref.~\cite{sakawa1999trajectory}. Free flying robot technology is
expected to play an important role in unmanned space missions.
Although NASA currently has free flying robots, called spheres,
inside the International Space Station (ISS), these free flying
robots have neither the technology nor the hardware to complete
inside and outside inspection and maintanance. NASA\'s new plan is to
send new free flying robots to ISS that are capable of completing
housekeeping of ISS during off hours and working in extreme
environments for the external maintanance of ISS. As a result, the
crew in ISS can have more time for science experiments. The current
free flying robots in ISS works are equipped with a propulsion
system. The goal of the free flying robot optimal control problem is
to determine the state and the control that minimize the magnitude of
thrust during a mission. The state of the system is defined by the
inertial coordinates of the center of gravity, the corresponding
velocity, thrust direction, and the anglular velocity and the control
is the thrust from two engines. The specified accuracy tolerance of
$10^{-6}$ were satisfied after eight mesh iterations. As the mesh
refinement proceeds, the size of the KKT matrices increases from 798
to 6078.


----------------------------------------------------------------------
VDOL/goddardRocketProblem
----------------------------------------------------------------------

Goddard rocket maximum ascent optimal control problem is taken from
Ref.~\cite{goddard1920method}. The goal of the Goddard rocket maximum
ascent problem is to determine the state and the control that
maximize the final altitude of an ascending rocket. The state of the
system is defined by the altitude, velocity, and the mass of the
rocket and the control of the system is the thrust. The Goddard
rocket problem contains a singular arc where the continuous-time
optimality conditions are indeterminate, thereby the nonlinear
programming problem solver will have difficulty determining the
optimal control during the singular arc. In order to prevent this
difficulty and obtain more accurate solutions the Goddard rocket
problem is posed as a three-phase optimal control problem. Phase one
and phase three contains the same dynamics and the path constraints
as the original problem, while phase two contains an additional path
constraint and an event constraint. The specified accuracy tolerance
of $10^{-8}$ were satisfied after two mesh iterations. As the mesh
refinement proceeds, the size of the KKT matrices increases from 831
to 867.

@article{goddard1920method,
  title={A Method of Reaching Extreme Altitudes.},
  author={Goddard, Robert H},
  journal={Nature},
  volume={105},
  pages={809--811},
  year={1920}
}

----------------------------------------------------------------------
VDOL/hangGlider
----------------------------------------------------------------------

Range maximization of a hang glider optimal control problem is taken
from Ref.~\cite{bulirsch1993combining}.  The goal of the optimal
control problem is to determine the state and the control that
maximize the range of the hang glider in the presence of a thermal
updraft. The state of the system is defined by horizontal distance,
altitude, horizontal velocity, and the vertical velocity and the
control is the lift coefficient. The specified accuracy tolerance of
$10^{-8}$ were satisfied after five mesh iterations. As the mesh
refinement proceeds, the size of the KKT matrices increases from 360
to 16011. This problem is sensitive to accuracy of the mesh and it
requires excessive number of collocation points to be able to satisfy
the accuracy tolerance. Thus, the size of the KKT matrices changes
drastically.

@book{bulirsch1993combining,
  title={Combining Direct and Indirect Methods in Optimal Control:
     Range Maximization of a Hang Glider},
  author={Bulirsch, Roland and Nerz, Edda and Pesch, Hans Josef and
     von Stryk, Oskar},
  year={1993},
  publisher={Springer}
}

----------------------------------------------------------------------
VDOL/kineticBatchReactor
----------------------------------------------------------------------


----------------------------------------------------------------------
VDOL/lowThrust
----------------------------------------------------------------------

Low-thrust orbit transfer optimal control problem is taken from
Ref.~\cite{betts2010practical}. The goal of the low-thrust orbit
transfer problem is to determine the state and the control that
minimize the fuel consumption during the orbit transfer of a
spacecraft that starts from a low-earth orbit and terminates at the
geostationary orbit via low-thrust propulsion systems.  The highly
nonlinear dynamics of the low-thrust orbit transfer problem is given
in modified equinoctial elements (state of the system) and the thrust
direction (control of the system).  Furthermore, the low-thrust
optimal control problem is a badly scaled problem because of the
small thrust-to-initial-mass ratio, that is typically on the order of
$O(10^{-4})$, and the long orbit transfer duration. Badly scaling of
the problem leads to a lot of delayed pivots. The specified accuracy
tolerance of $10^{-8}$ were satisfied after thirteen mesh iterations.
As the mesh refinement proceeds, the size of the KKT matrices
increases from 584 to 18476. 

@book{betts2010practical,
  title={Practical Methods for Optimal Control and Estimation Using
     Nonlinear Programming},
  author={Betts, John T},
  volume={19},
  year={2010},
  publisher={SIAM Press},
  address = {Philadelphia, Pennsylvania},
}



----------------------------------------------------------------------
VDOL/orbitRaising
----------------------------------------------------------------------

Orbit raising problem that is taken from
Ref.~\cite{bryson1975applied}. The goal of the optimal control
problem is to determine the state and the control that maximize the
radius of an orbit transfer in a given time. The state of the system
is defined by radial distance of the spacecraft from the attracting
center (e.g Earth, Mars, etc.) and velocity of the spacecraft and the
control is the thrust direction. The specified accuracy tolerance of
$10^{-8}$ were satisfied after four mesh iterations. As the mesh
refinement proceeds, the size of the KKT matrices increases from 442
to 915.

@book{bryson1975applied,
  title={Applied Optimal Control: Optimization, Estimation, and
     Control},
  author={Bryson, Arthur Earl},
  year={1975},
  publisher={CRC Press}
}



----------------------------------------------------------------------
VDOL/reorientation
----------------------------------------------------------------------

Minimum-time reorientation of an asymmetric rigid body optimal
control problem is taken from Ref.~\cite{betts2010practical}. The
goal of the problem is to determine the state and the control that
minimize the time that is required to reorient a rigid body. The
state of the system is defined by quaternians that gives the
orientation of the spacecraft and the angular velocity of the
spacecraft and the control of the system is torque. The vehicle data
that is used to model the dynamics are taken from NASA X-ray Timing
Explorer spacecraft.  The specified accuracy tolerance of $10^{-8}$
were satisfied after eight mesh iterations. As the mesh refinement
proceeds, the size of the KKT matrices increases from 677 to 3108.

@book{betts2010practical,
  title={Practical Methods for Optimal Control and Estimation
     Using Nonlinear Programming},
  author={Betts, John T},
  volume={19},
  year={2010},
  publisher={SIAM Press},
  address = {Philadelphia, Pennsylvania},
}

----------------------------------------------------------------------
VDOL/spaceShuttleEntry
----------------------------------------------------------------------

Space shuttle launch vehicle reentry optimal control problem is taken
from Ref.~\cite{betts2010practical}. The goal of the optimal control
problem is to determine the state and the control that maximize the
cross range (maximize the final latitude) during the atmospheric
entry of a reusable launch vehicle. State of the system is defined by
the position, velocity, and the orientation of the space shuttle and
the control of the system is the angle of attack and the bank angle
of the space shuttle. The specified accuracy tolerance of $10^{-8}$
were satisfied after two mesh iterations. As the mesh refinement
proceeds, the size of the KKT matrices increases from 560 to 2450.


----------------------------------------------------------------------
VDOL/spaceStation
----------------------------------------------------------------------

Space station attitude optimal control problem is taken from
Ref.~\cite{betts2010practical}. The goal of the space station
attitude control problem is to determine the state and the control
that minimize the magnitude of the final momentum while the space
statition reaches an orientation at the final time that can be
maintained without utilizing additional control torque. The state of
the system is defined by the angular velocity of the spacecraft with
respect to an inertial reference frame, Euler-Rodriguez parameters
used to defined the vehicle attitude, and the angular momentum of the
control moment gyroscope and the control of the system is the torque.
The specified accuracy tolerance of $10^{-7}$ were satisfied after
thirteen mesh iterations. As the mesh refinement proceeds, the size
of the KKT matrices increases from 99 to 1640.


----------------------------------------------------------------------
VDOL/tumorAntiogenesis
----------------------------------------------------------------------

Tumor anti-angiogenesis optimal control problem is taken from
Ref.~\cite{ledzewicz2008analysis}. A tumor first uses the blood
vessels of its host but as the tumor grows oxygen that is carried by
the blood vessels of its host cannot defuse very far into the tumor.
Therefore, the tumor grows its own blood vessels by producing
vascular endothelial growth factor (VEGF). This process is called
angiogenesis. But blood vessels have a defense mechanism, called
endostatin, that tries to impede the development of new blood cells
by targeting VEGF. In addition, new pharmacological therapies that is
developed for tumor-type cancers also targets VEGF. The goal of the
tumor anti-angiogenesis problem is to determine the state and control
that minimizing the size of the tumor at the final time. The state of
the system is defined by the tumor volume, carrying capacity of a
vessel, and the total anti-angiogenic treatment administered and the
control of the system is the angiogenic dose rate.  The specified
accuracy tolerance of $10^{-7}$ were satisfied after eight mesh
iterations. As the mesh refinement proceeds, the size of the KKT
matrices increases from 205 to 490.

@article{ledzewicz2008analysis,
  title={Analysis of Optimal Controls for a Mathematical Model of
     Tumour Anti-Angiogenesis},
  author={Ledzewicz, Urszula and Sch{\"a}ttler, Heinz},
  journal={Optimal Control Applications and Methods},
  volume=29,
  number=1,
  pages={41--57},
  year=2008,
  publisher={Wiley Online Library}
}


',

}

