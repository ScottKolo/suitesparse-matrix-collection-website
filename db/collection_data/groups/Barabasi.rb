{
    name: 'Barabasi',
    num_matrices: '3',
    notes: 'Notre Dame networks, A. Barabasi.

================================================================================

The NotreDame_actors, _www, and _yeast networks were derived from
the Pajek versions of the networks.  Details below.

================================================================================

Pajek data sets, from http://vlado.fmf.uni-lj.si/pub/networks/data/,
Vladimir Batagelj and Andrej Mrvar (2006): Pajek datasets.  If the source of
the data set is not specified otherwise,  these data sets are licensed under a
Creative Commons Attribution-NonCommercial-ShareAlike 2.5 License.

Converted to sparse adjacency matrix format by Tim Davis, October 2006.
A(i,j) is the edge from node i to node j in the graph.  If a graph is not
listed as weighted, and yet has non-binary entries, then the entry a(i,j)
reflects the number of edges (i,j) in the original data (the graph is a
multigraph).

All data was converted without loss of information, except where intentional.
Details are given below.

"Pajek" is Slovenian for "spider" and is roughly pronounced "Pie yeck".

The Pajek networks are all 1-based (nodes are numbered starting at node 1).


================================================================================
Summary:
================================================================================

NotreDame_actors:	Barabasi\'s actor network (of www.imdb.com)
		392400-by-127823 with 1470404 nonzeros
		kind: bipartite multigraph

NotreDame_www:	Barabasi\'s web page network of nd.edu
		325729-by-325729 with 929849 nonzeros
		kind: directed graph

NotreDame_yeast:	Barabasi\'s yeast protein interaction
		2114-by-2114 with 4480 nonzeros
		kind: undirected graph

================================================================================

Pajek datasets Notre Dame Self-Organized Networks Database

Datasets   NDwww, NDactors, NDyeast

Description

Notre Dame Self-Organized Networks:

   1. NDwww.net directed network with 325729 vertices and 1497135 arcs (27455
loops); page X is linked to page Y.

   2. NDactors.net undirected two-mode network with 520223 vertices (392400
players, 127823 movies) and 1470418 edges; player X plays in movie Y.

   3. NDyeast.net undirected network with 2114 vertices and 2277 edges (74
loops); protein X interacts with protein Y.



NDwww.net (ZIP, 2050K) NDactors.net (ZIP, 4150K) NDyeast.net (ZIP, 7K)

Background

The networks ND*.net are based on the files from Notre Dame Self-Organized
Networks Database. To transform the data into Pajek format: vertex 0 was
replaced by the vertex number equal to the number of vertices in a network;
Pajek keywords were inserted; and the network was saved in the short (as lists
of neighbors) format.

   1. World-Wide-Web:: Each number represents webpage within nd.edu domain.
Arcs: From page -> To page Réka Albert, Hawoong Jeong and Albert-László
Barabási: Diameter of the World Wide Web, Nature 401, 130 (1999) [ PDF ] See
also a decompostion of this network in V. Batgelj, A. Mrvar: How to analyze
large networks with Pajek?

   2. Actor: Actor network data: (based on www.imdb.com) In the original ND
network file: each line corresponds to one movie, each number represents actor:
number_1 number_2 ... number_k (k actors who play in the same movie).
Albert-László Barabási, Réka Albert: Emergence of scaling in random networks,
Science 286, 509 (1999) [ PDF ]

   3. Protein Interaction Network for Yeast: Each number represents protein in
protein interaction network of yeast. Edges: From protein -> To protein.  For
other datasets used in supplementary material, please refer indicated
references.  Hawoong Jeong, Sean Mason, Albert-László Barabási and Zoltán N.
Oltvai: Centrality and lethality of protein networks, Nature 411, 41 (2001) [
PDF ] See also Yeast data

History

   1. Notre Dame Networks Database put on WWW by the Notre Dame team, 2001;

   2. 23-25. July 2001: ND nets transformed in Pajek format by V. Batagelj.

   3. 23. May 2004: ND nets in Pajek format transformed in short (lists of
neighbors) Pajek format by V. Batagelj.

References

   1. Self-Organized Networks Database, University of Notre Dame.

Copyright Extract from the Notre Dame Networks Database page: "... Feel free to
use these data in your research." Mail to Hawoong Jeong (author of original ND
networks).

Pajek Data; 23. May 2004

================================================================================


Network Databases

The aim of this page is to give access to the network topologies we have
studied. We are in the process of expanding this database. Feel free to use
these data in your research.

    World-Wide-Web: [README] [DATA]
    Réka Albert, Hawoong Jeong and Albert-László Barabási:
    Diameter of the World Wide Web Nature 401, 130 (1999) [ PDF ]

    Actor: [README] [DATA]
    Albert-László Barabási, Réka Albert:
    Emergence of scaling in random networks Science 286, 509 (1999) [ PDF ]

    Celluar Network: [README] [Whole Cellular Network]
    [Metabolic Network Only]
    Hawoong Jeong, Bálint Tombor, Réka Albert,
    Zoltán N. Oltvai and Albert-László Barabási:
    The large-scale organization of metabolic networks
    Nature 407, 651 (2000) [ PDF ]

    Protein Interaction Network: [README] [DATA for yeast]
    Hawoong Jeong, Sean Mason, Albert-László Barabási and Zoltán N. Oltvai:
    Centrality and lethality of protein networks Nature 411, 41 (2001) [ PDF ]
    [ Supplementary Material 1 & 2 ]

    Enron Email Dataset
    [ Website ]

    Network Dynamic Data will be available soon!

',

}

