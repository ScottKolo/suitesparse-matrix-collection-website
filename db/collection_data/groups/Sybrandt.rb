{
    name: 'Sybrandt',
    num_matrices: '2',
    notes: 'Sybrandt: machine learning graphs from document analysis

----------------------------------------------------------------------
MOLIERE Hypothesis Generation Network, J. Sybrandt, Clemson Univ.
----------------------------------------------------------------------

Justin Sybrandt, jsybran at clemson.edu
Matrix Name: MOLIERE_2016 Hypothesis Generation Network
Kind/Problem Domain: Term/Document Graph

This network was presented in "MOLIERE: Automatic Biomedical Hypothesis
Generation System (KDD\'\'17)." Nodes in this network are either MEDLINE
documents, UMLS terms, or n-grams we extracted through ToPMine.

citation:
Justin Sybrandt (Clemson University, Clemson, SC, USA),
Michael Shtutman (University of South Carolina, Columbia, SC, USA)
Ilya Safro (Clemson University, Clemson, SC, USA),
"MOLIERE: Automatic Biomedical Hypothesis Generation System",
23rd ACM SIGKDD Conference on Knowledge Discovery and Data Mining
August 13-17, 2017, Halifax, Nova Scotia - Canada
https://doi.org/10.1145/3097983.3098057

The original data was 0-based with nodes numbered 0 to n-1.  Converted
to 1-based for the SuiteSparse Matrix Collection, July 2018.

The graph has n=30,239,687 nodes.  Node labels are held in the char array
Problem.aux.labels.  Nodes 1 to 22,281,874 all have labels starting with
the capital letter "P", and are PubMed indentification numbers of the
MEDLINE documents.  Nodes 27,683,534 to n all start with the letter "C",
and refer to UMLS terms.  Nodes between these two sets of nodes refer to
n-grams; none of them start with P or C (or any capital letter). The
label of the kth node is also the kth line in the labels text file, and
to the kth row and column of the matrix.

The graph has 4,023,336 explicit zero edges, which are very important
to the problem.  They link automatically mined n-grams to UMLS terms
representing the same concept.  The goal is to find shortest-paths,
so an edge of zero-length is important, and not the same as no edge
at all.  The pattern of the explicit zeros is held in Problem.Zeros
in the MATLAB representation, and are part of the files for the Matrix
Market and Rutherford-Boeing formats.  To operate on the graph G in
MATLAB, use G = Problem.A + 1e-100 * Problem.Zeros, or some other
suitable tiny value.  The nonzero edge weights in the graph range in
value between 5e-15 and 3.0.  There are no negative edge weights.

The graph also has d=3,106,164 duplicate edges; it could be considered
a multigraph.  However, since the problem is to find shortest paths, the
duplicate edges are not needed.  The matrix in the SuiteSparse Matrix
Collection holds the smallest edge weight for any duplicate.  The
duplicates not in the matrix are held in Problem.aux.duplicate_edges,
as a d-by-3 dense matrix, where each row holds [i j eij] for the edge
(i,j) with weight eij.

----------------------------------------------------------------------
Sybrandt/AGATHA_2015: deep-learning graph
----------------------------------------------------------------------

AGATHA: Automatic Graph-mining And Transformer based Hypothesis
Generation Approach

Justin Sybrandt, Ilya Tyagin, Michael Shtutman, Ilya Safro
Clemson University
paper: https://arxiv.org/abs/2002.05635.

abstract: Medical research is risky and expensive. Drug discovery, as
an example, requires that researchers efficiently winnow thousands of
potential targets to a small candidate set for more thorough
evaluation. However, research groups spend significant time and money
to perform the experiments necessary to determine this candidate set
long before seeing intermediate results. Hypothesis generation systems
address this challenge by mining the wealth of publicly available
scientific information to predict plausible research directions. We
present AGATHA, a deep-learning hypothesis generation system that can
introduce data-driven insights earlier in the discovery process.
Through a learned ranking criteria, this system quickly prioritizes
plausible term-pairs among entity sets, allowing us to recommend new
research directions. We massively validate our system with a temporal
holdout wherein we predict connections first introduced after 2015
using data published beforehand. We additionally explore biomedical
sub-domains, and demonstrate AGATHA\'s predictive capacity across the
twenty most popular relationship types. This system achieves
best-in-class performance on an established benchmark, and demonstrates
high recommendation scores across subdomains. Reproducibility: All
code, experimental data, and pre-trained models are available online:
http://sybrandt.com/2020/agatha .

Appears in the 29TH ACM Intl. Conf. on Information and Knowledge
Management, Oct 2020.  https://www.cikm2020.org/

Details of this matrix:

This matrix represents the semantic graph associated with the Agatha
hypothesis generation system: https://arxiv.org/abs/2002.05635.

The matrix was created by selecting all biomedical papers published
prior to January 1st 2015. We extracted terms, phrases, entities, and
author-supplied metadata keywords for each. In addition we identify all
SemRep predicate arguments. Each sentence, term, phrase, entity, and
predicate represents a node. Edges follow a particular schema,
described in detail in the paper. Most edges indicate that two nodes
co-occur. For instance, if a sentence contains a term, then an edge
exists between the two nodes. We introduce a set of edges between
sentences based on the nearest-neighbors network of sentence
embeddings.

The graph is really big, consisting of 183,964,077 nodes and
11,588,725,964 entries (half that many edges since the matrix is
symmetric).

Each node has a label, consisting of a
character string, with a length ranging from 0 to 782 characters.
The mean string lenth is 17.4.  A single node (171,649,101 in 1-based
notation) has a label of length zero, and is an artifact from how the
original data was processed.  All other node labels range in length
from 3 to 782.  The longest string comes from the following paper:
https://pubmed.ncbi.nlm.nih.gov/183954/ which states: "The primary
structure of the enzyme was determined: Ac-Met-Glu-...--Ala-Leu-Lys."

To save space in the MATLAB representation, the node labels are held
in a single character array, Problem.aux.names, where each label is
terminated with a newline character. To extract the label of any
given node, do the following:

   names = Problem.aux.names ;
   p = [1 find(names==10)+1] ;
   label = names (p(i):p(i+1)-2) ;

For example, to list all nodes with labels of length 0 to 4:

   p = [1 find(names==10)+1] ;
   d = diff (p) ;
   for len = 0:4
       fprintf (\'\\nnodes with labels of length %d:\\n\', len) ;
       nodes = find (d == len+1) ;
       for i = nodes
           fprintf (\'%12d: [%s]\\n\', i, names (p(i):p(i+1)-2)) ;
       end
   end

',

}

