{
    name: 'Pajek',
    num_matrices: '76',
    notes: 'Pajek data sets, V. Batagelj and A. Mrvar.

Pajek data sets, from http://vlado.fmf.uni-lj.si/pub/networks/data/,
Vladimir Batagelj and Andrej Mrvar (2006): Pajek datasets.  If the source of
the data set is not specified otherwise,  these data sets are licensed under a
Creative Commons Attribution-NonCommercial-ShareAlike 2.5 License.

Converted to sparse adjacency matrix format by Tim Davis, October 2006.
A(i,j) is the edge from node i to node j in the graph.  If a graph is not
listed as weighted, and yet has non-binary entries, then the entry a(i,j)
reflects the number of edges (i,j) in the original data (the graph is a
multigraph).  In some cases, it was clear that the extra entries were
duplicates, and the graph should not be a multigraph (problems GD97, EAT_RS,
and patents).

All data was converted without loss of information, except where intentional.
Details are given below.

The largest graph is "patents", with over 3.7 million nodes and nearly
15 million entries.

"Pajek" is Slovenian for "spider" and is roughly pronounced "Pie yeck".

The Pajek networks are all 1-based (nodes are numbered starting at node 1).
Some networks when included in the Pajek Dataset were converted from 0-based
to 1-based.  This was done by renaming node 0 as a new node n, and leaving
all other nodes unchanged.  This differs from the MATLAB convention, which
is to add 1 to all row/column indices.  This conversion was left as-is
(networks: USpowerGrid, EPA, and Kleinberg) when included in the UF
Sparse Matrix Collection.

Remember that in MATLAB, A(i,:) is slow to compute; A(:,i) is much faster.  If
you want row i of a sparse matrix, access the ith column of the transpose
instead.


================================================================================
Summary:
================================================================================

CSphd:		PhD\'s in computer science
		1882-by-1882 with 1740 nonzeros
		kind: directed graph with auxiliary node data

California:	Kleinberg\'s web search of "California"
		9664-by-9664 with 16150 nonzeros
		kind: directed graph

Cities:		www.lboro.ac.uk/gawc, data set 6
		55-by-46 with 1342 nonzeros
		kind: weighted bipartite graph with auxiliary node data

EAT_RS:		Edinburgh Associative Thesaurus (response-stimulus)
		23219-by-23219 with 325592 nonzeros
		kind: directed weighted graph

EAT_SR:		Edinburgh Associative Thesaurus (stimulus-response)
		23219-by-23219 with 325589 nonzeros
		kind: directed weighted graph

EPA:		Kleinberg, pages linking to www.epa.gov
		4772-by-4772 with 8965 nonzeros
		kind: directed graph

EVA:		EVA, corporate inter-relationships
		8497-by-8497 with 6726 nonzeros
		kind: directed graph

Erdos02:	Erdos collaboration network
		6927-by-6927 with 16944 nonzeros
		kind: undirected graph

Erdos971:	Erdos collaboration network
		472-by-472 with 2628 nonzeros
		kind: undirected graph

Erdos972:	Erdos collaboration network
		5488-by-5488 with 14170 nonzeros
		kind: undirected graph with auxiliary node data

Erdos981:	Erdos collaboration network
		485-by-485 with 2762 nonzeros
		kind: undirected graph

Erdos982:	Erdos collaboration network
		5822-by-5822 with 14750 nonzeros
		kind: undirected graph with auxiliary node data

Erdos991:	Erdos collaboration network
		492-by-492 with 2834 nonzeros
		kind: undirected graph

Erdos992:	Erdos collaboration network
		6100-by-6100 with 15030 nonzeros
		kind: undirected graph with auxiliary node data

FA:		USF Free (word) Association Norms
		10617-by-10617 with 72176 nonzeros
		kind: directed weighted graph with auxiliary node data

GD00_a:		Graph Drawing contest 2000
		352-by-352 with 458 nonzeros
		kind: directed graph

GD00_c:		Graph Drawing contest 2000
		638-by-638 with 1041 nonzeros
		kind: directed multigraph

GD01_A:		Graph Drawing contest 2001
		953-by-953 with 645 nonzeros
		kind: directed multigraph

GD01_a:		Graph Drawing contest 2000
		311-by-311 with 645 nonzeros
		kind: directed weighted graph

GD01_b:		Graph Drawing contest 2001
		18-by-18 with 37 nonzeros
		kind: directed graph

GD01_c:		Graph Drawing contest 2001
		33-by-33 with 135 nonzeros
		kind: directed multigraph with auxiliary node data

GD02_a:		Graph Drawing contest 2002
		23-by-23 with 87 nonzeros
		kind: directed graph

GD02_b:		Graph Drawing contest 2002
		80-by-80 with 232 nonzeros
		kind: directed graph

GD06_Java:	Graph Drawing contest 2006
		1538-by-1538 with 8032 nonzeros
		kind: directed graph

GD06_theory:	Graph Drawing contest 2006
		101-by-101 with 380 nonzeros
		kind: undirected graph

GD95_a:		Graph Drawing contest 1995
		36-by-36 with 57 nonzeros
		kind: directed graph

GD95_b:		Graph Drawing contest 1995
		73-by-73 with 96 nonzeros
		kind: directed graph

GD95_c:		Graph Drawing contest 1995
		62-by-62 with 287 nonzeros
		kind: directed graph

GD96_a:		Graph Drawing contest 1996
		1096-by-1096 with 1677 nonzeros
		kind: directed multigraph

GD96_b:		Graph Drawing contest 1996
		111-by-111 with 193 nonzeros
		kind: directed graph

GD96_c:		Graph Drawing contest 1996
		65-by-65 with 250 nonzeros
		kind: undirected graph

GD96_d:		Graph Drawing contest 1996
		180-by-180 with 229 nonzeros
		kind: directed graph

GD97_a:		Graph Drawing contest 1997
		84-by-84 with 332 nonzeros
		kind: directed graph

GD97_b:		Graph Drawing contest 1997
		47-by-47 with 264 nonzeros
		kind: undirected weighted graph

GD97_c:		Graph Drawing contest 1997
		452-by-452 with 460 nonzeros
		kind: directed multigraph

GD98_a:		Graph Drawing contest 1998
		38-by-38 with 50 nonzeros
		kind: directed graph

GD98_b:		Graph Drawing contest 1998
		121-by-121 with 207 nonzeros
		kind: directed graph

GD98_c:		Graph Drawing contest 1998
		112-by-112 with 336 nonzeros
		kind: undirected graph

GD99_b:		Graph Drawing contest 1999
		64-by-64 with 252 nonzeros
		kind: undirected multigraph

GD99_c:		Graph Drawing contest 1999
		105-by-105 with 149 nonzeros
		kind: directed graph with auxiliary node data

GlossGT:	graph and digraph glossary
		72-by-72 with 122 nonzeros
		kind: directed graph

HEP-th-new:	High Energy Physics literature
		27770-by-27770 with 352807 nonzeros
		kind: directed graph with auxiliary node data

HEP-th:		High Energy Physics literature
		27240-by-27240 with 342437 nonzeros
		kind: directed graph

IMDB:		IMDB movie/actor network, www.imdb.com
		428440-by-896308 with 3782463 nonzeros
		kind: bipartite graph with auxiliary node data

Journals:	Slovenian journals 1999-2000
		124-by-124 with 12068 nonzeros
		kind: undirected weighted graph with auxiliary node data

Kohonen:	Kohonen citation network
		4470-by-4470 with 12731 nonzeros
		kind: directed graph with auxiliary node data

Lederberg:	Lederberg citation network
		8843-by-8843 with 41601 nonzeros
		kind: directed multigraph with auxiliary node data

NotreDame_actors:	Barabasi\'s actor network (of www.imdb.com)
		392400-by-127823 with 1470404 nonzeros
		kind: bipartite multigraph

NotreDame_www:	Barabasi\'s web page network of nd.edu
		325729-by-325729 with 929849 nonzeros
		kind: directed graph

NotreDame_yeast:	Barabasi\'s yeast protein interaction
		2114-by-2114 with 4480 nonzeros
		kind: undirected graph

ODLIS:		online dictionary of library & inf. sci
		2909-by-2909 with 18246 nonzeros
		kind: directed multigraph

Ragusa16:	Ragusa set
		24-by-24 with 81 nonzeros
		kind: directed weighted graph

Ragusa18:	Ragusa set
		23-by-23 with 64 nonzeros
		kind: directed weighted graph

Reuters911:	Reuters news, Sept 11 to Nov 15, 2001
		13332-by-13332 with 296076 nonzeros
		kind: temporal undirected weighted graph

Roget:		Roget\'s Thesaurus, 1879
		1022-by-1022 with 5075 nonzeros
		kind: directed graph

Sandi_authors:	Klavzar bibliography
		86-by-86 with 248 nonzeros
		kind: undirected weighted graph

Sandi_sandi:	Klavzar bibliography
		314-by-360 with 613 nonzeros
		kind: bipartite graph

SciMet:		SciMet citation network
		3084-by-3084 with 10413 nonzeros
		kind: directed multigraph with auxiliary node data

SmaGri:		SmaGri citation network
		1059-by-1059 with 4919 nonzeros
		kind: directed multigraph with auxiliary node data

SmallW:		SmallW citation network
		396-by-396 with 994 nonzeros
		kind: directed multigraph with auxiliary node data

Stranke94:	Slovene Parliamentary Parties 1994
		10-by-10 with 90 nonzeros
		kind: undirected weighted graph

Tina_AskCal:	student govt, Univ. Ljubljana, 1992 (ask opin., recall)
		11-by-11 with 29 nonzeros
		kind: directed graph

Tina_AskCog:	student govt, Univ. Ljubljana, 1992 (ask, recognized)
		11-by-11 with 36 nonzeros
		kind: directed graph

Tina_DisCal:	student govt, Univ. Ljubljana, 1992 (discuss, recall)
		11-by-11 with 41 nonzeros
		kind: directed graph

Tina_DisCog:	student govt, Univ. Ljubljana, 1992 (discuss, recog.)
		11-by-11 with 48 nonzeros
		kind: directed graph

USAir97:	US Air flights, 1997
		332-by-332 with 4252 nonzeros
		kind: undirected weighted graph

USpowerGrid:	US power grid
		4941-by-4941 with 13188 nonzeros
		kind: undirected multigraph

Wordnet3:	Wordnet3 dictionary network
		82670-by-82670 with 132964 nonzeros
		kind: directed weighted graph with auxiliary node data

WorldCities:	world city network
		315-by-100 with 7518 nonzeros
		kind: weighted bipartite graph with auxiliary node data

Zewail:		Zewail citation network
		6752-by-6752 with 54233 nonzeros
		kind: directed multigraph with auxiliary node data

dictionary28:	dictionary
		52652-by-52652 with 178076 nonzeros
		kind: undirected graph

divorce:	divorce laws in the 50 US states
		50-by-9 with 225 nonzeros
		kind: bipartite graph

foldoc:		free on-line dictionary of computing
		13356-by-13356 with 120238 nonzeros
		kind: directed weighted graph

football:	World Soccer, Paris 1998
		35-by-35 with 118 nonzeros
		kind: directed weighted graph

geom:		collaboration in computational geometry
		7343-by-7343 with 23796 nonzeros
		kind: undirected weighted graph

internet:	connectivity of internet routers
		124651-by-124651 with 207214 nonzeros
		kind: directed weighted graph

patents:	NBER US Patent Citations, 1963-1999, cites 1975-1999
		3774768-by-3774768 with 14970767 nonzeros
		kind: directed graph with auxiliary node data

patents_main:	main NBER US Patent Citations, 1963-1999, cites 1975-1999
		240547-by-240547 with 560943 nonzeros
		kind: directed weighted graph with auxiliary node data

yeast:		yeast protein interaction network
		2361-by-2361 with 13828 nonzeros
		kind: undirected graph with auxiliary node data



================================================================================
==> Citations/Cite2001.txt <==
================================================================================

Citation networks

Graph Drawing 2001 Contest - Graph A Graph Drawing 2001

Contest task description for Graph A.  Graph A in Pajek\'s format.  Selected
citation networks from Garfield\'s collection Citation networks in Pajek\'s
format obtained from the Garfield\'s collection of citation network datasets
produced using HistCite software. All of these networks are the result of
searches in the WebofScience and are used with the permission of ISI of
Philadelphia. Please acknowledge this when publishing results based on these
data.

    SmallW: Papers that cite S Milgram\'s 1967 Psychology Today paper or use
    Small World in title, Tue Jul 23 13:35:11 2002

    SmaGri: Citations to Small & Griffith and Descendants, Thu Nov 8 10:40:55
    2001        

    SciMet: Articles from or citing Scientometrics, 1978-2000, Wed Jun
    12 16:39:51 2002   

    Kohonen: Articles with topic "self-organizing maps"
    or references to "Kohonen T", Tue Jun 18 10:39:51 2002

    Zewail: Articles citing and by AH Zewail, 1970-2002, Wed Jul 31 15:46:38
    2002         

    Lederberg: Articles by and citing J Lederberg, 1945-2002, Wed Jul 31
    13:40:22 2002       

Some references

    * Batagelj V.: Some Mathematics of Network Analysis. Network Seminar,
      Department of Sociology, University of Pittsburgh, January 21, 1991.

    * Batagelj V., Mrvar A.: Graph Drawing Contest 2001 Layouts.

    * Garfield E, Sher IH, and Torpie RJ.: The Use of Citation Data in Writing
      the History of Science. Philadelphia: The Institute for Scientific
      Information, December 1964.

    * Garfield E.: From Computational Linguistics to Algorithmic
      Historiography, paper presented at the Symposium in Honor of Casimir
      Borkowski at the University of Pittsburgh School of Information Sciences,
      September 19, 2001.

    * Hummon N.P., Doreian P.: Connectivity in a Citation Network: The
      Development of DNA Theory. Social Networks, 11(1989) 39-63.

Network Data, Pajek, Vlado


================================================================================
==> Cities/Url.txt <==
================================================================================

http://www.lboro.ac.uk/gawc/data.html

World City Relation Data

This is the raison d\'être of GaWC. For an introduction, see A Brief Guide to
Quantitative Data Collection at GaWC, 1997-2001.

INVITATION

World city researchers with relational data on world cities are encouraged to
post it here. Depositors may apply their own protocol for use by others.
(Contact p.j.taylor@lboro.ac.uk) PROTOCOL for using GaWC data

As part of our mission to promote the study of non-state relations we wish to
encourage people to use the data posted here in their research and teaching.
However, we do ask that, as a matter of courtesy bordering on ethics, the
research project and the information gatherers are properly acknowledged along
with GaWC itself. Each data set will have a statement as to whom to acknowledge
and we ask that this be reproduced in every public use of the data.



Data Set 1: US Cities: Surrogate Measures of Relations, 1990 (T.R. Longcore, C.
McWilliams and P.J. Taylor)

Data Set 2: London and New York: Surrogate Measures of Relations, 1997

Data Set 3: Randstad Cities: Surrogate Measures of Relations, 1970-95 (A.M.
Beerda)

Data Set 4: London\'s Relations with other Cities Using Producer Service Office
Geographies (J.V. Beaverstock, R.G. Smith and P.J. Taylor)

Data Set 5: US Cities: Law Firm Office Geographies, 1998 (J.V. Beaverstock,
R.G. Smith and P.J. Taylor)

Data Set 6: World Cities and Global Firms (P.J. Taylor and D.R.F. Walker)

Data Set 7: Inter-City Matrices (P.J. Taylor and D.R.F. Walker)

Data Set 8: World Cities: Regional Dimensions (P.J. Taylor, D.R.F. Walker and
M. Hoyler)

Data Set 9: Cities Mentioned in Advertisements in The Economist (May 2000 -
January 2001) (P.J. Taylor)

Data Set 10: The Relative Centrality of Cities Based upon Air Passenger Travel,
1977-1997 (M. Timberlake and D.A. Smith with K.-H. Shin)

Data Set 11: World City Network: The Basic Data (P.J. Taylor and G. Catalano)

Data Set 12: Global Network Service Connectivities for 315 Cities in 2000 (P.J.
Taylor)


DATA TOOLS

Data Tool 1: Macro for Calculating Connectivities (max 254 cities x 255 firms)
 (E.C. Rossi and C.C.C. Rossi)

Data Tool 2: Macro for Calculating Connectivities (max 1100 cities x 255
 firms) (R. Aranya)



    World Cities and Global Firms

    P.J. Taylor and D.R.F. Walker

These data consist of the distribution of offices for 46 \'global\' advanced
producer service firms over 55 world cities. Global firms are defined by having
offices in at least 15 different cities. World cities are from the GaWC
inventory of world cities (see GaWC Research Bulletin 6). Service values for a
firm in a city are given as 3, 2, 1 or 0 as defined in Data Set 4.

These data are an experimental set of data derived from Data Set 4 (43 of the
firms qualify as global) but with three additional law firms added which do not
have London offices. For publications that make use of these data, see GaWC
Research Bulletin 13 and GaWC Research Bulletin 17.


Key to Data Set 6:

ADVANCED PRODUCER SERVICE FIRMS (SECTOR, TABLE CODE AND FIRM)

Accountancy

KP KPMG
CL Coopers & Lybrand
EY Ernst & Young International
AA Arthur Andersen
PW Price Waterhouse

Advertising

GR Grey Worldwide
DM DMB&B (MacManus Group)
LH Lowe Howard -Spink
SS Saatchi and Saatchi
TH JWT (Thompson)
OM Ogilvy & Mather Direct Worldwide
DE Dentsu
YR Young & Rubicam
TM TMP
PU Publicis
AM Abbott Mead Vickers (BBDO)

Banking and Finance

HS HSBC
BA Barclays
NW NatWest Group
SC Standard Chartered Group
CR Creditanstalt-Bankverein
DR Dresdner Bank Group
MO J P Morgan
PA Compagnie Financière de Paribas SA
CS Credit Suisse
BB BBV Group
BT Banker\'s Trust
UB UBS
AB ABN-AMRO
CB Citibank

Law

BM Baker & McKenzie
WC White & Case
LL Leboeuf, Lamb, Greene & MacRae
CO Coudert Brothers
SK Skadden Arps
BC Bryan Cave
DW Dorsey & Whitney
GJ Graham & James
HH Hogan & Hartson
JD Jones, Day, Reavis & Pogue
MC Miller, Canfield, Paddock & Stone
SQ Squire, Sanders & Dempsey
WE Wilson, Elser, Moskowitz, Edelman & Dicker
AO Allen & Overy
CC Clifford Chance
FF Freshfields

As per our data protocol, the following acknowledgement should accompany any
public use of the data:

ACKNOWLEDGEMENT: The data used is from Data Set 6 from the GaWC Study Group and
Network (http://www.lboro.ac.uk/gawc/). It was created by P.J. Taylor and
D.R.F. Walker as part of their project "World City Network: Data Matrix
Construction and Analysis" and is based on primary data collected by J.V.
Beaverstock, R.G. Smith and P.J. Taylor (ESRC project "The Geographical Scope
of London as a World City" (R000222050)).


================================================================================
==> Days/Days.txt <==
================================================================================

Pajek datasets

Reuters terror news network (NOTE: renamed Reuters911 for UF sparse collection)

Dataset days

Description

days.net undirected temporal network with 13332 vertices and 243447 edges.



Days, DaysAll.  Background

Reuters terror news network Days.net in Pajek\'s format obtained from the CRA
networks produced by Steve Corman and Kevin Dooley at Arizona State University.
Please acknowledge this when publishing results based on these data.

The Reuters terror news network is based on all stories released during 66
consecutive days by the news agency Reuters concerning the September 11 attack
on the U.S., beginning at 9:00 AM EST 9/11/01. The vertices of a network are
words (terms); there is an edge between two words iff they appear in the same
text unit (sentence). The weight of an edge is its frequency. The network has n
= 13332 vertices (different words in the news) and m = 243447 edges, 50859 with
value larger than 1. There are no loops in the network.

The network DaysAll.net contains the main connected component of the network
obtained by transforming the Reuters terror news network into a combined
network for all 66 days (union of all time points). It has 13308 vertices.

The Reuters terror news network was used as a case network for the Viszards
visualization session on the Sunbelt XXII International Sunbelt Social Network
Conference, New Orleans, USA, 13-17. February 2002. 

History

   1. 5-12. Dec 2001, networks constructed by S. Corman and his group
   
   2. December 2001: CRA data transformed in Pajek format by V. Batagelj.

References

   1. Steven R. Corman, Timothy Kuhn, Robert D. Mcphee and Kevin J. Dooley
   (2002): Studying Complex Discursive Systems: Centering Resonance Analysis of
   Communication. (PDF)

   2. Crawdad Technologies

   3. Batagelj, V., & Mrvar, A.  (2003): A density based approaches to network
   analysis: Analysis of Reuters terror news network, Ninth Annual ACM SIGKDD,
   Washington, D.C. (PDF); ( SVG)

   4. Jeffrey C. Johnson and Lothar Krempel (2004): Network Visualization: The
   "Bush Team" in Reuters News Ticker 9/11-11/15/01. The Journal of Social
   Structure\'s, Vol. 5, No. 1. ( HTML)

Pajek Data; 20. April 2006 / 27. January 2004

-------------------------------------------------------------------------------
When converted to a sparse adjacency matrix for the UF Sparse Matrix
Collection, Day{i} is the graph of the ith day.  The diagonal entry
Day{i}(k,k) is 1 if word k appears in any news on the ith day.  Note
that it may not appear in conjunction with other words in the same
sentence on that day.  The sum of nnz(tril(Day{i})) for i=1:66 is 243,447.
The overall matrix A is the sum of the Day{i} matrices.  A(i,j) is the number
of times words i and j appear in same sentence (for i not equal to j).  A(k,k)
is the number of days the word k appears in any news report.
Note that this network has been renamed to Reuters911 here.


================================================================================
==> EAT/EAT.txt <==
================================================================================


Pajek datasets EAT The Edinburgh Associative Thesaurus

Dataset   eat

Description

eatRS.net directed network with 23219 vertices and 325624 arcs (564 loops);
stimulus X is associated with response Y N times.  eatSR.net directed network
with 23219 vertices and 325589 arcs (564 loops); response X is associated with
stimulus Y N times.

It seems that the SR network is incomplete and that it should be the inverse of
RS network.



EAT response-stimulus (ZIP, 1321K) EAT stimulus-response (ZIP, 1306K)
Background

The Edinburgh Associative Thesaurus (EAT) is a set of word association norms
showing the counts of word association as collected from subjects. This is not
a developed semantic network such as WordNet (3), but empirical association
data.

The traditional way to collect word association norms is to show or say a word
to several people and ask them to say the word which first comes to their minds
upon receiving the stimulus. The link established between the stimulus and the
response is not semantically labelled (e.g. as synonym, antonym or by a case
relation) and can only be regarded as an association.

The Edinburgh association norms were collected by growing the network from a
nucleus set of words. Responses were collected to words in this nucleus set,
then these responses were used to obtain further responses, and so on. In fact
the cycle was repeated about three times since by then the number of different
responses was so large that they could not be re-used as stimuli. Data
collection stopped when 8400 stimulus words had been used. Each stimulus word
was presented to 100 different subjects, each of whom received 100 words. This
gave rise to a total of 55732 nodes in the Thesaurus network.

The subjects were mostly undergraduates from a wide variety of British
universities. The age range of the subjects was from 17 to 22 with a mode of
19. The sex distribution was 64 per cent male and 36 per cent female. The data
was collected between June 1968 and May 1971.

The database consists of two files. The SR (stimulus-response) file, and the RS
(response-stimulus) file. Where words have been truncated to 19 characters to
save space the per cent character (%) has been placed as the 20th.

The EAT here is that included in the MRC Psycholinguistic Database (4), for use
with the other measures available there.  EAT Data Collection Procedure (1)
Stimulus words

Since the objective was to obtain a reasonably large complete mapping of the
associative network for a large set of words, a systematic procedure of
\'growing\' the network from a small nucleus was followed. At first responses
were obtained from this nucleus set, then these responses were used as stimuli
to obtain further responses, and so on. In fact, this cycle was repeated about
three times, since by then the number of different responses was so large that
they could not all be re-used as stimuli.

The nucleus set was derived from (a) the 200 stimuli used in the Palermo and
Jenkins (1964) normq (b) the 1,000 most frequent words of the Thorndike and
Lorge (1944) word frequency count and (c) the basic English vocabulary of Ogden
(1954).

Data collection was stopped when 8,400 stimulus words had been used. Only a
minimal amount of selection of stimuli was applied in each cycle of the data
collection. Effectively all responses which were English words or meaningful
verbal units were included, including some phrasal forms and numerals. The data
cover a wide range of grammatical form classes and inflexional forms.
Procedure

Each stimulus word was presented to 100 different subjects. Each subject
recieved a computer-printed sheet with 100 stimuli in randomised arrangement
(to minimize priming effects). The total contribution of each subject was thus
100 responses. The verbal environment of each word for each subject was
different. The instructions asked the subject to write down against each
stimulus the first word it made him think of, working as quickly as possible.
the total time spent on this task was measured, and most subjects completed the
sheet in five to ten minutes.

Most of the data was collected in a classroom setting under supervision. Sheets
which had more than 25 percent blank responses were rejected and fresh data was
collected.

History

   1. Original EAT: George Kiss, Christine Armstrong, Robert Milroy and J.R.I.
   Piper (collected between June 1968 and May 1971).

   2. MRC Psycholinguistic Database Version modified by: Max Coltheart, S.
   James, J. Ramshaw, B.M. Philip, B. Reid, J. Benyon-Tinker and E. Doctor;
   made available by: Philip Quinlan.

   3. The present version was re-structured and documented by Michael Wilson at
   the Rutherford Appleton Laboratory in 1988 (2).

   4. transformed in Pajek format: V. Batagelj, 31. July 2003.


References

   1. Kiss, G.R., Armstrong, C., Milroy, R., and Piper, J. (1973) An
   associative thesaurus of English and its computer analysis. In Aitken, A.J.,
   Bailey, R.W. and Hamilton-Smith, N. (Eds.), The Computer and Literary
   Studies. Edinburgh: University Press.

   2. The present version of The Edinburgh Associative Thesaurus (ZIP, 2.7M)

   3. WordNet

   4. MRC Psycholinguistic Database

   5. Coltheart, M. (1981) MRC Psycholinguistic Database. Quarterly Journal of
   Experimental Psychology, 3A, 497-505.

   6. MRC Psycholinguistic Database 2

Pajek Data; 31. July 2003

-------------------------------------------------------------------------------
NOTE regarding conversion for UF sparse matrix collection: in the original data
there are 325,624 weighted edges.  Of those only 32 edges are duplicates, and  
all of them have identical edge weights as the edges they are duplicates of    
These extraneous edges have been removed, since this this appears to be a      
graph, not a multigraph.                                                       


================================================================================
==> EVA/EVA.txt <==
================================================================================

Pajek datasets

EVA Extraction, Visualization & Analysis of corporate
inter-relationships

Dataset   EVA

Description

EVA.net directed network with 8343 vertices and 6726 arcs.



EVA.net (ZIP, 204K); included also original files names.txt and ownership.txt.
Background

EVA / Denali is a multidisciplinary research project combining information
extraction, information visualization, and social network analysis techniques
to bring greater transparency to the public disclosure of inter-relationships
between corporations. The project is described in the paper [1].

Abstract: We present EVA, a prototype system for extracting, visualizing, and
analyzing corporate ownership information as a social network. Using
probabilistic information retrieval and extraction techniques, we automatically
extract ownership relationships from heterogeneous sources of online text,
including corporate annual reports (10-Ks) filed with the U.S. Securities and
Exchange Commission (SEC). A browser-based visualization interface allows users
to query the relationship database and explore large networks of companies.
Applying the system and methodology to the telecommunications and media
industries, we construct an ownership network with 6,726 relationships among
8,343 companies. Analysis reveals a highly clustered network, with over 50% of
all companies connected to one another in a single component. Furthermore,
ownership activity is highly skewed: 90% of companies are involved in no more
than one relationship, but the top ten companies are parents for over 24% of
all relationships. We are also able to identify the most influential companies
in the network using social network analysis metrics such as degree,
betweenness, cutpoints, and cliques. We believe this methodology and tool can
aid government regulators, policy researchers, and the general public to
interpret complex corporate ownership structures, thereby bringing greater
transparency to the public disclosure of corporate inter-relationships.

Note that we do not have ownership relationships for all companies, so there
will be companies without links.

An arc (X,Y) from company X to company Y exists in the network if in the
company X is an owner of company Y.

Copyright 2002 by Denali Project. If you use this dataset in your research,
please use the citation to paper [1] as the source of the data.

"Denali" is the Native American name for the tallest peak in North America. It
means "the Great One."

If you have any questions, please contact: John Chuang, Mike Gebbie, Gabe
Lucas, Kim Norlen. 

History

   1. 2002 collection of original data by the EVA group; 2. March 6, 2004:
   original data transformed into Pajek format EVA.net by V. Batagelj.

References

   1. Kim Norlen, Gabriel Lucas, Mike Gebbie, and John Chuang. EVA: Extraction,
   Visualization and Analysis of the Telecommunications and Media Ownership
   Network. Proceedings of International Telecommunications Society 14th
   Biennial Conference, Seoul Korea, August 2002. (paper berkeley / local;
   slides berkeley / local)

Pajek Data; 6. March 2004


================================================================================
==> Foldoc/Foldoc.txt <==
================================================================================

Pajek datasets FOLDOC Free On-line Dictionary of Computing

Dataset   Foldoc

Description

foldoc.net valued directed network with 13380 vertices and 120700 arcs, value
is the multiplicity of arc.



foldoc.net (ZIP, 517K) Background

FOLDOC is a searchable dictionary of acronyms, jargon, programming languages,
tools, architecture, operating systems, networking, theory, conventions,
standards, mathematics, telecoms, electronics, institutions, companies,
projects, products, history, in fact anything to do with computing.

The dictionary has been growing since 1985 and now contains over 13000
definitions totalling nearly five megabytes of text. Entries are
cross-referenced to each other and to related resources elsewhere on the net.

An arc (X,Y) from term X to term Y exists in the network iff in the FOLDOC
dictionary the term Y is used to describe the meaning of term X.

Copyright 1993 by Denis Howe. Permission is granted to copy, distribute and/or
modify the FOLDOC dictionary under the terms of the GNU Free Documentation
License, Version 1.1 or any later version published by the Free Software
Foundation.

Please refer to the dictionary as "The Free On-line Dictionary of Computing,
http://www.foldoc.org/, Editor Denis Howe" or similar. 

History

   1. FOLDOC started in 1985 by Denis Howe;

   2. in 1990 put on FTP, other sources included;

   3. from 1994 available on the WWW, hundreds of contributors;

   4. February/June 2002: Foldoc.net transformed in Pajek format and \'cleaned\'
by V. Batagelj and A. Mrvar.

References

   1. Denis Howe, Editor: FOLDOC (2002): Free on-line dictionary of computing.

   2. V. Batagelj, A. Mrvar, M. Zavešnik: Network analysis of texts. Language
Technologies 2002, Ljubljana, 14 - 15th October 2002, p. 143-148.

   3. V. Batagelj, A. Mrvar, M. Zavešnik: Network analysis of dictionaries.
Language Technologies 2002, Ljubljana, 14 - 15th October 2002, p. 135-142.


Pajek Data; 30. January 2004


================================================================================
==> Football/Football.txt <==
================================================================================

Pajek datasets World Soccer Data Paris 1998

Dataset   Football

Description

football.net - valued network with 35 vertices



complete dataset

Background

Our network example describes the 22 soccer teams which participated in the
World Championship in Paris, 1998.

Players of the national team often have contracts in other countries. This
constitutes a players market where national teams export players to other
countries. Members of the 22 teams had contracts in altogether 35 countries.

Counting which team exports how many players to which country can be described
with a valued, asymmetric graph. The graph is highly unsymmetric: some
countries only export players, some countries are only importers. 

History

   1. Data collected by Lothar Krempel, October 5, 1999

   2. Transformed in Pajek format by V. Batagelj, February 9, 2001.

References

   1. Dagstuhl seminar: Link Analysis and Visualization, Dagstuhl 1-6. July
2001

Pajek Data; 21. September 2005


================================================================================
==> Geom/Geom.txt <==
================================================================================


Pajek datasets Geom Collaboration network in computational geometry

Dataset   Geom

Description

Geom.net valued undirected network with 7343 vertices and 11898 edges; author X
wrote a joint work with author Y; value is the number of joint works.



Geom.net (ZIP, 139K)

Background

The network Geom.net is based on the file geombib.bib that contains
Computational Geometry Database, version February 2002.

The authors collaboration network in computational geometry was produced from
the BibTeX bibliography [Beebe, 2002] obtained from the Computational Geometry
Database geombib, version February 2002 [Jones, 2002].

Two authors are linked with an edge, iff they wrote a common work (paper, book,
...). The value of an edge is the number of common works. Using a simple
program written in programming language Python, the BibTeX data were
transformed into the corresponding network, and output to the file in Pajek
format.

The obtained network has 9072 vertices (authors) and 22577 edges (common papers
or books) / 13567 edges as a simple network - multiple edges between a pair of
authors are replaced with a single edge.

The problem with the obtained network is that, because of non standardized
writing of the author\'s name, it contains several vertices corresponding to the
same author. For example:

    R.S. Drysdale, Robert L. Drysdale, Robert L. Scot Drysdale, R.L. Drysdale,
S. Drysdale, R. Drysdale, and R.L.S. Drysdale;

or:

    Pankaj K. Agarwal, P. Agarwal, Pankaj Agarwal, and P.K. Agarwal

that are easy to guess; but an \'insider\' information is needed to know that
Otfried Schwarzkopf and Otfried Cheong are the same person. Also, no provision
is made in the database to discern two persons with the same name. We manually
produced the name equivalence partition and then shrank (in Pajek) the network
according to it.

The reduced simple network contains 7343 vertices and 11898 edges. It is a
sparse network - its average degree is 2m/n = 3.24.

History

   1. Computational Geometry Database started in 1986 by merging two lists of
references - one compiled by Edelsbrunner and van Leeuwen and the other by
Guibas and Stolfi;

   2. Computational Geometry Database, February 2002 Edition;

   3. March-April 2002: Geom.bib transformed in Pajek format and \'cleaned\' by
V. Batagelj and M. Zaveršnik.

References

   1. Beebe, N.H.F. (2002): Nelson H.F. Beebe\'s Bibliographies Page.

   2. Jones, B., Computational Geometry Database, February 2002; FTP / HTTP

Pajek Data; 27. January 2004


================================================================================
==> GlossGT/GlossGT.txt <==
================================================================================

Pajek datasets Graph and Digraph Glossary

Dataset   glossGT

Description

glossGT.net mixed network with 72 vertices and 114 arcs and 4 edges; word X is
related to word Y.



glossTG.paj (4K)

Background

The network GlossGT.net is based on the file glossary.html containing Bill
Cherowitzo\'s Graph and Digraph Glossary.  An arc (X,Y) from term X to term Y
exists in the network iff in the Graph and Digraph Glossary the term Y is used
to describe the meaning of term X.

History

   1. 1998-2001, Bill Cherowitzo prepared the glossary.  2. Graph and Digraph
   Glossary transformed in Pajek format: Barbara Zemlji"c, 2. nov 2003.

References

   1. Bill Cherowitzo: Graph and Digraph Glossary, version 03-Feb-2001; (Course
   page)

Pajek Data; 25. January 2004


================================================================================
==> HEP-th/HEP.txt <==
================================================================================


Pajek datasets KDD Cup 2003 High Energy Particle Physics (HEP) literature

Dataset   hep-th

Description

hep-th.net directed network with 27240 vertices and 342437 arcs (39 loops).
hep-th-new.net directed network with 27770 vertices and 352807 arcs (39 loops).
date-new.vec integer vector on 27770 vertices.  year-new.vec integer vector on
27770 vertices.



complete dataset (ZIP, 2607K)

Background Citation data from KDD Cup 2003, a knowledge discovery and data
mining competition held in conjunction with the Ninth Annual ACM SIGKDD
Conference.

The Stanford Linear Accelerator Center SPIRES-HEP database has been
comprehensively cataloguing the High Energy Particle Physics (HEP) literature
online since 1974, and indexes more than 500,000 high-energy physics related
articles including their full citation tree.

The network contains a citation graph of the hep-th portion of the arXiv. The
units names are the arXiv IDs of papers; the relation is X cites Y . Note that
revised papers may have updated citations. As such, citations may refer to
future papers, i.e. a paper may cite another paper that was published after the
first paper.

The SLAC/SPIRES dates for all hep-th papers are given. Some older papers were
uploaded years after their intial publication and the arXiv submission date
from the abstracts may not correspond to the publication date. An alternative
date has been provided from SLAC/SPIRES that may be a better estimate for the
initial publication of these old papers.

The first version of data was updated on May 12, 2003.

hep-th.net X cites Y relation, first version.  hep-th-new.net X cites Y
relation, updated version.  date-new.vec SLAC date of paper was transformed to
the number of days since August 1, 1991, updated version.  year-new.vec year
from the SLAC date of paper, updated version.

References

   1. KDD Cup 2003
   
   2. arXiv

Transformed in Pajek format by V. Batagelj, 26. July 2003



================================================================================
==> IMDB/IMDB.txt <==
================================================================================

Pajek data set: IMDB, the Internet Movie Database, http://www.imdb.com.

-------------------------------------------------------------------------------\'
Pajek network converted to sparse adjacency matrix for inclusion in UF sparse
matrix collection, Tim Davis.  For Pajek datasets, See V. Batagelj & A. Mrvar,
http://vlado.fmf.uni-lj.si/pub/networks/data/.
-------------------------------------------------------------------------------
A(i,j)=1 if actor j played in movie i.  colname(j,:) is the name of the actor.
Column j = 362,181 is Kevin Bacon.  Year of movie i is year(i).
category(i) gives the category of movie i, use code(category(i),:).
Note that movie names are not provided.

1: Drama
2: Short
3: Documentary
4: Comedy
5: Western
6: Family
7: Mystery
8: Thriller
9: -
10: Music
11: Crime
12: Sci-Fi
13: Horror
14: War
15: Fantasy
16: Romance
17: Adventure
18: Animation
19: Action
20: Musical
21: Film-Noir
99: Unknown.

Remember that in MATLAB, A(i,:) is slow to compute; A(:,i) is faster.  If you
want row i of a sparse matrix, access the ith column of the transpose instead.
-------------------------------------------------------------------------------

A "Bacon number" is a measure of separation in the graph.  Kevin Bacon has
a Bacon number of zero.  Any actor who played in a movie with Kevin Bacon
has a Bacon number of 1.  In general, an actor has a Bacon number equal to
1 + the minimum Bacon number of any actor he or she has been in a movie with.

A similar definition can be extended to movies; a movie in which Kevin Bacon
appears has a Bacon number of 0.  In general, the Movie-Bacon number is
the smallest Bacon number of any actor in that movie.

The following code was used to compute the Bacon numbers:

    Bacon = Problem.aux.KevinBacon ;
    A = Problem.A ;
    [m n] = size (A) ;
    C = [speye(m) A ; A\' speye(n)] ;
    x = zeros (m+n,1) ;
    B = inf * ones (m+n,1) ;
    x (m + Bacon) = 1 ;
    B (m + Bacon) = 0 ;
    tlen = 1 ;
    for k = 1:m+n
	x = x + C*x ;
	t = find (x) ;
	if (tlen == length (t))
	    break
	end
	tlen = length (t) ;
	B (t) = min (B (t), k) ;
    end
    MovieBacon = (B (1:m) - 1) / 2 ;
    ActorBacon = B (m+1:end) / 2 ;

Note that the movie names have been intentionally omitted from this version of
the data in the UF Sparse Matrix Collection, as has the name of movie code 9.

The above MATLAB code is not terribly efficient; it makes k passes over the
matrix, each taking O(nnz(A)) time.  Fortunately, k is a small constant (8).
A proper breadth-first search would take O(nnz(A)), regardless of k.

================================================================================
==> Journals/Journals.txt <==
================================================================================

Pajek datasets Slovenian magazines and journals 1999 and 2000

Dataset   Journals

Description

Revije.net - valued network with 124 vertices Revije.clu - partition with 124
vertices Revije.paj - Pajek project file with complete dataset.



complete dataset (ZIP, 3K)

Background

Over 100.000 people have been asked which magazines and journals they read
(survey conducted in 1999 and 2000, source CATI Center Ljubljana). They listed
124 different magazines and journals. The collected data can be represented as
2-mode network:

                 Delo    Dnevnik   Sl.novice ...
Reader1            X                   X     ...
Reader2                     X                ...
Reader3            X                         ...
............     .....   .......   ......... ...

Obtaining 1-mode network

From 2-mode network reader/journal we generated ordinary network, where the
vertices are journals

    * undirected edge with value a between journals means the number of readers
    * of both journals.  loop on selected journal means the number of all
    * readers that read this journal.

Obtained matrix (A):

                 Delo    Dnevnik   Sl.novice ...
Delo            20714       3219        4214 ...
Dnevnik                    15992        3642 ...
Sl. novice                             31997 ...
........        ......     .....       ..... ...

The second ordinary network on readers would be huge (more than 100.000
vertices) containing large cliques (readers of particular journal).

History

   1. Transformed in journal X journal matrix, 26. December 2000.

   2. Transformed in Pajek format by V. Batagelj, 21. December 2003.

References

   1. Dagstuhl seminar: Link Analysis and Visualization, Dagstuhl 1-6. July 2001

Pajek Data; 21. December 2003


================================================================================
==> KEDS/KEDS.txt <==
================================================================================

NOTE: the KEDS data has not been included.

Pajek datasets KEDS The Kansas Event Data System

Dataset   KEDS

Description

GulfLDays.net directed multirelational temporal network with 174 vertices and
57131 arcs. From \'leads\' Gulf event data, granularity is 1 day.

GulfLMonths.net directed multirelational temporal network with 174 vertices and
57131 arcs. From \'leads\' Gulf event data, granularity is 1 month.

GulfLDow.net directed multirelational temporal network with 174 vertices and
57131 arcs. From \'leads\' Gulf event data, in day of the week classes.

GulfADays.net directed multirelational temporal network with 202 vertices and
304401 arcs. From Gulf event data, granularity is 1 day.

GulfAMonths.net directed multirelational temporal network with 202 vertices and
304401 arcs. From Gulf event data, granularity is 1 month.

LevantDays.net directed multirelational temporal network with 485 vertices and
196364 arcs. From Levant event data, granularity is 1 day.

LevantMonths.net directed multirelational temporal network with 485 vertices
and 196364 arcs. From Levant event data, granularity is 1 month.

BalkanDays.net directed multirelational temporal network with 325 vertices and
78667 arcs. From Balkan event data, granularity is 1 day.

BalkanMonths.net directed multirelational temporal network with 325 vertices
and 78667 arcs. From Balkan event data, granularity is 1 month.



GulfLDays.net (ZIP, 239K)

GulfLMonths.net (ZIP, 197K)

GulfLDow.net (ZIP, 213K)

GulfADays.net (ZIP, 1078K)

GulfAMonths.net (ZIP, 941K)

LevantDays.net (ZIP, 855K)

LevantMonths.net (ZIP, 735K)

BalkanDays.net (ZIP, 335K)

BalkanMonths.net (ZIP, 288K)

Background

KEDS - The Kansas Event Data System uses automated coding of English-language
news reports to generate political event data focusing on the Middle East,
Balkans, and West Africa. These data are used in statistical early warning
models to predict political change. The ten-year project is based in the
Department of Political Science at the University of Kansas; it has been funded
primarily by the U.S. National Science Foundation.  KEDS data sets from KEDS
data collection.

Gulf data set: This data set covers the states of the Gulf region and the
Arabian peninsula for the period 15 April 1979 to 31 March 1999. The source
texts prior to 10 June 97 were located using a NEXIS search command
specifically designed to return relevant data. There are two versions of the
data: a set coded from the lead sentences only (57,000 events), and a set coded
from full stories (304,000 events).  There are some errors in the GulfAll data.
Events 118196 and 118197 have REUT-0 in place of the date; and in event 173526
the first actor is missing. In Gulf99All.dat the wrong dates are replaced with
890319, and the incomplete event is skiped.

Levant data set: Folder containing WEIS-coded events (N=196,337) for dyadic
interactions within the following set of countries: Egypt, Israel, Jordan,
Lebanon, Palestinians, Syria, USA, and USSR/Russia. Coverage is April 1979 to
June 2004. TABARI coding dictionaries are also included.  There are some errors
(333) in data set - relation codes 012], O24, O53, 213] are replaced with 012,
024, 053, 213 in Levant.dat. Some events don\'t have description codes - they
are marked with *** in relation labels in *.net files.

Balkans data set, 1989-2003: Folder containing WEIS-coded events (N = 78,667)
for the major actors (including ethnic groups) involved in the conflicts in the
former Yugoslavia. Coverage is April 1989 through July 2003. TABARI coding
dictionaries are included in the folder.  There are some errors (197) in data
set - relation codes ---], O24, O53 are replaced with 000, 024, 053 in
Balkan.dat. Some events don\'t have description codes - they are marked with ***
in relation labels in *.net files.

The original data sets are on MAC files. They should be saved as PC files
before processing. 

History

   1. Program Recode (in Delphi) by Vladimir Batagelj, Ljubljana, July 25, 2003

   2. Program KEDSrec adapted for KEDS from Recode; Gulf (leads) data recoded
into Pajek\'s format, by Vladimir Batagelj, Ljubljana, November 3, 2003

   3. Support for multiple relations networks added to program KEDSrec by
Vladimir Batagelj, Ljubljana, November 22, 2004

   4. KedsR - functionality of KEDSrec implemented in R; Gulf (leads) data
recoded into Pajek\'s format (days, months, day of the week), by Vladimir
Batagelj, Ljubljana, November 27, 2004

   5. WeisR - commands from KedsR adapted for WEIS format (similar to KEDS but
TAB delimited); Balkan and Levant data recoded into Pajek\'s format (days,
months), by Vladimir Batagelj, Ljubljana, November 28, 2004

   6. Gulf99All is a large data set - sapply commands in KedsR had to be
