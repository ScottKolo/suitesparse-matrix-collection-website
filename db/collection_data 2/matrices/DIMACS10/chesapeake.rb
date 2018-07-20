{
    matrix_id: '2457',
    name: 'chesapeake',
    group: 'DIMACS10',
    description: 'DIMACS10 set: clustering/chesapeake',
    author: 'unknown',
    editor: 'H. Meyerhenke',
    date: '2011',
    kind: 'undirected graph',
    problem_2D_or_3D: '0',
    num_rows: '39',
    num_cols: '39',
    nonzeros: '340',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
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
                                                                        
                                                                        
clustering:  Clustering Benchmarks                                      
                                                                        
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
',
    norm: '1.149585e+01',
    min_singular_value: '5.004333e-17',
    condition_number: '229717949636170944',
    svd_rank: '37',
    null_space_dimension: '2',
    full_numerical_rank: 'no',
    svd_gap: '1116084333135222.125000',
    image_files: 'chesapeake.png,chesapeake_svd.png,chesapeake_graph.gif,',
}
