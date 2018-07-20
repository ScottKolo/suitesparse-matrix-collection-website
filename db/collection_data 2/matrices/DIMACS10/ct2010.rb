{
    matrix_id: '2588',
    name: 'ct2010',
    group: 'DIMACS10',
    description: 'DIMACS10 set: redistrict/ct2010 and ct2010a',
    author: 'W. Zhao',
    editor: 'H. Meyerhenke',
    date: '2010',
    kind: 'undirected weighted graph',
    problem_2D_or_3D: '0',
    num_rows: '67578',
    num_cols: '67578',
    nonzeros: '336352',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    pattern_symmetry: '1.000',
    numeric_symmetry: '1.000',
    rb_type: 'integer',
    structure: 'symmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'DIMACS10 redistrict set                                               
                                                                      
Redistricting and Graph Partitioning                                  
====================================                                  
                                                                      
The xx2010a graphs are generated from U.S. Census 2010 and Tiger/Line 
2010 shapefiles. They are freely available from census.gov web site.  
The xx prefix in the filenames are the U.S. Postal Service acronyms of
the state names, e.g.  ny is New York.                                
                                                                      
* the vertices are the Census Blocks;                                 
* two vertices have an edge if and only if the corresponding Census   
    Blocks share a line segment on their border, i.e. rook-style      
    neighboring.                                                      
* each vertex has two weights:                                        
   (1) Census2010 POP100 or the number of people living in that       
       Census Block, and.                                             
   (2) Land Area of the Census Block in square meters                 
* the edge weights are the pseudo-length of the shared borderlines.   
    The pseudo-length is calculated using sqrt(x^2 + y^2), x and y    
    being the differences in longitudes and latitudes of each line    
    segment on the shared borderlines.  Then the result is multiplied 
    by 10^7 to make the edge weights integers.                        
* each Census Block gets identified by a point, and the XY coordinates
    are the longitudes and latitudes of each point.  The points are   
    selected by Census to be internal to the Census Blocks, but the   
    tech doc says that they are not always internal (but always very  
    close).                                                           
                                                                      
Author: Will Zhao                                                     
Added to the DIMACS10 collection by Henning Meyerhenke, 2011          
                                                                      
The DIMACS10 collection also includes versions of these graphs with   
unweighted edges.  The two sets have been merged in this collection.  
If you want the unweighted version, just drop the edge weights on the 
graphs present in this collection.                                    
',
    aux_fields: 'population: full 67578-by-1
area: full 67578-by-1
coord: full 67578-by-2
',    image_files: 'ct2010.png,ct2010_gplot.png,ct2010_graph.gif,',
}
