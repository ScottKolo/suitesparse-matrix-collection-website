{
    name: 'Williams',
    num_matrices: '7',
    notes: 'Matrices used by S. Williams et al for sparse matrix multiplication on GPUs.

14 matrices were used in the following paper:

    S. Williams, L. Oliker, R. Vuduc, J. Shalf, K. Yelick, J. Demmel,
    "Optimization of Sparse Matrix-Vector Multiplication on Emerging Multicore
    Platforms", Parallel Computing Volume 35, Issue 3, March 2009, Pages
    178-194.  Special issue on Revolutionary Technologies for Acceleration of
    Emerging Petascale Applications.

    https://hpcrd.lbl.gov/~swwilliams/research/papers/parco08_spmv.pdf
    http://dx.doi.org/10.1016/j.parco.2008.12.006

This same set of 14 matrices was also used in a subsequent technical report by
NVIDIA:

    http://www.nvidia.com/object/nvidia_research_pub_001.html "Efficient Sparse
    Matrix-Vector Multiplication on CUDA" Nathan Bell and Michael Garland, in,
    "NVIDIA Technical Report NVR-2008-004", December 2008

file            Name            dim*    nnz     description

dense2          Dense           2K      4.0M    dense matrix in sparse format
pdb1HYS         Protein         36K     4.3M    protein data bank 1HYS
consph          FEM/Spheres     83K     6.0M    FEM concentric spheres
cant            FEM/Cantilever  62K     4.0M    FEM cantilever
pwtk            Wind Tunnel     218K    11.6M   pressurized wind tunnel
rma10           FEM/Harbor      47K     2.37M   3D CFD of Charleston Harbor
qcd5_4          QCD             49K     1.90M   quark propagators (QCD/LGT)
shipsec1        FEM/Ship        141K    3.98M   FEM Ship section / detail
mac_econ_fwd500 Economics       207K    1.27M   Macroeconomic model
mc2depi         Epidemiology    526K    2.1M    2D Markov model of epidemic
cop20k_A        FEM/Accelerator 121K    2.62M   Accelerator cavity design
scircuit        Circuit         171K    959K    Motorola circuit simulation
webbase-1M      webbase         1M      3.1M    Web connectivity matrix
rail4284        LP              4Kx1.1M 11.3M   Railways set cover,
                                                constraint matrix

(*) the matrix is square if only one dimension listed.

Six of the matrices are nearly identical to the matrices already in the
UF Collection.  They are thus not included in the UF Collection:

    pwtk        Boeing/pwtk.  The matrix here differs in only 2 entries.
                The pattern is the same.  The norm of the difference between
                the two is round-off error (5e-26).  Tim Davis obtained the
                matrix directly from Roger Grimes, and was careful to preserve
                each significant bit.  The Boeing/pwtk matrix in the UF
                Collection is thus the correct one.

    qcd5_4      this is the binary pattern of QCD/conf5_4-* and QCD/conf6_0-*,
                ids: 1598:1604 in the UF Collection.  These are from B.
                Medeke, and were orginally collected by R. Boisvert et al.
                for the Matrix Market.

    rma10       Bova/rma10.  The matrix here is binary; Bova/rma10 is not.
                The rma10 matrix here is binary pattern of Problem.A +
                Problem.Zeros in the UF Collection.  Tim Davis obtained
                Bova/rma10 directly from the matrix creator, Steve Bova.

    scircuit    Hamm/scircuit.  The pattern is the same.  The 1-norm of the
                difference is 5e-10, which is round-off error.  This matrix was
                obtained by Tim Davis from Steve Hamm (at Motorola) directly,
                and thus the Hamm/scircuit matrix already in the UF Collection
                is the correct version.

    shipsec1    similar to DNVS/shipsec1, but different patterns.  It appears
                that the shipsec1 matrix here is missing many entries in
                the lower right quadrant.  The pattern differs by 0.9M
                entries.  The matrix is from C. Damhaug, collected by
                J. Koster.

    rail4284    an exact submatrix of Mittelmann/rail4284.  The UF matrix has
                exactly 4284 more columns than the rail4284 matrix in this
                collection.  Let A1 be the Mittelman/rail4284 matrix, and let
                A2 be the rail4284 matrix in this collection.  Then A2 is
                identical to A1(:,m+1:end).  The submatrix A1(:,1:4284) of the
                matrix in the UF collection is exactly equal to -speye(m).
                Tim Davis obtained the matrix directly from Mittelmann\'s
                test set.  It\'s possible that multiple versions exist, or
                that the identity was added as the initial basis.  In any
                case, the rail4284 matrix from Williams\' test set is not
                added to the UF Collection.

The remaining eight matrices are unique to this set of matrices, but one is of
no interest (dense2).  Thus, there are seven matrices in the Williams/ group in
the UF Collection:

    pdb1HYS
    consph
    cant
    mac_econ_fwd500
    mc2depi
    cop20k_A
    webbase-1M

I presume the pdb1HYS matrix comes from this source:

    http://www.rcsb.org/pdb/explore.do?structureId=1HYS
    http://dx.doi.org/10.2210/pdb1hys/pdb
    Crystal structure of HIV-1 reverse transcriptase in complex with a
    polypurine tract RNA:DNA.
    Sarafianos, S.G., Das, K., Tantillo, C., Clark Jr., A.D., Ding,
    J., Whitcomb, J.M., Boyer, P.L., Hughes, S.H., Arnold, E.
    Journal: (2001) EMBO J. 20: 1449-1461
    PubMed: 11250910  
    PubMedCentral: PMC145536  
    DOI: 10.1093/emboj/20.6.1449  
    Search Related Articles in PubMed  
    PubMed Abstract:
    We have determined the 3.0 A resolution structure of wild-type HIV-1
    reverse transcriptase in complex with an RNA:DNA oligonucleotide whose
    sequence includes a purine-rich segment from the HIV-1 genome called the
    polypurine tract (PPT). The PPT is resistant to ribonuclease... [ Read
    More & Search PubMed Abstracts ] We have determined the 3.0 A resolution
    structure of wild-type HIV-1 reverse transcriptase in complex with an
    RNA:DNA oligonucleotide whose sequence includes a purine-rich segment from
    the HIV-1 genome called the polypurine tract (PPT). The PPT is resistant
    to ribonuclease H (RNase H) cleavage and is used as a primer for second
    DNA strand synthesis.  The \'RNase H primer grip\', consisting of amino
    acids that interact with the DNA primer strand, may contribute to RNase H
    catalysis and cleavage specificity. Cleavage specificity is also
    controlled by the width of the minor groove and the trajectory of the
    RNA:DNA, both of which are sequence dependent. An unusual \'unzipping\' of 7
    bp occurs in the adenine stretch of the PPT: an unpaired base on the
    template strand takes the base pairing out of register and then, following
    two offset base pairs, an unpaired base on the primer strand
    re-establishes the normal register. The structural aberration extends to
    the RNase H active site and may play a role in the resistance of PPT to
    RNase H cleavage. 

',

}

