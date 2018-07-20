{
    matrix_id: '1891',
    name: 'eurqsa',
    group: 'Marini',
    description: 'Economic time series reconciliation; Di Fonzo (Univ Padua) & Marini (ISTAT)',
    author: 'T. Di Fonzo, M. Marini',
    editor: 'T. Davis',
    date: '2008',
    kind: 'economic problem',
    problem_2D_or_3D: '0',
    num_rows: '7245',
    num_cols: '7245',
    nonzeros: '46142',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '3',
    num_dmperm_blocks: '3',
    structural_full_rank: 'true',
    structural_rank: '7245',
    pattern_symmetry: '1.000',
    numeric_symmetry: '1.000',
    rb_type: 'real',
    structure: 'symmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'Economic statistics are often published in the form of time series, as a   
collection of observations sampled at equally-spaced time periods (months, 
quarters). Economic concepts behind such statistics are often linked by a  
system of linear relationships, deriving from the economic theory. However,
these restrictions are rarely met by the original time series for various  
reasons.  Then, data sets of real-world variables generally show           
discrepancies with respect to prior restrictions on their values.  The     
adjustment of a set of data in order to satisfy a number of accounting     
restrictions -and thus to remove any discrepancy -is generally known as    
the reconciliation problem.                                                
                                                                           
The matrix comes from a real application composed of 183 quarterly time    
series observed over 28 quarters, which form the system of European        
national accounts by institutional sectors (EURQSA). Then, the number of   
observations to be reconciled is n = 28 x 183 = 5124. The variables are    
connected by a system of 30 linear relationships. Moreover, each quarterly 
time series must be in line with the same variables observed yearly (due   
to different compilation practices quarterly and annual estimates might    
differ). The total number of constraints of the system is k = 2121. On     
the whole, matrix A has dimension 7245, with block (1,1) of dimension 5124.
',
    b_field: 'full 7245-by-1
',
    norm: '3.475770e+06',
    min_singular_value: '1.238881e-14',
    condition_number: '2.805573e+20',
    svd_rank: '7035',
    sprank_minus_rank: '210',
    null_space_dimension: '210',
    full_numerical_rank: 'no',
    svd_gap: '303053652.942919',
    image_files: 'eurqsa.png,eurqsa_dmperm.png,eurqsa_scc.png,eurqsa_svd.png,eurqsa_graph.gif,',
}