replaced by while loops; Gulf (all) data recoded into Pajek\'s format (days,
months), by Vladimir Batagelj, Ljubljana, November 29, 2004


References

   1. StuffIt - uncompress program for SIT files

Pajek Data; 29. November 2004 / 24. November 2004


================================================================================
==> Mixed/Mixed.txt <==
================================================================================


Pajek datasets from different sources

US power grid

Dataset:   USpowerGrid

US power grid - unweighted network from Panayiotis Tsaparas\' page.  Adapted for
Pajek by V. Batagelj, March 19, 2006

File: USpowerGrid.net - undirected network with 4941 vertices and 6594 edges



Kleinberg\'s web graphs

Dataset:   California - Pages matching the query "California".

This graph was constructed by expanding a 200-page response set to a search
engine query \'California\', as in the hub/authority algorithm. Obtained from Jon
Kleinberg\'s page.  Adapted for Pajek by V. Batagelj, March 19, 2006

File: California.net - directed network with 9664 vertices and 16150 arcs.


References: Amy N. Langville and Carl D. Meyer: A Reordering for the PageRank
problem (March 2004) PDF J. Kleinberg. Authoritative sources in a hyperlinked
environment. Proc. 9th ACM-SIAM Symposium on Discrete Algorithms, 1998.
Extended version in Journal of the ACM 46(1999). PDF

