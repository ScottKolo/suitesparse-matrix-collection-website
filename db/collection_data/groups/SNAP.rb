{
    name: 'SNAP',
    num_matrices: '68',
    notes: 'Networks from SNAP (Stanford Network Analysis Platform) Network Data Sets,
Jure Leskovec http://snap.stanford.edu/data/index.html
email jure at cs.stanford.edu

Citation for the SNAP collection:

@misc{snapnets,
    author       = {Jure Leskovec and Andrej Krevl},
    title        = {{SNAP Datasets}: {Stanford} Large Network Dataset Collection},
    howpublished = {\\url{http://snap.stanford.edu/data}},
    month        = jun,
    year         = 2014
    }

The following matrices/graphs were added to the collection in June 2010
by Tim Davis (problem id and name):
--------------------------------------------------------------------------------

2284 SNAP/soc-Epinions1     who-trusts-whom network of Epinions.com
2285 SNAP/soc-LiveJournal1  LiveJournal social network
2286 SNAP/soc-Slashdot0811  Slashdot social network, Nov 2008
2287 SNAP/soc-Slashdot0902  Slashdot social network, Feb 2009
2288 SNAP/wiki-Vote         Wikipedia who-votes-on-whom network
2289 SNAP/email-EuAll       Email network from a EU research institution
2290 SNAP/email-Enron       Email communication network from Enron
2291 SNAP/wiki-Talk         Wikipedia talk (communication) network
2292 SNAP/cit-HepPh         Arxiv High Energy Physics paper citation network
2293 SNAP/cit-HepTh         Arxiv High Energy Physics paper citation network
2294 SNAP/cit-Patents       Citation network among US Patents
2295 SNAP/ca-AstroPh        Collaboration network of Arxiv Astro Physics
2296 SNAP/ca-CondMat        Collaboration network of Arxiv Condensed Matter
2297 SNAP/ca-GrQc           Collaboration network of Arxiv General Relativity
2298 SNAP/ca-HepPh          Collaboration network of Arxiv High Energy Physics
2299 SNAP/ca-HepTh          Collaboration network of Arxiv High Energy Physics Theory
2300 SNAP/web-BerkStan      Web graph of Berkeley and Stanford
2301 SNAP/web-Google        Web graph from Google
2302 SNAP/web-NotreDame     Web graph of Notre Dame
2303 SNAP/web-Stanford      Web graph of Stanford.edu
2304 SNAP/amazon0302        Amazon product co-purchasing network from March 2 2003
2305 SNAP/amazon0312        Amazon product co-purchasing network from March 12 2003
2306 SNAP/amazon0505        Amazon product co-purchasing network from May 5 2003
2307 SNAP/amazon0601        Amazon product co-purchasing network from June 1 2003
2308 SNAP/p2p-Gnutella04    Gnutella peer to peer network from August 4 2002
2309 SNAP/p2p-Gnutella05    Gnutella peer to peer network from August 5 2002
2310 SNAP/p2p-Gnutella06    Gnutella peer to peer network from August 6 2002
2311 SNAP/p2p-Gnutella08    Gnutella peer to peer network from August 8 2002
2312 SNAP/p2p-Gnutella09    Gnutella peer to peer network from August 9 2002
2313 SNAP/p2p-Gnutella24    Gnutella peer to peer network from August 24 2002
2314 SNAP/p2p-Gnutella25    Gnutella peer to peer network from August 25 2002
2315 SNAP/p2p-Gnutella30    Gnutella peer to peer network from August 30 2002
2316 SNAP/p2p-Gnutella31    Gnutella peer to peer network from August 31 2002
2317 SNAP/roadNet-CA        Road network of California
2318 SNAP/roadNet-PA        Road network of Pennsylvania
2319 SNAP/roadNet-TX        Road network of Texas
2320 SNAP/as-735            733 daily instances(graphs) from November 8 1997 to January 2 2000
2321 SNAP/as-Skitter        Internet topology graph, from traceroutes run daily in 2005
2322 SNAP/as-caida          The CAIDA AS Relationships Datasets, from January 2004 to November 2007
2323 SNAP/Oregon-1          AS peering information inferred from Oregon route-views between March 31 and May 26 2001
2324 SNAP/Oregon-2          AS peering information inferred from Oregon route-views between March 31 and May 26 2001
2325 SNAP/soc-sign-epinions         Epinions signed social network
2326 SNAP/soc-sign-Slashdot081106   Slashdot Zoo signed social network from November 6 2008
2327 SNAP/soc-sign-Slashdot090216   Slashdot Zoo signed social network from February 16 2009
2328 SNAP/soc-sign-Slashdot090221   Slashdot Zoo signed social network from February 21 2009

Then the following problems were added in July 2018.  All data and
metadata from the SNAP data set was imported into the SuiteSparse
Matrix Collection.

2777 SNAP/CollegeMsg                Messages on a Facebook-like platform at UC-Irvine
2778 SNAP/com-Amazon                Amazon product network
2779 SNAP/com-DBLP                  DBLP collaboration network
2780 SNAP/com-Friendster            Friendster online social network
2781 SNAP/com-LiveJournal           LiveJournal online social network
2782 SNAP/com-Orkut                 Orkut online social network
2783 SNAP/com-Youtube               Youtube online social network
2784 SNAP/email-Eu-core             E-mail network
2785 SNAP/email-Eu-core-temporal    E-mails between users at a research institution
2786 SNAP/higgs-twitter             twitter messages re: Higgs boson on 4th July 2012.
2787 SNAP/loc-Brightkite            Brightkite location based online social network
2788 SNAP/loc-Gowalla               Gowalla location based online social network
2789 SNAP/soc-Pokec                 Pokec online social network
2790 SNAP/soc-sign-bitcoin-alpha    Bitcoin Alpha web of trust network
2791 SNAP/soc-sign-bitcoin-otc      Bitcoin OTC web of trust network
2792 SNAP/sx-askubuntu              Comments, questions, and answers on Ask Ubuntu
2793 SNAP/sx-mathoverflow           Comments, questions, and answers on Math Overflow
2794 SNAP/sx-stackoverflow          Comments, questions, and answers on Stack Overflow
2795 SNAP/sx-superuser              Comments, questions, and answers on Super User
2796 SNAP/twitter7                  A collection of 476 million tweets collected between June-Dec 2009
2797 SNAP/wiki-RfA                  Wikipedia Requests for Adminship (with text)
2798 SNAP/wiki-talk-temporal        Users editing talk pages on Wikipedia
2799 SNAP/wiki-topcats              Wikipedia hyperlinks (with communities)

The following 13 graphs/networks were in the SNAP data set in July 2018 but
have not yet been imported into the SuiteSparse Matrix Collection.  They may be
added in the future:

    amazon-meta
    ego-Facebook
    ego-Gplus
    ego-Twitter
    gemsec-Deezer
    gemsec-Facebook
    ksc-time-series
    memetracker9
    web-flickr
    web-Reddit
    web-RedditPizzaRequests
    wiki-Elec
    wiki-meta
    wikispeedia

The 2010 description of the SNAP data set gave these categories:

    * Social networks: online social networks, edges represent interactions
      between people

    * Communication networks: email communication networks with edges
      representing communication

    * Citation networks: nodes represent papers, edges represent citations

    * Collaboration networks: nodes represent scientists, edges represent
      collaborations (co-authoring a paper)

    * Web graphs: nodes represent webpages and edges are hyperlinks

    * Blog and Memetracker graphs: nodes represent time stamped blog posts,
      edges are hyperlinks [revised below]

    * Amazon networks : nodes represent products and edges link commonly
      co-purchased products

    * Internet networks : nodes represent computers and edges communication

    * Road networks : nodes represent intersections and edges roads connecting
      the intersections

    * Autonomous systems : graphs of the internet

    * Signed networks : networks with positive and negative edges (friend/foe,
      trust/distrust)

By July 2018, the following categories had been added:

    * Networks with ground-truth communities : ground-truth network communities
      in social and information networks

    * Location-based online social networks : Social networks with geographic
      check-ins

    * Wikipedia networks, articles, and metadata : Talk, editing, voting, and
      article data from Wikipedia

    * Temporal networks : networks where edges have timestamps

    * Twitter and Memetracker : Memetracker phrases, links and 467 million
      Tweets

    * Online communities : Data from online communities such as Reddit and Flickr

    * Online reviews : Data from online review systems such as BeerAdvocate and
      Amazon

================================================================================
Note that some versions of these graphs already appear in the SuiteSparse
collection.  Some have similar names:

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

NOTE: the 2018 GraphChallenge data sets include many of these matrices,
at https://graphchallenge.mit.edu.  In the GraphChallenge data set,
the graphs have all been made symmetric, and the diagonal entries
(self edges) have been removed.  The meta data has been preserved
in the SuiteSparse Matrix Collection, but does not appear in the
2018 GraphChallenge data sets.  Finally, the node ordering differs
between the two; the SuiteSparse ordering either matches the SNAP
node ids 1:n or 0:n-1, or when the graph is a subset of node ids,
the node number is provided here in a Problem.aux.nodeid, or .userid
component of the problem.  This information is not provided in the
GraphChallenge data sets.
',

}

