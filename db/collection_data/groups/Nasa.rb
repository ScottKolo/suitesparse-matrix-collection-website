{
    name: 'Nasa',
    num_matrices: '11',
    notes: 'NASA matrices obtained from Alex Pothen, ICASE and Old Dominion Univ.
Converted to HB format by Tim Davis.  The following is the original
README file, and email discussing the *.nas format.

The original *.nas files have coordinate information for the nodes of the
graph.  They are located in the Conversion/ subdirectory, if you\'re interested.

--------------------------------------------------------------------------------

ftp://ftp.cs.odu.edu/pub/incoming/kumfert/README

WARNING:
The contents of this ftp site are temporary and subject
to change without notice.

DISCLAIMER:
Nothing free is guaranteed.

CONTENTS:
The current contents are matrices in various formats.
All are compressed and should be ftp\'d using binary mode.
The two major formats are .nas and .hb  for NASA and 
Harwell-Boeing formats respectively.  The current list includes:

	barth.nas.Z
	barth4.nas.Z
	barth5.nas.Z
	nasa1824.hb.Z
	nasa2146.hb.Z
	nasa2910.hb.Z
	nasa4704.hb.Z
	nasasrb.hb.Z
	pwt.nas.Z
	shuttle_eddy.nas.Z
	skirt.nas.Z

Also included are some files for reading in these problems into
the Matlab(R) environment.  

        hbo2mat.f
        hbo.m
        readnasa.m

Nasa files can be read in using the readnasa.m utility.  Loading
in Harwell-Boeing files is a two step process.  First one must
convert the .hb file to a .mat file using hbo2mat.  Compilation
instructions are included in the file.  Then within Matlab, 
use hbo.m to properly load the .mat file.  The latter two
files were written by Cleve Moler, The MathWorks.  The readnasa.m
file was writtem by Gary Kumfert, Old Dominion University.

Comments/suggestions can be sent to Gary Kumfert <kumfert :at the domain: cs.odu.edu>.

Matlab is a registered trademark of The MathWorks Inc.

--------------------------------------------------------------------------------


Date: Thu, 1 Jun 1995 12:59:00 -0400
From: Pothen Alex <pothen :at the domain: icase.edu>
To: davis :at the domain: cis.ufl.edu
Subject: Re:  problems

problem.nas is an inhouse format used by us. 
It lists n coordinates of the nodes 
x_i y_i (z_i) 
and then tuples or triples
i j a_{ij} 
The first line lists n (no. of nodes) and 
nnz (the no. of nonzeros).

--Alex 


From: Alex Pothen <pothen :at the domain: cs.odu.edu>
Date: Thu, 1 Jun 1995 18:25:15 -0400
To: davis :at the domain: cis.ufl.edu
Subject: Re:  matrices

Tim, 
I am working at Icase and don\'t have access to barth
I will check and let you know tomorrow.
--Alex 
P.S. If it is a nas file, I trust you are using 
readnasa.m file to read it. 
It is an airfoil problem, so you should be able to 
visualize it using gplot. 
--Alex 

From: Alex Pothen <pothen :at the domain: cs.odu.edu>
Date: Fri, 2 Jun 1995 10:06:46 -0400
To: davis :at the domain: cis.ufl.edu
Subject: Re:  matrices

It is possible that the original numbering of barth makes 
it look random in a spy plot.
--Alex 

',

}

