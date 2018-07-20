{
    matrix_id: '1504',
    name: 'IMDB',
    group: 'Pajek',
    description: 'Pajek network: IMDB movie/actor network, www.imdb.com',
    author: 'www.imdb.com',
    editor: 'V. Batagelj',
    date: '2006',
    kind: 'bipartite graph',
    problem_2D_or_3D: '0',
    num_rows: '428440',
    num_cols: '896308',
    nonzeros: '3782463',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '132714',
    num_dmperm_blocks: '34003',
    structural_full_rank: 'false',
    structural_rank: '250516',
    pattern_symmetry: '0.000',
    numeric_symmetry: '0.000',
    rb_type: 'binary',
    structure: 'rectangular',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: '------------------------------------------------------------------------------
Pajek network converted to sparse adjacency matrix for inclusion in UF sparse 
matrix collection, Tim Davis.  For Pajek datasets, See V. Batagelj & A. Mrvar,
http://vlado.fmf.uni-lj.si/pub/networks/data/.                                
------------------------------------------------------------------------------
A(i,j)=1 if actor j played in movie i.  colname(j,:) is the name of the actor.
Column j = 362,181 is Kevin Bacon.  Year of movie i is year(i).               
category(i) gives the category of movie i, use code(category(i),:).           
1: Drama, 2: Short, 3: Documentary, 4: Comedy, 5: Western, 6: Family,         
7: Mystery, 8: Thriller, 9: -, 10: Music, 11: Crime, 12: Sci-Fi, 13: Horror,  
14: War, 15: Fantasy, 16: Romance, 17: Adventure, 18: Animation, 19: Action,  
20: Musical, 21: Film-Noir, 99: Unknown.                                      
Remember that in MATLAB, A(i,:) is slow to compute; A(:,i) is faster.  If you 
want row i of a sparse matrix, access the ith column of the transpose instead.
aux.ActorBacon(j) is the Bacon number of actor j.  aux.MovieBacon(i) is the   
Bacon number of movie i.  The largest ActorBacon number is 8 (for 10 actors). 
------------------------------------------------------------------------------
MATLAB code for computing the Bacon numbers                                   
    Bacon = Problem.aux.KevinBacon ;                                          
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
',
    aux_fields: 'category: full 428440-by-1
year: full 428440-by-1
code: full 99-by-11
KevinBacon: full 1-by-1
ActorBacon: full 896308-by-1
MovieBacon: full 428440-by-1
colname: full 896308-by-30
',    image_files: 'IMDB.png,IMDB_scc.png,IMDB_graph.gif,',
}
