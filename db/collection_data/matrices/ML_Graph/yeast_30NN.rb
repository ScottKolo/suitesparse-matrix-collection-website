{
    matrix_id: '2892',
    name: 'yeast_30NN',
    group: 'ML_Graph',
    description: 'machine learning graph: yeast_30NN',
    author: 'D. Pasadakis, C.L. Alappat, O. Schenk, G. Wellein',
    editor: 'O. Schenk',
    date: '2020',
    kind: 'undirected weighted graph',
    problem_2D_or_3D: '0',
    num_rows: '1484',
    num_cols: '1484',
    nonzeros: '62350',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '-1',
    pattern_symmetry: '1.000',
    numeric_symmetry: '1.000',
    rb_type: 'real',
    structure: 'symmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'ML_Graph: adjacency matrices from machine learning datasets, Olaf      
Schenk.  D.  Pasadakis,  C.  L.  Alappat,  O.  Schenk,  and  G.        
Wellein, "K-way p-spectral clustering on Grassmann manifolds," 2020.   
https://arxiv.org/abs/2008.13210                                       
                                                                       
For $n$ data points, the connectivity matrix $G \in \mathbb{R}^{n\times
n}$ is created from a k nearest neighbors routine, with k set such that
the resulting graph is connected. The similarity matrix $S \in         
\mathbb{R}^{n\times n}$ between the data points is defined as          
                                                                       
\begin{equation}                                                       
    s_{ij} = \max\{s_i(j), s_j(i)\} \;\; \text{with}\;                 
    s_i(j) = \exp (-4 \frac{\|x_i - x_j \|^2}{\sigma_i^2} )            
\end{equation}                                                         
                                                                       
with $\sigma_i$ standing for the Euclidean distance between the $i$th  
data point and its nearest k-nearest neighbor. The adjacency matrix $W$
is then created as $W = G \odot S$.                                    
                                                                       
Besides the adjacency matrices $W$, the node labels for each graph are 
part of the submission.  If the graph has c classes, the node labels   
are integers in the range 0 to c-1.                                    
                                                                       
Graph: yeast_30NN Classes: 12                                          
',
    aux_fields: 'label: full 1484-by-1
',    image_files: '',
}
