{
    matrix_id: '2363',
    name: 'M40PI_n',
    group: 'Rommes',
    description: 'Transmission line, 40 sections, MIMO, index-2 DAE (CEPEL, Brazil)',
    author: 'F. Freitas',
    editor: 'J. Rommes',
    date: '2010',
    kind: 'eigenvalue/model reduction problem',
    problem_2D_or_3D: '1',
    num_rows: '2182',
    num_cols: '2182',
    nonzeros: '5341',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '94',
    structural_full_rank: 'false',
    structural_rank: '2179',
    pattern_symmetry: '1.000',
    numeric_symmetry: '0.023',
    rb_type: 'real',
    structure: 'unsymmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'Power system models from Joost Rommes, Nelson Martins, Francisco Freitas       
                                                                               
This collection of power system models originates from real power systems,     
mostly based on Brazilian interconection power systems (BIPS) models (the file 
names refer to the actual power system related to a given year electric load   
scenario).  These systems [E dx/dt = Ax + Bu ; y=Cx + Du] are interesting      
benchmarks for several numerical algorithms, including eigenvalue algorithms   
(dominant modes/poles/zeros, stability analysis, computing rightmost           
eigenvalues and/or with smallest damping ratio, eigenvalue parameter           
sensitivity) and model order reduction (large-scale DAEs ). Refer to the       
corresponding publications for more details on the systems and numerical       
results of several eigenvalue/model order reduction algorithms. For            
corresponding software, see http://sites.google.com/site/rommes/software       
                                                                               
If E is not present in the problem, then E=I should be assumed.                
If D is not present, D=0 should be assumed.  (Note that as of Jan 2011,        
no problem has a nonzero D).                                                   
                                                                               
The iv vector in some of the files is a vector with nonzeros (ones) at indices 
that represent state-variables (the zeros are algebraic variables). One can    
construct the descriptor matrix E by E=spdiags(iv,0,n,n). This iv vector is    
generated by the Brazilian power system simulation software, and can be more   
efficient to compute with.                                                     
                                                                               
Test systems:                                                                  
                                                                               
All power system models originate from CEPEL ( http://www.cepel.br/ )          
                                                                               
power system    file                    n  #inputs #outputs  references        
------------    ----               ------  ------- --------  --                
New England     ww_36_pmec_36          66   1       1        [1]               
BIPS/97         ww_vref_6405        13251   1       1        [1]               
BIPS/2007       xingo_afonso_itaipu 13250   1       1        [2]               
BIPS/97         mimo8x8_system      13309   8       8        [3]               
BIPS/97         mimo28x28_system    13251  28      28        [3]               
BIPS/97         mimo46x46_system    13250  46      46        [4]               
Juba5723        juba40k             40337   2       1        [5]               
Bauru5727       bauru5727           40366   2       2        [5]               
zeros_nopss     zeros_nopss_13k     13296  46      46        [5]               
xingo6u         descriptor_xingo6u  20738   1       6        [5]               
nopss           nopss_11k           11685   1       1        [5]               
xingo3012       xingo3012           20944   2       2        [5]               
bips98_606      bips98_606           7135   4       4        [6]               
bips98_1142     bips98_1142          9735   4       4        [6]               
bips98_1450     bips98_1450         11305   4       4        [6]               
bips07_1693     bips07_1693         13275   4       4        [6]               
bips07_1998     bips07_1998         15066   4       4        [6]               
bips07_2476     bips07_2476         16861   4       4        [6]               
bips07_3078     bips07_3078         21128   4       4        [6]               
                                                                               
Several SISO/MIMO test systems, whose main components are transmission lines   
(TL) are available.  TLs are modeled by ladder networks, comprised of cascaded 
RLC PI-circuits, having fixed parameters.                                      
                                                                               
   Transmission lines with 10--80 PI Sections are considered.                  
   PIsections10to80.zip            [Submitted]                                 
                                                                               
   There are two kinds of files for representing a same system: the file with  
   termination _n refers to an index-2 system DAE model, while _n1 means       
   a model of the same system, but for an index-1 DAE representation.  The     
   representation of each test system has the form [E dx/dt = Ax + Bu ; y=Cx]  
                                                                               
References:                                                                    
                                                                               
[1] ROMMES, J., MARTINS, N., Efficient computation of transfer function        
    dominant poles using subspace acceleration.  IEEE Trans. on Power Systems, 
    Vol.  21, Issue 3, Aug. 2006, pp. 1218-1226                                
                                                                               
[2] ROMMES, J., MARTINS, N., Computing large-scale system eigenvalues most     
    sensitive to parameter changes, with applications to power system          
    small-signal stability , IEEE Transactions on Power Systems, Vol. 23, Issue
    2, May 2008, pp.  434-442                                                  
                                                                               
[3] ROMMES, J., MARTINS, N., Efficient computation of multivariable transfer   
    function dominant poles using subspace acceleration.  2006, IEEE Trans. on,
    Power Systems, Vol. 21, Issue 4, Nov. 2006, pp.  1471-1483.                
                                                                               
[4] MARTINS, N., PELLANDA, P.C.,ROMMES, J., Computation of transfer function   
    dominant zeros with applications to oscillation damping control of large   
    power systems, IEEE Trans. on Power Systems, Vol. 22, Issue 4, Nov. 2007,  
    pp.  1657-1664                                                             
                                                                               
[5] ROMMES, J., MARTINS, N., FREITAS, F., Computing Rightmost Eigenvalues for  
    Small-Signal Stability Assessment of Large-Scale Power Systems, IEEE       
    Transactions on Power Systems, Vol. 25, Issue 2, May 2010, pp.929-938      
                                                                               
[6] FREITAS, F., ROMMES, J., MARTINS, N., Gramian-Based Reduction Method       
    Applied to Large Sparse Power System Descriptor Models, IEEE Transactions  
    on Power Systems, Vol. 23, Issue 3, August 2008, pp. 1258-1270             
',
    aux_fields: 'B: sparse 2182-by-3
C: sparse 3-by-2182
E: sparse 2182-by-2182
',    norm: '6.680807e+01',
    min_singular_value: '1.734583e-17',
    condition_number: '3851535601473358336',
    svd_rank: '2179',
    sprank_minus_rank: '0',
    null_space_dimension: '3',
    full_numerical_rank: 'no',
    svd_gap: '6653618683.547671',
    image_files: 'M40PI_n.png,M40PI_n_dmperm.png,M40PI_n_svd.png,M40PI_n_graph.gif,',
}