Dataset:   Epa - Pages linking to www.epa.gov.

This graph was constructed by expanding a 200-page response set to a search
engine query, as in the hub/authority algorithm. Obtained from Jon Kleinberg\'s
page.  Adapted for Pajek by V. Batagelj, March 19, 2006

File: Epa.net - directed network with 4772 vertices and 8965 arcs.


 Stanford web graphs

Dataset:   StanfordWeb - Stanford Web Matrix.

This graph was obtained from a September 2002 crawl (281903 pages, 2382912
links). The matrix rows represent the inlinks of a page, and the columns
represent the outlinks. Downloaded from Sepandar D. Kamvar\'s page.  Adapted for
Pajek by V. Batagelj, March 19, 2006

File: StanfordWeb.net - directed network with 281903 vertices and 2382912 arcs.


References: Sepandar D. Kamvar, Taher H. Haveliwala, Christopher D. Manning,
and Gene H. Golub, "Exploiting the Block Structure of the Web for Computing
PageRank." Preprint (March, 2003). PDF

Dataset:   StanfordBerkeleyWeb - Stanford-Berkeley Web Matrix.

This graph was obtained from a December 2002 crawl (685230 pages, 8006115
links). The matrix rows represent the inlinks of a page, and the columns
represent the outlinks. Downloaded from Sepandar D. Kamvar\'s page.  Adapted for
Pajek by V. Batagelj, March 19, 2006

