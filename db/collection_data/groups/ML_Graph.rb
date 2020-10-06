{
    name: 'ML_Graph',
    num_matrices: '37',
    notes: 'ML_Graph: adjacency matrices from machine learning datasets, Olaf Schenk.

The following adjacency matrices were used in the numerical experiments in:
 
D.  Pasadakis,  C.  L.  Alappat,  O.  Schenk,  and  G.  Wellein,  "K-way
p-spectral clustering on Grassmann manifolds," 2020.  [Online]. Available:
https://arxiv.org/abs/2008.13210

-------------------------------------------------------------------------------
Graph Creation
-------------------------------------------------------------------------------

For all the graphs in the folder, for $n$ data points, the connectivity matrix
$G \\in \\mathbb{R}^{n\\times n}$ is created from a k nearest neighbors routine,
with k set such that the resulting graph is connected. The similarity matrix
$S \\in \\mathbb{R}^{n\\times n}$ between the data points is defined as
\\begin{equation}
    s_{ij} = \\max\\{s_i(j), s_j(i)\\} \\;\\; \\text{with}\\;
    s_i(j) = \\exp (-4 \\frac{\\|x_i - x_j \\|^2}{\\sigma_i^2} )
\\end{equation}
with $\\sigma_i$ standing for the Euclidean distance between the $i$th data point
and its nearest k-nearest neighbor. The adjacency matrix $W$ is then created
as

\\begin{equation}
    W = G \\odot S.
\\end{equation}

Besides the adjacency matrices $W$, the node labels for each graph are part of
the submission.  If the graph has c classes, the node labels are integers in
the range 0 to c-1.

-------------------------------------------------------------------------------
Description of matrices
-------------------------------------------------------------------------------

For a more detailed description of the datasets, and references of the sources
the datasets were obtained from, see the paper cited in the beginning of this
description.

    Graphs from various machine learning datasets

    Name             Neighbours            Nodes      Edges     Classes
har_10NN                  10               10299      75868          6  
indianpines_10NN          10                9144      62328          8  
JapaneseVowels_10NN       10                9961      65572          9  
worms20_10NN              10               20055     120413         20  
optdigits_10NN            10                5620      39825         10  
Vehicle_10NN              10                 846       5447          4  
mfeatkarhunen_10NN        10                2000      13834         10  
mfeatfactors_10NN         10                2000      13721         10  
mfeatmorphological_10NN   10                2000      11416         10  
mfeatpixel_10NN           10                2000      13966         10  
mfeatzernike_10NN         10                2000      13707         10  
semeion_10NN              10                1593      11113         10  
mice_10NN                 10                1077       6742          8  
yeast_30NN                30                1484      31175         12  
cnae9_10NN                10                1080       9139          9  
dermatology_5NN            5                 366       1220          6  
iris_30NN                 30                 150       2759          3  
Ecoli_10NN                10                 336       2280          8  
Binaryalphadigs_10NN      10                1404       9696         36  
Glass_10NN                10                 214       1493          6  
collins_15NN              15                1000       8246         30  
micromass_10NN            10                 571       4834         20  
breasttissue_10NN         10                 106        706          6  
Plants_10NN               10                1600      10965        100  
plantsmargin_12NN         12                1600      12741        100  
plantstexture_10NN        10                1599      10602        100  
Spectro_10NN              10                 531       3711         48  

    Graphs from image classification problems. The RGB values are normalised 
    in the interval [0,1].

    Name             Neighbours            Nodes      Edges     Classes
usps_norm_5NN             5                11000      40556         10 
Fashion_MNIST_norm_10NN  10                10000      79152         10 
kmnist_norm_10NN         10                10000      78466         10 
k49_norm_10NN            10                38547     309079         49 
mnist_test_norm_10NN     10                10000      72800         10 
YaleB_10NN               10                 2414       8568         10 
umistfacesnorm_10NN      10                  575       3495         20 
YaleA_10NN               10                  165       1134         10 
Olivetti_norm_10NN       10                  400       2828         40 

',

}

