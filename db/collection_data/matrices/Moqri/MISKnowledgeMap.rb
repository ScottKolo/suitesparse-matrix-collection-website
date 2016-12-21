{
    matrix_id: '2663',
    name: 'MISKnowledgeMap',
    group: 'Moqri',
    description: 'document similarity graph',
    author: 'M. Moqri',
    editor: 'T. Davis',
    date: '2015',
    kind: 'undirected weighted graph',
    problem_2D_or_3D: '0',
    num_rows: '2427',
    num_cols: '2427',
    nonzeros: '57022',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    pattern_symmetry: '1.000',
    numeric_symmetry: '1.000',
    rb_type: 'real',
    structure: 'symmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'KnowledgeMap -- Visualizing Invisible Networks of Knowledge  
in a Scientific Discipline, by M. Moqri, Univ of Florida,    
Warrington College of Business Administration.               
http://misknowledgemap.warrington.ufl.edu/                   
http://www.moqri.com/                                        
                                                             
This undirected wieghted graph describes the similarities    
between a set of 2427 articles.  A(i,j) is 0 if articles     
i and j are not similar at all, 1 if they are extremely      
similar.  The similarity metric is based on LSA, co-citation,
and bibliographic coupling of the articles.  Information     
about each node is as follows:                               
                                                             
label: the title of the document                    (text)   
year: year published (ranges from 2005 to 2014)     (number) 
source: journal                                     (text)   
authors: list of authors                            (text)   
keywords: list of keywords separated by semicolons  (text)   
topics: list of keywords separated by semicolons    (text)   
abstract:                                           (text)   
times cited:                                        (number) 
',
    aux_fields: 'Label: full 2427-by-204
Year: full 2427-by-1
Source: full 2427-by-50
Authors: full 2427-by-351
Keywords: full 2427-by-330
Topics: full 2427-by-268
Abstract: cell 2427-by-1
CiteCnt: full 2427-by-1
',}