NOTE by Tim Davis: nodes 683,447 to 685,230 in the Stanford  Berkeley web data,
discussed above, are not part of the true results.  Kamvar\'s MATLAB script for
processing the data deletes those nodes.  This graph is already in the UF
Sparse Matrix Collection, in the correct size.   Also note that Kamvar doesn\'t
consider multiple links from page i to j to be significant.  Thus, duplicate
edges (i,j) in this graph should be ignored.  The graph in the UF collection is
thus binary.

File: StanfordBerkeleyWeb.net - directed network with 685230 vertices and
8006115 arcs.


References: Sepandar D. Kamvar, Taher H. Haveliwala, Christopher D. Manning,
and Gene H. Golub, "Exploiting the Block Structure of the Web for Computing
PageRank." Preprint (March, 2003). PDF

World City Network

Dataset:   WorldCities

These data constitute the empirical basis for measuring the world city network
as described in P.J. Taylor (2004) World City Network: A Global Urban Analysis
(London: Routledge). The data were produced by P.J. Taylor and G. Catalano.
These data were collected in 2000. They are the service values (indicating the
importance of a city in the office network of a firm) of 100 global service
firms distributed across 315 cities worldwide. All firms supply advanced
producer services (accountancy, advertising, banking/finance, insurance, law,
and management consultancy) through offices in at least 15 cities (including at
least one in each of Pacific Asia, western Europe and northern America).  The
following coding information is given to help understand and evaluate the data.
Downloaded from GaWC Data Set 11 page.  Transformed in Pajek format by V.
Batagelj, March 20, 2006

