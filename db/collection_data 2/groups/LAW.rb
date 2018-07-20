{
    name: 'LPnetlib',
    num_matrices: '138',
    notes: 'NETLIB Linear Programming problems, www.netlib.org.

matrices/LPnetlib/README.  Tim Davis, May 15, 1997. (davis :at the domain:
cise.ufl.edu)

The files in this directory are a translation of the linear programming
problems in Netlib.  You can obtain more information about the Netlib LP
problems by sending email to netlib :at the domain:
ornl.gov with the message
"send index from lp".


++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
NOTICE!  The Netlib LP problems, in MPS format, should be considered the
"canonical" problems.  If you find any problems with different optimal
objectives than what is reported in Netlib, then please let me know.
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

The Netlib LP problems are in MPS or compressed MPS format.  Any compressed
MPS files were uncompressed using emps.c in the Netlib lp/data directory.
The MPS files were then converted to the KAR format using the mpsrd program
by M.G.C. Resende and G. Veiga.  The mpsrd program does not process RANGES,
so five problems (boeing1, boeing2, forplan, nesm, and seba) do not appear
here.  The KAR format is written out by mpsrd as follows:

c     name   - problem name (same as mps name card)
      write(out,\'(a8)\') name
c     m      - number or rows (input)
c     n      - number of columns (input)
      write(out,*) m,n
c     ia     - pointers to the begining of storage of column
      write(out,*) (ia(i),i=1,n+1)
c     ja     - row indices for each non zero entry (input)
      write(out,*) (ja(i),i=1,ia(n+1)-1)
c     a      - non zero entries (input)
      write(out,*) (a(i),i=1,ia(n+1)-1)
c     b      - right hand side (input)
      write(out,*) (b(i),i=1,m)
c     c      - objective vector (minimize)
      write(out,*) (c(i),i=1,n)
c     z0     - initial fixed value for objective
      write(out,*) z0
c     lobnd  - lower bounds on variables
      write(out,*) (lobnd(i),i=1,n)
c     upbnd  - upper bounds on variables
      write(out,*) (upbnd(i),i=1,n)

Mpsrd converts the MPS problem into a single form:

	minimize c\'*x, subject to Ax=b and l<=x<=u.
	(and given an initial value of the objective, z0).

Next, the KAR formatted version of the LP problem was converted into
two formats by the readkar.f program, written by Tim Davis.  It generates
a single Matlab script, such as lp_afiro.m for the AFIRO problem.
For infeasible (lp/infeas) problems, the prefix is lpi_ (lpi_galenet.m for
the problem GALENET, for example).  This prefix was chosen so that you
are sure to notice that the problem is infeasible, and also because there
are two versions of the same problem in Netlib (GREENBEA), one feasible
and the other not.



--------------------------------------------------------------------------------


The *.clu files contain the c, l, and u vectors,
and the scalar z0, for the LP problems held in
RRA format in the LPnetlib directory.  The dense vectors
appear in order: c, l, u, and then z0.  One entry is held
on each line. 

The RRA files contain A and b, in Harwell/Boeing format.

The LP problems are all of the form

	minimize c\'*x, subject to Ax=b and l<=x<=u
	and where z0 is the initial value of the
	objective.

',

}

