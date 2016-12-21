{
    name: 'SNAP',
    num_matrices: '45',
    notes: 'Networks from SNAP (Stanford Network Analysis Platform) Network Data Sets,
Jure Leskovec http://snap.stanford.edu/data/index.html
email jure at cs.stanford.edu

Included into the Univ of Florida Sparse Matrix Collection, June 2010,
by Tim Davis.

    * Social networks: online social networks, edges represent interactions
      between people

    * Communication networks: email communication networks with edges
      representing communication

    * Citation networks: nodes represent papers, edges represent citations

    * Collaboration networks: nodes represent scientists, edges represent
      collaborations (co-authoring a paper)

    * Web graphs: nodes represent webpages and edges are hyperlinks

    * Blog and Memetracker graphs: nodes represent time stamped blog posts,
      edges are hyperlinks

    * Amazon networks : nodes represent products and edges link commonly
      co-purchased products

    * Internet networks : nodes represent computers and edges communication

    * Road networks : nodes represent intersections and edges roads connecting
      the intersections

    * Autonomous systems : graphs of the internet

    * Signed networks : networks with positive and negative edges (friend/foe,
      trust/distrust)

The numbers of nodes in the tables below can differ from the nodes of the
graphs as stored in the UF Sparse Matrix Collection.  In the table below,
the number of nodes excludes nodes of zero degree, for some problems.
These are marked with a "+" in front of the number of Nodes, in the
list below.


--------------------------------------------------------------------------------
Social networks
--------------------------------------------------------------------------------

Name                Type        Nodes       Edges       Description
soc-Epinions1       Directed  +    75,879      508,837  Who-trusts-whom network of Epinions.com
soc-LiveJournal1    Directed    4,847,571   6,8993,773  LiveJournal online social network
soc-Slashdot0811    Directed       77,360      905,468  Slashdot social network from November 2008
soc-Slashdot0922    Directed       82,168      948,464  Slashdot social network from February 2009
wiki-Vote           Directed  +      7115      103,689  Wikipedia who-votes-on-whom network

--------------------------------------------------------------------------------
Communication networks
--------------------------------------------------------------------------------

Name                Type        Nodes       Edges       Description
email-EuAll         Directed      265,214      420,045  Email network from a EU research institution
email-Enron      ** Directed       36,692      367,662  Email communication network from Enron
wiki-Talk           Directed    2,394,385    5,021,410  Wikipedia talk (communication) network

(** NOTE: The email-Enron graph is listed as "directed" in the SNAP data set,
but for every edge (i,j) there is an edge (j,i).  That is, the graph appears
to be undirected.  The adjacency matrix in the UF Collection is symmetric).

--------------------------------------------------------------------------------
Citation networks
--------------------------------------------------------------------------------

Name        Type                            Nodes       Edges       Description
cit-HepPh   Directed, Temporal, Labeled        34,546      421,578  Arxiv High Energy Physics paper citation network
cit-HepTh   Directed, Temporal, Labeled        27,770      352,807  Arxiv High Energy Physics paper citation network
cit-Patents Directed, Temporal, Labeled     3,774,768   16,518,948  Citation network among US Patents

--------------------------------------------------------------------------------
Collaboration networks
--------------------------------------------------------------------------------

Name                Type        Nodes       Edges       Description
ca-AstroPh          Undirected  18,772      396,160     Collaboration network of Arxiv Astro Physics
ca-CondMat          Undirected  23,133      186,936     Collaboration network of Arxiv Condensed Matter
ca-GrQc             Undirected   5,242       28,980     Collaboration network of Arxiv General Relativity
ca-HepPh            Undirected  12,008      237,010     Collaboration network of Arxiv High Energy Physics
ca-HepTh            Undirected   9,877       51,971     Collaboration network of Arxiv High Energy Physics Theory

NOTE: the number of edges listed above for the ca-*
graphs counts each edge twice.  In the UF collection,
this is exactly the number of entries in the sparse
adjacency matrix.

--------------------------------------------------------------------------------
Web graphs
--------------------------------------------------------------------------------

Name                Type        Nodes       Edges       Description
web-BerkStan        Directed    685,230     7,600,595   Web graph of Berkeley and Stanford
web-Google          Directed  + 875,713     5,105,039   Web graph from Google
web-NotreDame       Directed    325,729     1,497,134   Web graph of Notre Dame
web-Stanford        Directed    281,903     2,312,497   Web graph of Stanford.edu

--------------------------------------------------------------------------------
Product co-purchasing networks
--------------------------------------------------------------------------------

Name                Type        Nodes       Edges       Description
amazon0302          Directed    262,111     1,234,877   Amazon product co-purchasing network from March 2 2003
amazon0312          Directed    400,727     3,200,440   Amazon product co-purchasing network from March 12 2003
amazon0505          Directed    410,236     3,356,824   Amazon product co-purchasing network from May 5 2003
amazon0601          Directed    403,394     3,387,388   Amazon product co-purchasing network from June 1 2003

--------------------------------------------------------------------------------
Internet peer-to-peer networks
--------------------------------------------------------------------------------

Name                Type        Nodes       Edges       Description
p2p-Gnutella04      Directed  + 10,876      39,994      Gnutella peer to peer network from August 4 2002
p2p-Gnutella05      Directed     8,846      31,839      Gnutella peer to peer network from August 5 2002
p2p-Gnutella06      Directed     8,717      31,525      Gnutella peer to peer network from August 6 2002
p2p-Gnutella08      Directed     6,301      20,777      Gnutella peer to peer network from August 8 2002
p2p-Gnutella09      Directed     8,114      26,013      Gnutella peer to peer network from August 9 2002
p2p-Gnutella24      Directed    26,518      65,369      Gnutella peer to peer network from August 24 2002
p2p-Gnutella25      Directed    22,687      54,705      Gnutella peer to peer network from August 25 2002
p2p-Gnutella30      Directed    36,682      88,328      Gnutella peer to peer network from August 30 2002
p2p-Gnutella31      Directed    62,586     147,892      Gnutella peer to peer network from August 31 2002

--------------------------------------------------------------------------------
Road networks
--------------------------------------------------------------------------------

Name                Type         Nodes       Edges       Description
roadNet-CA          Undirected + 1,965,206   5,533,214   Road network of California
roadNet-PA          Undirected + 1,088,092   3,083,796   Road network of Pennsylvania
roadNet-TX          Undirected + 1,379,917   3,843,320   Road network of Texas

NOTE: each edge is counted twice in the roadNet data above.
The numbers, above, correspond to the number of entries in
the sparse adjacency matrix.

--------------------------------------------------------------------------------
Autonomous systems graphs
--------------------------------------------------------------------------------

Name                Type        Nodes           Edges           Description
as-735
(735 graphs)        Undirected  103-6,474       243-13,233      735 daily instances(graphs) from November 8 1997 to January 2 2000

as-Skitter          Undirected  1,696,415     * 11,095,298      Internet topology graph, from traceroutes run daily in 2005

as-Caida
(122 graphs)        Directed    8,020-26,475    36,406-106,762  The CAIDA AS Relationships Datasets, from January 2004 to November 2007

Oregon-1
(9 graphs)          Undirected  10,670-11,174   22,002-23,409   AS peering information inferred from Oregon route-views between March 31 and May 26 2001

Oregon-2
(9 graphs)          Undirected  10,900-11,461   31,180-32,730   AS peering information inferred from Oregon route-views between March 31 and May 26 2001

NOTE: (*) the SNAP data lists the number of edges just once, for the as-Skitter
and Oregon-* matrices.  This is exactly half the number of edges in the sparse
adjacency matrix in the UF collection.

--------------------------------------------------------------------------------
Signed networks
--------------------------------------------------------------------------------

Name                        Type                Nodes       Edges       Description
soc-sign-epinions           Directed            131,828     841,372     Epinions signed social network
wiki-Elec                   Directed, Bipartite   7,000     100,000     Wikipedia adminship election data (excluded from UF collection)
soc-sign-Slashdot081106     Directed             77,357     516,575     Slashdot Zoo signed social network from November 6 2008
soc-sign-Slashdot090216     Directed             81,871     545,671     Slashdot Zoo signed social network from February 16 2009
soc-sign-Slashdot090221     Directed             82,144     549,202     Slashdot Zoo signed social network from February 21 2009

--------------------------------------------------------------------------------

Blog graphs and Memetracker data

    Memetracker data contains timestamped phrase and link information for news
    media articles and blog posts from 1.5 million different blogs and news
    websites.

    The data spans 10 months from August 2008 till May 2009, with several hundred million documents.
    http://www.memetracker.org/data.html

    (Note that this data has not been imported into the UF Sparse Matrix Collection)

Network types

    * Directed : directed network
    * Undirected : undirected network
    * Bipartite : bipartite network
    * Multigraph : network has multiple edges between a pair of nodes
    * Temporal : for each node/edge we know the time when it appeared in the network
    * Labeled : network contains labels (weights, attributes) on nodes and/or edges

Network statistics

Dataset statistics
Nodes   Number of nodes in the network
Edges   Number of edges in the network
Nodes in largest WCC    Number of nodes in the largest weakly connected component
Edges in largest WCC    Number of edges in the largest weakly connected component
Nodes in largest SCC    Number of nodes in the largest stongly connected component
Edges in largest SCC    Number of edges in the largest stongly connected component
Average clustering coefficient  Average clustering coefficient
Number of triangles     Number of triples of connected nodes (considering the network as undirected)
Fraction of closed triangles    Number of connected triples of nodes / number of (undirected) length 2 paths
Diameter (longest shortest path)    Maximum undirected shortest path length (sampled over 1,000 random nodes)
90-percentile effective diameter    90-th percentile of undirected shortest path length distribution (sampled over 1,000 random nodes)


================================================================================
Note that some versions of these graphs already appear in the UF collection.
Some have similar names:

web-BerkStan        Kamvar/Stanford_Berkeley
                    in SNAP/:       n: 685,230   nz: 7,600,595
                    in Kamvar/      n: 683,446   nz: 7,583,376

                    I obtained the Kamvar/Stanford_Berkeley directly
                    from Sep Kamvar.  It is slightly smaller than the
                    version in SNAP.  It is thus likely that Sep created
                    multiple versions of the graph.

web-Google          appears only in SNAP.

web-NotreDame       Barabasi/NotreDame_www
                    in SNAP/:       n: 325,729   nz: 1,497,134
                    in Barabasi/:   n: same      nz:   929,849

                    The Barabasi/NotreDame_www is an exact copy of
                    the graph of that name in the Pajek data set.
                    The SNAP collection has a different version of this
                    graph, of which SNAP/web-NotreDame is an exact copy.
                    It is possible that Barabasi\'s version of the graph is yet
                    a 3rd version of this graph.

web-Stanford        Kamvar/Stanford (same size and nnz)
                                    n: 281,903   nz:  2,312,497 

                    The SNAP/web-Stanford graph and the Kamvar/Stanford
                    graphs have the same number of nodes and edges.
                    However, they differ in nonzero pattern.

cit-HepTh           Pajek/HEP-th-new is identical to the
                    SNAP/cit-HeptTh graph.  Since it\'s small, I have
                    decided to include both in the collection, to
                    keep the SNAP/ collection complete.
                                    n: 27,770    nz:  352,807

cit-HepPh           appears only in SNAP
ca-HepPh            appears only in SNAP
ca-HepTh            appears only in SNAP

Pajek/HEP-th        appears only in the Pajek collection

cit-Patents         in SNAP         n: 3,774,768   nz: 16,518,948
                    Pajek/patents   n: same        nz: 14,970,767

                    Both of these come from the NBER data.  However,
                    the edges are not the same.  The SNAP/cit-Patents
                    data is a strict superset of the Pajek/patents graph.
                    If A0 = Pajek/patents and A1 = SNAP/cit-Patents,
                    then nnz(A1-A0) = nnz(A1)-nnz(A0) = 1,548,181.
                    All edges in A0 appear in A1.

                    The aux data is not the same.  Pajek/patents contains
                    more auxiliary data for each node.  This data can be
                    used to interpret the SNAP/cit-Patents graph as well,
                    since the nodes match up from one graph to the other.

',

}