Files:

WorldCities.net - two-mode network with 415=315+100 vertices and 7518 arcs.

WorldCities.mat - same network in Pajek matrix format.

WorldCities.net - type of service partition: 0 - city; 1 - accountancy; 2 -
advertising; 3 - banking/finance; 4 - insurance; 5 - law; 6 - management
consultancy.



References: Taylor, P.J. (2004): World city network: a global urban analysis.
London and New York: Routledge.

Pajek Data; 19. March 2006


================================================================================
==> ND/ND.txt <==
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
==> ODLIS/ODLIS.txt <==
================================================================================


Pajek datasets

 ODLIS Online Dictionary of Library and Information Science

Dataset odlis

Description

odlis.net directed network with 2909 vertices and 18419 arcs (5 loops).



odlis.net (ZIP, 62K) Background

The network Odlis.net is based on the ODLIS: Online Dictionary of Library and
Information Science. version December 2000.

ODLIS is designed to be a hypertext reference resource for library and
information science professionals, university students and faculty, and users
of all types of libraries. The primary criterion for including a new term is
whether a librarian or other information professional might reasonably be
expected to encounter it at some point in his (or her) career, or be required
to know its meaning in the course of executing his or her responsibilities as a
librarian. The vocabulary of publishing, printing, book history, literature,
and computer science has been included when, in the author\'s judgment, a
definition might prove helpful, not only to library and information
professionals, but also to laypersons.

