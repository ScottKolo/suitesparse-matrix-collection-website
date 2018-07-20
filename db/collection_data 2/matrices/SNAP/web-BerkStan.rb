{
    matrix_id: '2300',
    name: 'web-BerkStan',
    group: 'SNAP',
    description: 'Web graph of Berkeley and Stanford',
    author: 'S. Kamvar',
    editor: 'J. Leskovec',
    date: '2002',
    kind: 'directed graph',
    problem_2D_or_3D: '0',
    num_rows: '685230',
    num_cols: '685230',
    nonzeros: '7600595',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '109406',
    pattern_symmetry: '0.250',
    numeric_symmetry: '0.250',
    rb_type: 'binary',
    structure: 'unsymmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'Networks from SNAP (Stanford Network Analysis Platform) Network Data Sets,     
Jure Leskovec http://snap.stanford.edu/data/index.html                         
email jure at cs.stanford.edu                                                  
                                                                               
Berkeley-Stanford web graph                                                    
                                                                               
NOTE:  This is an earlier version (2002) of the data obtained from             
Sep Kamvar, Stanford (2003) (the Kamvar/Stanford_Berkeley graph                
in the UF collection, matrix ID 980).                                          
                                                                               
Dataset information                                                            
                                                                               
Nodes represent pages from berkely.edu and stanford.edu domains and directed   
edges represent hyperlinks between them. The data was collected in 2002.       
                                                                               
Dataset statistics                                                             
Nodes   685230                                                                 
Edges   7600595                                                                
Nodes in largest WCC    654782 (0.956)                                         
Edges in largest WCC    7499425 (0.987)                                        
Nodes in largest SCC    334857 (0.489)                                         
Edges in largest SCC    4523232 (0.595)                                        
Average clustering coefficient  0.6149                                         
Number of triangles     64690980                                               
Fraction of closed triangles    0.08769                                        
Diameter (longest shortest path)    669                                        
90-percentile effective diameter    10                                         
                                                                               
Source (citation)                                                              
                                                                               
J. Leskovec, K. Lang, A. Dasgupta, M. Mahoney. Community Structure in Large    
Networks: Natural Cluster Sizes and the Absence of Large Well-Defined Clusters.
arXiv.org:0810.1355, 2008.                                                     
                                                                               
Files                                                                          
File    Description                                                            
web-BerkStan.txt.gz     Berkely-Stanford web graph from 2002                   
                                                                               
NOTE: a near duplicate of this problem already appears in the UF Collection:   
                                                                               
web-BerkStan        Kamvar/Stanford_Berkeley                                   
                    in SNAP/:       n: 685,230   nz: 7,600,595                 
                    in Kamvar/      n: 683,446   nz: 7,583,376                 
                                                                               
                    I obtained the Kamvar/Stanford_Berkeley directly           
                    from Sep Kamvar.  It is slightly smaller than the          
                    version in SNAP.  It is thus likely that Sep created       
                    multiple versions of the graph.                            
',
    image_files: 'web-BerkStan.png,web-BerkStan_scc.png,web-BerkStan_APlusAT_graph.gif,web-BerkStan_graph.gif,',
}
