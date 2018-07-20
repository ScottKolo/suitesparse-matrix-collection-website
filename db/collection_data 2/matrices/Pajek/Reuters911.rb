{
    matrix_id: '1517',
    name: 'Reuters911',
    group: 'Pajek',
    description: 'Pajek network: Reuters news, Sept 11 to Nov 15, 2001',
    author: 'S. Corman, T. Kuhn, R. Mcphee, K. Dooley',
    editor: 'V. Batagelj, A. Mrvar',
    date: '2001',
    kind: 'undirected weighted graph sequence',
    problem_2D_or_3D: '0',
    num_rows: '13332',
    num_cols: '13332',
    nonzeros: '296076',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '22',
    pattern_symmetry: '1.000',
    numeric_symmetry: '1.000',
    rb_type: 'integer',
    structure: 'symmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: '------------------------------------------------------------------------------
Pajek network converted to sparse adjacency matrix for inclusion in UF sparse 
matrix collection, Tim Davis.  For Pajek datasets, See V. Batagelj & A. Mrvar,
http://vlado.fmf.uni-lj.si/pub/networks/data/.  This is the "Days" network.   
------------------------------------------------------------------------------
The Reuters terror news network is based on all stories released during 66    
consecutive days by the news agency Reuters concerning the September 11 attack
on the U.S., beginning at 9:00 AM EST 9/11/01. The vertices of a network are  
words (terms); there is an edge between two words iff they appear in the same 
text unit (sentence). The weight of an edge is its frequency. The network has 
n=13332 vertices (different words in the news) and m = 243447 edges, 50859    
with value larger than 1. There are no loops in the network.                  
Steven R. Corman, Timothy Kuhn, Robert D. Mcphee and Kevin J. Dooley          
(2002): Studying Complex Discursive Systems: Centering Resonance Analysis of  
Communication.                                                                
------------------------------------------------------------------------------
When converted to a sparse adjacency matrix for the UF Sparse Matrix          
Collection, Day{i} is the graph of the ith day.  The diagonal entry           
Day{i}(k,k) is 1 if word k appears in any news on the ith day.  Note          
that it may not appear in conjunction with other words in the same            
sentence on that day.  The sum of nnz(tril(Day{i})) for i=1:66 is 243,447.    
The overall matrix A is the sum of the Day{i} matrices.  A(i,j) is the number 
of times words i and j appear in same sentence (for i not equal to j).  A(k,k)
is the number of days the word k appears in any news report.                  
Note that this network has been renamed to Reuters911 here.                   
------------------------------------------------------------------------------
',
    aux_fields: 'Day: cell 66-by-1
nodename: full 13332-by-29
',    norm: '1.904122e+03',
    min_singular_value: '1.372014e-32',
    condition_number: '1.387829e+35',
    svd_rank: '10682',
    null_space_dimension: '2650',
    full_numerical_rank: 'no',
    svd_gap: '63378608.176634',
    image_files: 'Reuters911.png,Reuters911_scc.png,Reuters911_svd.png,Reuters911_graph.gif,',
}