An arc (X,Y) from term X to term Y exists in the network iff in the ODLIS
dictionary the term Y is used to describe the meaning of term X.

ODLIS is the work of Joan M. Reitz, Assistant Professor/Instruction Librarian
at the Ruth A. Haas Library, Western Connecticut State University (WCSU) in
Danbury, CT. Ms. Reitz holds an M.L.I.S. degree (1991) from the University of
Washington in Seattle and an M.A. degree (1998) in European History from
Western Connecticut State University. Her primary research interests are the
history of the book and history of political and social revolutions. 

History

   1. ODLIS began at the Haas Library in 1994 as a five-page photocopied
handout intended for undergraduates not fluent in English, and students with
limited exposure to library terminology.

   2. In 1996, it was expanded and converted to HTML format for installation on
the WCSU Libraries HomePage under the title Hypertext Library Lingo: A Glossary
of Library Terminology.

   3. In 1997, many more hypertext links were added and the format improved in
response to suggestions from users.

   4. During the summer of 1999, several hundred terms and definitions were
added, and a generic version created which omitted all references to the
specific conditions and practices at the Haas Library.

   5. In the fall of 1999, the glossary was expanded to 1,800 terms, renamed to
reflect its extended scope, and copyrighted.

   6. In February, 2000, ODLIS was indexed in Yahoo! under "Reference -
