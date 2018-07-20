{
    matrix_id: '2497',
    name: 'packing-500x100x100-b050',
    group: 'DIMACS10',
    description: 'DIMACS10 set: numerical/packing-500x100x100-b050',
    author: 'M Wittman, T. Zeiser',
    editor: 'H. Meyerhenke',
    date: '2011',
    kind: 'undirected graph',
    problem_2D_or_3D: '0',
    num_rows: '2145852',
    num_cols: '2145852',
    nonzeros: '34976486',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '14',
    pattern_symmetry: '1.000',
    numeric_symmetry: '1.000',
    rb_type: 'binary',
    structure: 'symmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: '10th DIMACS Implementation Challenge:                                    
                                                                         
http://www.cc.gatech.edu/dimacs10/index.shtml                            
                                                                         
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
                                                                         
There are 10 data sets in the DIMACS10 collection:                       
                                                                         
Kronecker:  synthetic graphs from the Graph500 benchmark                 
dyn-frames: frames from a 2D dynamic simulation                          
Delaunay:   Delaunay triangulations of random points in the plane        
coauthor:   citation and co-author networks                              
streets:    real-world street networks                                   
Walshaw:    Chris Walshaw\'s graph partitioning archive                   
matrix:     graphs from the UF collection (not added here)               
random:     random geometric graphs (random points in the unit square)   
clustering: real-world graphs commonly used as benchmarks                
numerical:  graphs from numerical simulation                             
                                                                         
Some of the graphs already exist in the UF Collection.  In some cases,   
the original graph is unsymmetric, with values, whereas the DIMACS       
graph is the symmetrized pattern of A+A\'.  Rather than add duplicate     
patterns to the UF Collection, a MATLAB script is provided at            
http://www.cise.ufl.edu/research/sparse/dimacs10 which downloads         
each matrix from the UF Collection via UFget, and then performs whatever 
operation is required to convert the matrix to the DIMACS graph problem. 
Also posted at that page is a MATLAB code (metis_graph) for reading the  
DIMACS *.graph files into MATLAB.                                        
                                                                         
                                                                         
numerical: graphs from numerical simulations                             
                                                                         
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
',
    image_files: 'packing-500x100x100-b050.png,packing-500x100x100-b050_scc.png,packing-500x100x100-b050_graph.gif,',
}
