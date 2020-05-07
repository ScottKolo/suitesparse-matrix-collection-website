{
    name: 'DIMACS10',
    num_matrices: '151',
    notes: '10th DIMACS Implementation Challenge

Updated July 2012

http://www.cc.gatech.edu/dimacs10/index.shtml
http://www.cise.ufl.edu/research/sparse/dimacs10

As stated on their main website (
http://dimacs.rutgers.edu/Challenges/ ), the "DIMACS Implementation
Challenges address questions of determining realistic algorithm
performance where worst case analysis is overly pessimistic and
probabilistic models are too unrealistic: experimentation can provide
guides to realistic algorithm performance where analysis fails."

For the 10th DIMACS Implementation Challenge, the two related
problems of graph partitioning and graph clustering were chosen.
Graph partitioning and graph clustering are among the aforementioned
questions or problem areas where theoretical and practical results
deviate significantly from each other, so that experimental outcomes
are of particular interest.

Problem Motivation

Graph partitioning and graph clustering are ubiquitous subtasks in
many application areas. Generally speaking, both techniques aim at
the identification of vertex subsets with many internal and few
external edges. To name only a few, problems addressed by graph
partitioning and graph clustering algorithms are:

    * What are the communities within an (online) social network?
    * How do I speed up a numerical simulation by mapping it
        efficiently onto a parallel computer?
    * How must components be organized on a computer chip such that
        they can communicate efficiently with each other?
    * What are the segments of a digital image?
    * Which functions are certain genes (most likely) responsible
        for?

Challenge Goals

    * One goal of this Challenge is to create a reproducible picture
        of the state-of-the-art in the area of graph partitioning
        (GP) and graph clustering (GC) algorithms. To this end we
        are identifying a standard set of benchmark instances and
        generators.

    * Moreover, after initiating a discussion with the community, we
        would like to establish the most appropriate problem
        formulations and objective functions for a variety of
        applications.

    * Another goal is to enable current researchers to compare their
        codes with each other, in hopes of identifying the most
        effective algorithmic innovations that have been proposed.

    * The final goal is to publish proceedings containing results
        presented at the Challenge workshop, and a book containing
        the best of the proceedings papers.

Problems Addressed

The precise problem formulations need to be established in the course
of the Challenge. The descriptions below serve as a starting point.

    * Graph partitioning:

      The most common formulation of the graph partitioning problem
      for an undirected graph G = (V,E) asks for a division of V into
      k pairwise disjoint subsets (partitions) such that all
      partitions are of approximately equal size and the edge-cut,
      i.e., the total number of edges having their incident nodes in
      different subdomains, is minimized. The problem is known to be
      NP-hard.

    * Graph clustering:

      Clustering is an important tool for investigating the
      structural properties of data. Generally speaking, clustering
      refers to the grouping of objects such that objects in the same
      cluster are more similar to each other than to objects of
      different clusters. The similarity measure depends on the
      underlying application. Clustering graphs usually refers to the
      identification of vertex subsets (clusters) that have
      significantly more internal edges (to vertices of the same
      cluster) than external ones (to vertices of another cluster).

There are 12 data sets in the DIMACS10 collection:

clustering: real-world graphs commonly used as benchmarks
coauthor:   citation and co-author networks
Delaunay:   Delaunay triangulations of random points in the plane
dyn-frames: frames from a 2D dynamic simulation
Kronecker:  synthetic graphs from the Graph500 benchmark
numerical:  graphs from numerical simulation
random:     random geometric graphs (random points in the unit square)
streets:    real-world street networks
Walshaw:    Chris Walshaw\'s graph partitioning archive
matrix:     graphs from the UF collection (not added here)
redistrict: census networks
star-mixtures : artificially generated from sets of real graphs

Some of the graphs already exist in the UF Collection.  In some cases,
the original graph is unsymmetric, with values, whereas the DIMACS
graph is the symmetrized pattern of A+A\'.  Rather than add duplicate
patterns to the UF Collection, a MATLAB script is provided at
http://www.cise.ufl.edu/research/sparse/dimacs10 which downloads
each matrix from the UF Collection via UFget, and then performs whatever
operation is required to convert the matrix to the DIMACS graph problem.
Also posted at that page is a MATLAB code (metis_graph) for reading the
DIMACS *.graph files into MATLAB.

--------------------------------------------------------------------------------
clustering:  Clustering Benchmarks
--------------------------------------------------------------------------------

    These real-world graphs are often used as benchmarks in the graph
    clustering and community detection communities.  All but 4 of the 27
    graphs already appear in the UF collection in other groups.  The
    DIMACS10 version is always symmetric, binary, and with zero-free
    diagonal.  The version in the UF collection may not have those
    properties, but in those cases, if the pattern of the UF matrix
    is symmetrized and the diagonal removed, the result is the DIMACS10
    graph.

    DIMACS10 graph:                 new?   UF matrix:
    ---------------                 ----   -------------
    clustering/adjnoun                     Newman/adjoun
    clustering/as-22july06                 Newman/as-22july06
    clustering/astro-ph                    Newman/astro-ph
    clustering/caidaRouterLevel      *     DIMACS10/caidaRouterLevel
    clustering/celegans_metabolic          Arenas/celegans_metabolic
    clustering/celegansneural              Newman/celegansneural
    clustering/chesapeake            *     DIMACS10/chesapeake
    clustering/cnr-2000                    LAW/cnr-2000
    clustering/cond-mat-2003               Newman/cond-mat-2003
    clustering/cond-mat-2005               Newman/cond-mat-2005
    clustering/cond-mat                    Newman/cond-mat
    clustering/dolphins                    Newman/dolphins
    clustering/email                       Arenas/email
    clustering/eu-2005                     LAW/eu-2005
    clustering/football                    Newman/football
    clustering/hep-th                      Newman/hep-th
    clustering/in-2004                     LAW/in-2004
    clustering/jazz                        Arenas/jazz
    clustering/karate                      Arenas/karate
    clustering/lesmis                      Newman/lesmis
    clustering/netscience                  Newman/netscience
    clustering/PGPgiantcompo               Arenas/PGPgiantcompo
    clustering/polblogs                    Newman/polblogs
    clustering/polbooks                    Newman/polbooks
    clustering/power                       Newman/power
    clustering/road_central          *     DIMACS10/road_central
    clustering/road_usa              *     DIMACS10/road_usa

    the following graphs were added on July 2012:

    G_n_pin_pout
    preferentialAttachment
    smallworld

    uk-2002 was \'added\' on July 2012 to the dimacs10 MATLAB interface,
    but it already appears as the LAW/uk-2002 matrix.

    uk-2007-05 is in the DIMACS10 collection but is not yet added here,
    because it\'s too large for the file format of the UF collection.

--------------------------------------------------------------------------------
coauthor:  Citation Networks
--------------------------------------------------------------------------------

    These graphs are examples of social networks used in R. Geisberger, P.
    Sanders, and D. Schultes. Better approximation of betweenness
    centrality. In 10th Workshop on Algorithm Engineering and
    Experimentation, pages 90-108, San Francisco, 2008. SIAM.

--------------------------------------------------------------------------------
Delaunay:  Delaunay Graphs
--------------------------------------------------------------------------------

    These files have been generated as Delaunay triangulations of random
    points in the unit square.

    Engineering a scalable high quality graph partitioner,
    M. Holtgrewe, P. Sanders, C. Schulz, IPDPS 2010
    http://dx.doi.org/10.1109/IPDPS.2010.5470485

--------------------------------------------------------------------------------
dyn-frames:  Frames from 2D Dynamic Simulations
--------------------------------------------------------------------------------

    These files have been created with the generator described in Oliver
    Marquardt, Stefan Schamberger: Open Benchmarks for Load Balancing
    Heuristics in Parallel Adaptive Finite Element Computations. In Proc.
    International Conference on Parallel and Distributed Processing
    Techniques and Applications (PDPTA 2005), Volume 2, pp. 685-691. CSREA
    Press 2005, ISBN 1-932415-59-9685-691.

    The graphs are meshes taken from indivudual frames of a dynamic
    sequence that resembles two-dimensional adaptive numerical simulations.
    Smaller versions of these files (and their dynamic sequences as videos)
    can be found on Stefan Schamberger\'s website (
    http://www.upb.de/cs/schaum/benchmark.html ) dedicated to these
    benchmarks. The files presented here are the frames 0, 10, and 20 of
    the sequences, respectively.

--------------------------------------------------------------------------------
Kronecker:  Kronecker Generator Graphs
--------------------------------------------------------------------------------

    The original Kronecker files contain self-loops and multiple edges.
    These properties are also present in real-world data sets. However,
    some tools cannot handle these "artifacts" at the moment. That is why
    we present "cleansed" versions of the data sets as well.  For the
    Challenge you should expect to be confronted with the original data
    with self-loops and multiple edges. However, the final decision on
    this issue will be made based on participant feedback.

    All files have been generated with the R-MAT parameters A=0.57, B=0.19,
    C=0.19, and D=1-(A+B+C)=0.05 and edgefactor=48, i.e., the number of
    edges equals 48*n, where n is the number of vertices. Details about the
    generator and the parameter meanings can be found on the Graph500
    website.  ( http://www.graph500.org/Specifications.html )

    There are 12 graphs in the DIMACS10 test set at
    http://www.cc.gatech.edu/dimacs10/index.shtml .  Them come in 6 pairs.
    One graph in each pair is a multigraph, with self-edges.  The other
    graph is the nonzero pattern of the first (binary), with self-edges
    removed.  MATLAB cannot directly represent multigraph, so in the UF
    Collection the unweighted multigraph G is represented as a matrix A
    where A(i,j) is an integer equal to the number edges (i,j) in G.

    The binary graphs include the word \'simple\' in their
    name In the UF Collection, only the multigraph is included,
    since the simple graph can be constructed from the multigraph.
    If A is the multigraph, the simple graph S can be computed as:

       S = spones (tril (A,-1)) + spones (triu (A,1)) ;

    DIMACS10 graph:                        UF matrix:
    ---------------                        -------------
    kronecker/kron_g500-logn16             DIMACS10/kron_g500-logn16
    kronecker/kron_g500-simple-logn16

    kronecker/kron_g500-logn17             DIMACS10/kron_g500-logn17
    kronecker/kron_g500-simple-logn17

    kronecker/kron_g500-logn18             DIMACS10/kron_g500-logn18
    kronecker/kron_g500-simple-logn18

    kronecker/kron_g500-logn19             DIMACS10/kron_g500-logn19
    kronecker/kron_g500-simple-logn19

    kronecker/kron_g500-logn20             DIMACS10/kron_g500-logn20
    kronecker/kron_g500-simple-logn20

    kronecker/kron_g500-logn21             DIMACS10/kron_g500-logn21
    kronecker/kron_g500-simple-logn21


    References: "Introducing the Graph 500," Richard C. Murphy, Kyle B.
    Wheeler, Brian W. Barrett, James A. Ang, Cray User\'s Group (CUG), May
    5, 2010.

    D.A. Bader, J. Feo, J. Gilbert, J. Kepner, D. Koester, E. Loh, K.
    Madduri, W. Mann, Theresa Meuse, HPCS Scalable Synthetic Compact
    Applications #2 Graph Analysis (SSCA#2 v2.2 Specification), 5
    September 2007.

    D. Chakrabarti, Y. Zhan, and C. Faloutsos, R-MAT: A recursive model
    for graph mining, SIAM Data Mining 2004.

    Section 17.6, Algorithms in C (third edition). Part 5 Graph
    Algorithms, Robert Sedgewick (Programs 17.7 and 17.8)

    P. Sanders, Random Permutations on Distributed, External and
    Hierarchical Memory, Information Processing Letters 67 (1988) pp
    305-309.

    "DFS: A Simple to Write Yet Difficult to Execute Benchmark," Richard C.
    Murphy, Jonathan Berry, William McLendon, Bruce Hendrickson, Douglas
    Gregor, Andrew Lumsdaine, IEEE International Symposium on Workload
    Characterizations 2006 (IISWC06), San Jose, CA, 25-27 October 2006.

    ---- sample code for generating these matrices:

    function ij = kronecker_generator (SCALE, edgefactor)
    %% Generate an edgelist according to the Graph500
    %% parameters.  In this sample, the edge list is
    %% returned in an array with two rows, where StartVertex
    %% is first row and EndVertex is the second.  The vertex
    %% labels start at zero.
    %%
    %% Example, creating a sparse matrix for viewing:
    %%   ij = kronecker_generator (10, 16);
    %%   G = sparse (ij(1,:)+1, ij(2,:)+1, ones (1, size (ij, 2)));
    %%   spy (G);
    %% The spy plot should appear fairly dense. Any locality
    %% is removed by the final permutations.

      %% Set number of vertices.
      N = 2^SCALE;

      %% Set number of edges.
      M = edgefactor * N;

      %% Set initiator probabilities.
      [A, B, C] = deal (0.57, 0.19, 0.19);

      %% Create index arrays.
      ij = ones (2, M);
      %% Loop over each order of bit.
      ab = A + B;
      c_norm = C/(1 - (A + B));
      a_norm = A/(A + B);

      for ib = 1:SCALE,
        %% Compare with probabilities and set bits of indices.
        ii_bit = rand (1, M) > ab;
        jj_bit = rand (1, M) > ( c_norm * ii_bit + a_norm * not (ii_bit) );
        ij = ij + 2^(ib-1) * [ii_bit; jj_bit];
      end

      %% Permute vertex labels
      p = randperm (N);
      ij = p(ij);

      %% Permute the edge list
      p = randperm (M);
      ij = ij(:, p);

      %% Adjust to zero-based labels.
      ij = ij - 1;

    function G = kernel_1 (ij)
    %% Compute a sparse adjacency matrix representation
    %% of the graph with edges from ij.

      %% Remove self-edges.
      ij(:, ij(1,:) == ij(2,:)) = [];
      %% Adjust away from zero labels.
      ij = ij + 1;
      %% Find the maximum label for sizing.
      N = max (max (ij));
      %% Create the matrix, ensuring it is square.
      G = sparse (ij(1,:), ij(2,:), ones (1, size (ij, 2)), N, N);
      %% Symmetrize to model an undirected graph.
      G = spones (G + G.\');

--------------------------------------------------------------------------------
numerical: graphs from numerical simulations
--------------------------------------------------------------------------------

    For the graphs adaptive and venturiLevel3, please refer to the preprint:

    Hartwig Anzt, Werner Augustin, Martin Baumann, Hendryk Bockelmann,
    Thomas Gengenbach, Tobias Hahn, Vincent Heuveline, Eva Ketelaer,
    Dimitar Lukarski, Andrea Otzen, Sebastian Ritterbusch, Bjo"rn Rocker,
    Staffan Ronnås, Michael Schick, Chandramowli Subramanian, Jan-Philipp
    Weiss, and Florian Wilhelm.  Hiflow3 - a flexible and hardware-aware
    parallel Finite element package. In Parallel/High-Performance Object-
    Oriented Scientific Computing (POOSC\'10).

    For the graphs channel-500x100x100-b050 and packing-500x100x100-b050,
    please refer to:

    Markus Wittmann, Thomas Zeiser. Technical Note: Data Structures of
    ILBDC Lattice Boltzmann Solver.
    http://www.cc.gatech.edu/dimacs10/archive/numerical-overview-Erlangen.pdf

    The instances NACA0015, M6, 333SP, AS365, and NLR are 2-dimensional FE
    triangular meshes with coordinate information. 333SP and AS365 are actually
    converted from existing 3-dimensional models to 2D places, while the rest
    are created from geometry. The corresponding coordinate files have been
    assembled in one archive. They have been created and contributed by Chan
    Siew Yin with the help of Jian Tao Zhang, Department of Mechanical
    Engineering, University of New Brunswick, Fredericton, Canada. 

--------------------------------------------------------------------------------
random:  Random Geometric Graphs
--------------------------------------------------------------------------------

    rggX is a random geometric graph with 2^X vertices. Each vertex is a
    random point in the unit square and edges connect vertices whose
    Euclidean distance is below 0.55 (ln n)/n. This threshold was choosen
    in order to ensure that the graph is almost connected.

    Note:  the UF Collection is a collection of matrices primarily from
    real applications.  The only random matrices I add to the collection
    are those used in established benchmarks (such as DIMACS10).

    Engineering a scalable high quality graph partitioner,
    M. Holtgrewe, P. Sanders, C. Schulz, IPDPS 2010.
    http://dx.doi.org/10.1109/IPDPS.2010.5470485

--------------------------------------------------------------------------------
steets:  Street Networks
--------------------------------------------------------------------------------

    The graphs Asia, Belgium, Europe, Germany, Great-Britain, Italy,
    Luxemburg and Netherlands are (roughly speaking) undirected and
    unweighted versions of the largest strongly connected component
    of the corresponding Open Street Map road networks. The Open
    Street Map road networks have been taken from
    http://download.geofabrik.de and have been converted for DIMACS10
    by Moritz Kobitzsch (kobitzsch at kit.edu) as follows:

    First, we took the corresponding graph and extracted all routeable
    streets. Routable streets are objects in this file that are tagged
    using one of the following tags: motorway, motorway_link, trunk
    trunk_link, primary, primary_link, secondary, secondary_link,
    tertiary, tertiary_link, residential, unclassified, road,
    living_street, and service.  Next, we now compute the largest
    strongly connected component of this extracted open street map graph.
    Self-edges and parallel edges are removed afterwards.
    The DIMACS 10 graph is now the undirected and unweighted version
    of the constructed graph, i.e.  if there is an edge (u,v) but the
    reverse edge (v,u) is missing, we insert the reverse edge into the
    graph.  The XY coordinates of each node in the graph are preserved.

--------------------------------------------------------------------------------
Walshaw:  Chris Walshaw\'s graph partitioning archive
--------------------------------------------------------------------------------

    Chris Walshaw\'s graph partitioning archive contains 34 graphs that
    have been very popular as benchmarks for graph partitioning algorithms
    ( http://staffweb.cms.gre.ac.uk/~wc06/partition/ ).

    17 of them are already in the UF Collection.  Only the 17 new graphs
    not yet in the collection are added here in the DIMACS10 set.

    DIMACS10 graph:                 new?   UF matrix:
    ---------------                 ----   -------------
    walshaw/144                      *     DIMACS10/144
    walshaw/3elt                           AG-Monien/3elt
    walshaw/4elt                           Pothen/barth5
    walshaw/598a                     *     DIMACS10/598a
    walshaw/add20                          Hamm/add20
    walshaw/add32                          Hamm/add32
    walshaw/auto                     *     DIMACS10/auto
    walshaw/bcsstk29                       HB/bcsstk29
    walshaw/bcsstk30                       HB/bcsstk30
    walshaw/bcsstk31                       HB/bcsstk31
    walshaw/bcsstk32                       HB/bcsstk32
    walshaw/bcsstk33                       HB/bcsstk33
    walshaw/brack2                         AG-Monien/brack2
    walshaw/crack                          AG-Monient/crack
    walshaw/cs4                      *     DIMACS10/cs4
    walshaw/cti                      *     DIMACS10/cti
    walshaw/data                     *     DIMACS10/data
    walshaw/fe_4elt2                 *     DIMACS10/fe_4elt2
    walshaw/fe_body                  *     DIMACS10/fe_body
    walshaw/fe_ocean                 *     DIMACS10/fe_ocean
    walshaw/fe_pwt                         Pothen/pwt
    walshaw/fe_rotor                 *     DIMACS10/fe_rotor
    walshaw/fe_sphere                *     DIMACS10/fe_sphere
    walshaw/fe_tooth                 *     DIMACS10/fe_tooth
    walshaw/finan512                       Mulvey/finan512
    walshaw/m14b                     *     DIMACS10/m14b
    walshaw/memplus                        Hamm/memplus
    walshaw/t60k                     *     DIMACS10/t60k
    walshaw/uk                       *     DIMACS10/uk
    walshaw/vibrobox                       Cote/vibrobox
    walshaw/wave                           AG-Monien/wave
    walshaw/whitaker3                      AG-Monien/whitaker3
    walshaw/wing                     *     DIMACS10/wing
    walshaw/wing_nodal               *     DIMACS10/wing_nodal

--------------------------------------------------------------------------------
redistrict:  census networks
--------------------------------------------------------------------------------

    These graphs represent US states. They are used for solving the
    redistricting problem. All data have been provided by Will Zhao. As stated
    on the project website,  The nodes are Census2010 blocks. Two nodes have an
    edge linking them if they share a line segment on their borders, i.e.
    rook-style neighboring. The nodes weights are the POP100 variable of
    Census2010-PL94, and the area of eache district.

--------------------------------------------------------------------------------
star-mixtures : artificially generated from sets of real graphs
--------------------------------------------------------------------------------

    Each graph in this benchmark represents a star-like structure of different
    graphs S0 , . . . , St. Graphs S1 , . . . , St are weakly connected to the
    center S0 by random edges. The total number of edges between each Si and S0
    was less than 3% out of the total number of edges in Si . The graphs are
    mixtures of the following structures: social networks, finite-element
    graphs, VLSI chips, peer-to-peer networks, and matrices from optimization
    solvers.

    More info can be found in the paper I. Safro, P. Sanders, C. Schulz:
    Advanced Coarsening Schemes for Graph Partitioning, SEA 2012.

    Communicated by Christian Schulz, uploaded on March 30, 2012. 

',

}