Dictionaries - Subject." It is also indexed in the WorldCat database in OCLC
FirstSearch.

   7. During the year 2000, the dictionary was expanded to 2,600 terms. On
average, it has received over 6,200 visits per month since January 2, 2000.

   8. December 2000: ODLIS transformed in Pajek format and \'cleaned\' by A.
Mrvar and V. Batagelj.

References

   1. Joan M. Reitz (2002): ODLIS: Online Dictionary of Library and Information
Science.

Pajek Data; 27. January 2004


================================================================================
==> Patents/Patents.txt <==
================================================================================


Pajek datasets Patents The NBER U.S. Patent Citations Data File

Dataset patents

Description

patents.net directed network with 3,774,768 vertices and 16,522,438 arcs (1
loop).



NET, NAM, Year, Date, Cat, Class, Country, Subcat, AppYear Patents NET / main
subnetwork Background

The network Patents is based on the The NBER U.S. Patent Citations Data File,
version 2001.

These data comprise detail information on almost 3 million U.S. patents granted
between January 1963 and December 1999, all citations made to these patents
between 1975 and 1999 (over 16 million), and a reasonably broad match of
patents to Compustat (the data set of all firms traded in the U.S. stock
market).

These data are described in detail in Hall, B. H., A. B. Jaffe, and M.
Tratjenberg (2001). "The NBER Patent Citation Data File: Lessons, Insights and
Methodological Tools." NBER Working Paper 8498.  ALL USERS OF THESE DATA SHOULD
READ THIS PAPER, AND SHOULD CITE IT AS THE SOURCE OF THE DATA

Further documentation on uses of the patent citation data, including the
methodology paper and a CD containing the complete dataset itself, is available
in the book Patents, Citations and Innovations: A Window on the Knowledge
Economy by Adam Jaffe and Manuel Trajtenberg, MIT Press, Cambridge (2002). The
book may be ordered from MIT Press. ISBN 0-262-10095-9.

History

   1. Data produced by United States Patent and Trademark Office

   2. Hall, B. H., A. B. Jaffe, and M. Tratjenberg prepared the NBER dataset,
   2001

   3. July 10, 2003: NBER data transformed in Pajek format by V. Batagelj.


References

   1. Hall, B. H., A. B. Jaffe, and M. Tratjenberg (2001): The NBER U.S. Patent
   Citations Data File.

   2. United States Patent and Trademark Office, Patent Number Search

   3. Batagelj V. (2003): Efficient Algorithms for Citation Network Analysis.

Pajek Data; 27. January 2004

-------------------------------------------------------------------------------
NOTE regarding conversion for UF sparse matrix collection: in original the data
there are 14,973,817 edges (unweighted).  Of this, 3050 are duplicates         
This graph is binary; the duplicates have been removed.                        
Also, the original data has auxiliary data for all 6,009,554 US Patents in this
time period.  This patent network has only 3,774,768 patents, and the auxiliary
data (appyear, class, etc.) is matched here to the nodes of the graph.         

================================================================================
==> Roget/Roget.txt <==
================================================================================


Pajek datasets Roget Roget\'s Thesaurus, 1879

Dataset   Roget

Description

roget.net directed network with 1022 vertices and 5075 arcs (1 loop); word X is
related to word Y.



Roget.net (ZIP, 17K)

Background

The network Roget.net is based on the file roget.dat from the Stanford
GraphBase that contains cross-references in Roget\'s Thesaurus, 1879.

Dr. Peter Mark Roget (1779-1869) philologist, scientist, physician. The name
Roget could soon become a virtual synonym for the word "synonym". For those who
use Roget\'s Thesaurus it is one of the three most important books ever
printed...along with The Bible and Webster\'s Dictionary. In order to
communicate one\'s exact intention...or one\'s precise meaning, the Thesaurus,
being a list of synonyms or verbal equivalents, is a necessary tool. The first
draft of the Thesaurus was written in 1805, two years before Webster started on
his dictionary. However for a period of 47 years Dr. Roget used his manuscript
as his personal, secret, treasure trove. Not until he was 73 years old did he
decide to reveal and publish this great manuscript.

Since 1852, Roget\'s Thesaurus has never been out of print. In fact, each
succeeding edition has increased the popularity of the work. The original
15,000 words included in the 1805 manuscript has increased to over a quarter of
a million in the 1992 edition (the tenth printing). With such an increase in
size, it is encouraging to notice that the basic content still remains
intact..... for example, where the 1805 Thesaurus traces the word: existence:
"Ens, entity, being, existence, essence...", the 1992 Thesaurus contains
existence: "existence, being, entity, ens,...essence..."

