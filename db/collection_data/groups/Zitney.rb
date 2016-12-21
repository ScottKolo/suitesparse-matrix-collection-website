{
    name: 'vanHeukelum',
    num_matrices: '13',
    notes: 'DNA electrophoresis model.  Alexander van Heukelum, Utrect Univ, The Netherlands.

Date: Wed, 5 Jun 2002 14:12:02 +0200 (MET DST)
From: Alexander van Heukelum <A.vanHeukelum :at the domain: phys.uu.nl>
To: davis :at the domain: cise.ufl.edu
Subject: Sparse matrix library


--  Alexander van Heukelum  --	Institute for Theoretical Physics
Room: Minnaert Building 307	Utrecht University
Phone: (+31) (30) 253 4622	Leuvenlaan 4
Fax: (+31) (30) 253 5937	3584 CE Utrecht
Email: heukelum :at the domain: phys.uu.nl	The Netherlands


-----------------------------------------------------------------------

The cage model of DNA electrophoresis

The cage model of DNA electrophoresis describes the drift, induced by a
constant electric field, of homogeneously charged polymers through a
gel. The gel forms an effective "tube", from which the polymers can only
escape by reptation, i.e., motion of stored length along the chain. The
polymer chain is modeled as a random walk on a cubic lattice, and stored
length is represented by two adjacent segments with opposite directions
(a kink). The dynamics consists of single-monomer moves: only
configurations which differ by the direction of a kink or the direction
of an end segment have a finite transition probability.

The direction of the field is chosen in the direction of the main body
diagonal of the lattice, such that many polymer configurations become
equivalent. The matrices presented here describe the transition
probabilities between such equivalence-classes of the configurations,
for an applied field of E = (0.1, 0.1, 0.1) for polymers of L = 3 to 15
monomers.

  name    length    rows   columns  nonzeros
-------- -------- -------- -------- --------
 cage3       3          5        5        19
 cage4       4          9        9        49
 cage5       5         37       37       233
 cage6       6         93       93       785
 cage7       7        340      340      3084
 cage8       8       1015     1015     11003
 cage9       9       3534     3534     41594
 cage10     10      11397    11397    150645
 cage11     11      39082    39082    559722
 cage12     12     130228   130228   2032536
 cage13     13     445315   445315   7479343
 cage14     14    1505785  1505785  27130349
 cage15     15    5154859  5154859  99199551

For more information on the matrices, see A. van Heukelum, G. T.
Barkema, and R. H. Bisseling, "DNA electrophoresis studied with
the cage model", J. Comp. Phys. 180, 313-326 (2002), or
http://arxiv.org/format/cond-mat/0101467.

',

}

