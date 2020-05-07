{
    name: 'Averous',
    num_matrices: '4',
    notes: 'Matrices from David Averous, Institut National Polytechnique de Toulouse (INPT).

--------------------------------------------------------------------------------

Date: Thu, 19 Feb 1998 15:13:41 +0100
To: davis at cise.ufl.edu
From: David Averous <David.Averous at ensigct.fr>
Subject: UMFPACK

Dear Prof. T. DAVIS,
We work at ENSIGCT (in Toulouse (France) which is in the same university as
ENSEEIHT)in Laboratory of Chemical Engineering. Ours fields are simulation,
dynamic and static, and modeling of chemical processes. So we deal with
matrices that can be small and quiet full (N=100) up to very large, very
sparse and unsymmetric (N=100000, NNZ=500000).
We have tested various codes and according to literature and also workshops
(ILAY 95 CERFACS) we use UMF (2.*). For most of ours cases we have very
good results, fast integration and acceptable fill in.

We use it with a general DAE (differential Algebraic Equations) systems
solver using Gear, write in Fortran 77. Due to its general aspect we don\'t
know a priori the structure of matrix. So for static allocation of
integrator work vector, does a method (or a function) exist to evaluate an
upper limit of LVALUE and LINDEX with N(nb of equations) and NNZ(nb of non
zero) ? (Do you intend to make a f90 version of UMF in the future.. ?)

We have another problem due to fill in. For static simulation of plate fin
heat exchanger, we deal with matrices
from N~10000 and NNZ~50000 to N~100000 and NNZ~500000. But we can\'t reach
the upper limit of N due to fill in, the factor range from 5 to 50 ,
depending of cases. It depends on matrix structure. But perhaps there is a
matrix structure (large or small bandwidth, with or without border ...)
that reduce fill-in in UMF ?(we tried to change the number of columns
examined during pivot search but the behavior was unpredictable.)

Thanking you by advance for your courtesy,

	Best regards.					Prof. J.M. LE LANN
							D. AVEROUS
							K. HAMMADI
							A. SARGOUSSE


--------------------------------------------------------------------------
David AVEROUS
Institut National Polytechnique de Toulouse (INPT)
Ecole Nationale Sup=E9rieure d\'Ing=E9nieurs de G=E9nie Chimique (ENSIGC)
Laboratoire de G=E9nie Chimique (UMR 5503 CNRS)
Equipe Analyse Fonctionnelle des Proc=E9d=E9s
18, Chemin de la Loge - F31078 TOULOUSE CEDEX (France)=09
	T=E9l.: 33 (0)5 62 25 23 00 Poste 2585	Fax : 33 (0)5 62 25 23 18
	E-mail : David.Averous at ensigct.fr
--------------------------------------------------------------------------

Date: Mon, 02 Mar 1998 10:47:35 +0100
To: davis at cise.ufl.edu
From: David Averous <David.Averous at ensigct.fr>
Subject: Matrices

I have sent you matrices (epb0.mat, epb1.mat, epb2.mat, epb3.mat). I use
gunzip for compression.=20

epb0 : N = 1794 ; NE = 8960 Plate-Fin Heat Exchanger with Simple Model
epb1 : N = 14734 ; NE = 95053 PFHE Model (simple case)
epb2 : N = 25228 ; NE = 175027 PFHE model ( case with flow redistributio=
n
represent by the extra diagonal blocs)
epb3 : N = 84617 ; NE = 463625 PFHE model (large case)

I have made some tests on memory requirements as function of the amalgation
parameter. Normalized memory requirements increases faster than in your
tests (TR-97-016) unfortunately for me I have an extremun at default value
(2.0), I reach 1.6 in some case. A value of 1.1 for amalgation seems better
for my kind of matrices, of course it means a little increase in
factorization time.

Best wishes

David Averous

',

}