Each vertex of the graph corresponds to one of the 1022 categories in the 1879
edition of Peter Mark Roget\'s Thesaurus of English Words and Phrases, edited by
John Lewis Roget. An arc goes from one category to another if Roget gave a
reference to the latter among the words and phrases of the former, or if the
two categories were directly related to each other by their positions in
Roget\'s book. For example, the vertex for category 312 (`ascent\') has arcs to
the vertices for categories 224 (`obliquity\'), 313 (`descent\'), and 316
(`leap\'), because Roget gave explicit cross-references from 312 to 224 and 316,
and because category 312 was implicitly paired with 313 in his scheme.

History

   1. Original Roget\'s Thesaurus was published in 1852.

   2. Peter\'s son John Luis Roget published the second, improved edition in
1879.

   3. Project Gutenberg Roget\'s Thesaurus (1911 edition) put into electronic
format in 1991.

   4. Graph Roget.dat of cross-references based on the second edition was
produced for Stanford GraphBase (SGB) in 1992/3.

   5. MICRA (Pat Cassidy) prepared the electronic version of the 1911 Roget\'s
Thesaurus that is widely available on the internet.

   6. SGB Roget.dat transformed in Pajek format: A. Mrvar, 5. December 1996.

References

   1. Peter Mark Roget: Roget\'s Thesaurus of English Words and Phrases

   2. Project Gutenberg: Roget\'s Thesaurus

   3. Donald E. Knuth: The Stanford GraphBase: A Platform for Combinatorial
Computing . New York: ACM Press, 1993

   4. The Stanford GraphBase: roget.dat, version 15.6.1993

   5. Pat Cassidy: MICRA / Factotum

   6. CIDE (Collaborative International Dictionary of English), GNU 1996-2002

Pajek Data; 23. January 2004


================================================================================
==> Sandi/Sandi.txt <==
================================================================================

 REFERENCES

DATASET SANDI

DESCRIPTION 2-mode 674×314 network.

BACKGROUND These data were obtained from the bibliography of the book Imrich W,
Klavžar S. (1999) Graph products. The result is a author-by-paper 2-mode
network: arc (i,j) - author i is the (co)author of the paper j.

DERIVED DATA AUTHORS authors network

REFERENCES

    * Imrich W, Klavžar S. (1999). Graph products. References.



================================================================================
==> Stranke94/Slovene_Parties.txt <==
================================================================================

Pajek datasets Slovene Parliamentary Parties 1994

Dataset Stranke94

Description

Stranke94.net - valued signed network with 10 vertices



Stranke94.net Background

Relations between Slovene parliamentary political parties:

    * SKD - Slovene Christian Democrats;

    * ZLSD - Associated List of Social Democrats;

    * SDSS - Social Democratic Party of Slovenia;

    * LDS - Liberal Democratic Party;

    * ZSESS - first of two Green Parties, separated after 1992 elections;

    * ZS - second Green Party;

    * DS - Democratic Party;

    * SLS - Slovene People\'s Party;

    * SNS - Slovene National Party;

    * SPS SNS - a group of deputies, former members of SNS, separated after
    * 1992 elections

were estimated by the members of the Slovene National Parliament. So the
respondents were well informed and competent to give such estimations. In the
questionnaire designed by a group of experts on Parliament activities, some
questions about the political space and its dimensions were included and the
following question about relations between parliamentary political parties:

    If various criteria (or various dimensions of the political space) are
    taken into account, some parties are by average closer than others. How
    would you personally estimate distances between pairs of parties in the
    political space?

    Please, estimate the distance between each pair of parties on the scale
    from -3 to +3, where:

    -3 means that parties are very dissimilar;

    -2 means that parties are quite dissimilar;

    -1 means that parties are dissimilar;

    0 means that parties are neither dissimilar nor similar (somewhere in
    between);

    +1 means that parties are similar;

    +2 means that parties are quite similar;

    +3 means that parties are very similar.

To collect estimations each respondent was given a 10-party by 10-party table
with empty cells in the upper triangle. The diagonal and the lower triangle
were coloured in black. Each respondent had to estimate relations between 45
pairs of parties.

The measures of central tendency were computed on the basis of the estimations
given by 72 out of 90 members of the Parliament. 17 members of the Parliament
were not available at the time of interviewing and one refused respond. 64
respondents out of the 72 estimated all 45 requested party relations. Only two
out of 8 respondents with missing values have a large number of missing values
(namely 40), the rest of them have 5 to 10 missing values. As far as the
parties (variables) are considered, there are from 0 to 8 missing values and a
recognisable pattern: relations involving ZS (which had no representatives in
the Parliament at the time of interviewing) include from 6 to 8 missing values,
others from 0 to 3 missing values.

The weights of arcs in the network are averages of values multiplied by 100 and
rounded. The missing values were excluded. 

History

   1. Stran format by V. Batagelj, 19. October 1994.

   2. Transformed in Pajek format by V. Batagelj, 15. February 2004.

References

   1. Samo Kropivnik and Andrej Mrvar: An Analysis of the Slovene Parliamentary
   Parties Network. Developments in Statistics and Methodology. (A. Ferligoj,
   A. Kramberger, editors) Metodološki zvezki 12, FDV, Ljubljana, 1996, p.
   209-216.

   2. Patrick Doreian and Andrej Mrvar(1996): A Partitioning Approach to
   Structural Balance. Social Networks, 18, p. 149-168.

Pajek Data; 15. February 2004


================================================================================
==> Tina/Tina.txt <==
================================================================================

Pajek datasets
Student Government of the University of Ljubljana / 1992

Dataset Tina

Description

DisCal.net - network with 11 vertices and 41 arcs
DisCog.net - network with 11 vertices and 48 arcs
AskCal.net - network with 11 vertices and 29 arcs
AskCog.net - network with 11 vertices and 36 arcs
AnsCalT.net - network with 11 vertices and 41 arcs
AnsCogT.net - network with 11 vertices and 42 arcs
DisCalSn.net - network with 11 vertices and 41 arcs
Tina.paj - Pajek project file with complete dataset.



complete dataset (ZIP, 3K)
DisCalSn.net
Background
In the experiment two alternative methods were used for collection of network data:

     Recall: Members of the group were asked to identify the members of their
     egocentric networks by memory. The criteria for enumeration was frequency
     of the recalled communications.

     Recognition: The list of all members of the group was given to each
     member. They were first asked to identify who they communicate with and
     than to select the persons they communicate with most often.

The number of listed persons was not limited in any method.

The analyzed network consisted of communication interactions among twelve
members and advisors of the Student Government at the University in Ljubljana.
The results of the measurement are not real interactions among actors but
cognition about communication interactions. Data were collected with face to
face interviews which lasted from 20 to 30 minutes. Interviews were conducted
in May 1992.

Communication flow among actors was identified by three questions:

    Who of the members and advisors of the Student government do you (most
    often) informally discuss with?

    Which members and advisors of the Student Government do you (most often)
    ask for an opinion?

    Which of the members and advisors of the Student Government (most often)
    ask you for an opinion?

The content of the communication flow was limited to the matters of the Student
Government. The time frame was also defined: questions were referred to the six
months period (from the formation of the government to the day of the
interview).

Only one respondent listed all the others under the recognition method for two
relations (discussion, asking for an opinion). For that respondent the first
group was defined arbitrary. The cut point was determined by the average number
of selected persons at the recognition method (3.5 for the first relation and
4.5 for the second).

One respondent refused to cooperate in the experiment. As he was not considered
in the analysis, the network consists of eleven actors.


History


   1. Transformed in Stran format by V. Batagelj, 28. July 1993.
   2. Transformed in Pajek format by V. Batagelj, 8. August 2003.

Files

DisCal.net - discussion, recall
DisCog.net - discussion, recognition
AskCal.net - asking for an opinion, recall
AskCog.net - asking for an opinion, recognition
AnsCalT.net - being asked for an opinion, recall (transposed)
AnsCogT.net - being asked for an opinion, recognition (transposed)
DisCalSn.net - discussion, recall / short names
Tina.paj - Pajek project file with complete dataset.
References

   1. Valentina Hlebec: Recall Versus Recognition: Comparison of the Two
   Alternative Procedures for Collecting Social Network Data. Developments in
   Statistics and Methodology. (A. Ferligoj, A. Kramberger, editors)
   Metodološki zvezki 9, FDV, Ljubljana, 1993, p. 121-129.

Pajek Data; 8. August 2003


================================================================================
==> WassermanFaust/WassermanFaust.txt <==
================================================================================

NOTE: the Wasserman/Faust networks have not been included.


Pajek datasets
from the book
Social Network Analysis: Methods and Applications
Wasserman and Faust, 1994
Wasserman and Faust datasets

Dataset   WaFa

There are five network examples: Krackhardt\'s high-tech managers, Padgett\'s
Florentine families, Freeman\'s EIES network, Countries trade network, and
Galaskiewicz\'s CEOs and clubs network.

Description

HighTech.paj - multirelational network with 21 vertices and 190+102+20 arcs
Padgett.paj - multirelational network with 16 vertices and 30+40 arcs
EIES.paj - multirelational network with 48/32 vertices and 695+830/460 arcs
Trade.paj - multirelational network with 24 vertices and 307+307+310+135+369
    arcs
CEOs.net - two-mode network with 41 vertices and 98 edges.


Background

Complete descriptions of these data, including references for the original
sources of the data, can be found in Chapter 2 (pages 59- 66) and Appendix B
(pages 738-755) of Wasserman and Faust.

The original data in ASCII, UCINET and KrackPlot formats are available at
INSNA. 

History

   1. INSNA page.
   2. Transformed in Pajek format by V. Batagelj, 15. January 2005.

Files

HighTech.paj - Krackhardt\'s High-tech managers
Padgett.paj - Padgett\'s Florentine Families
EIES.paj - Freeman\'s EIES network
Trade.paj - Countries trade data
CEOs.net - Galaskiewicz\'s CEOs and clubs.
References

   1. Stanley Wasserman, Katherine Faust: Social Network Analysis: Methods and
   Applications. CUP, 1994.

Pajek Data; 15. January 2005


================================================================================
==> Wordnet/Wordnet.txt <==
================================================================================


NOTE: this is a binary graph in the Pajek dataset, but where each edge has a
label (not a weight) in the range 1 to 9.  The following labels are used:

1  hypernym pointer
2  entailment pointer
3  similar pointer
4  member meronym pointer
5  substance meronym pointer
6  part meronym pointer
7  cause pointer
8  grouped pointer
9  attribute pointer

This is not a multigraph.  There are no edges (i,j) between the same nodes
with the same label.  Thus, in the sparse matrix, the edge weight A(i,j)
represents the label 1 through 9 of edge (i,j).  No loss of information
occurs in this translation.  The above table is in aux.edgecode(1:9,:).
Each node is a word in a dictionary.  aux.category(i) gives the category
of the word:
   1: n (noun?)       63099 words
   2: v (verb?)        4496 words
   3: a (adjective?)   5501 words
   4: r (?)            2846 words
   5: s (?)            6728 words.


================================================================================
==> yeast/yeast.txt <==
================================================================================

Pajek datasets
Protein-protein interaction network in budding yeast

Dataset   Yeast

Description

yeastS.net network with 2361 vertices and 7182 edges (536 loops).
yeastL.net network with 2361 vertices and 7182 edges (536 loops).
yeast.clu partition of vertices.
yeast.paj Pajek project file with complete dataset.



complete dataset (ZIP, 134K)

Background Interaction detection methods have led to the discovery of thousands
of interactions between proteins, and discerning relevance within large-scale
data sets is important to present-day biology. The dataset consists of
protein-protein interaction network described and analyzed in (1) and available
as an example in the software package - PIN (2).

PIN class encoding:
1 - T, 2 - M, 3 - U, 4 - C, 5 - F, 6 - P, 7 - G, 8 - D, 9 - O,
10 - E, 11 - R, 12 - B, 13 - A.

yeastS.net X interacts with Y relation, short names.  yeastL.net X interacts
with Y relation, long labels.  yeast.clu PIN class partition of vertices, see
encoding.  yeast.paj Pajek project file with complete dataset.

References

   1. Shiwei Sun, Lunjiang Ling, Nan Zhang, Guojie Li and Runsheng Chen:
   Topological structure analysis of the protein-protein interaction network in
   budding yeast. Nucleic Acids Research, 2003, Vol. 31, No. 9 2443-2450 (PDF).

    2. Software package Protein Interaction Network PIN

Transformed in Pajek format by V. Batagelj, 25. July 2003


================================================================================
==> GD problems <==
================================================================================

These graphs are from the Graph Drawing 1995-2006 Contests.

GD97_b:
NOTE regarding conversion for UF sparse matrix collection: in original the data
every edge appears exactly twice, with the same edge weight.  It could be a    
multigraph, but it looks more like a graph.  The duplicate edges are removed in
this version.  You can always add them back in yourself; just look at 2*A.     

',

}

