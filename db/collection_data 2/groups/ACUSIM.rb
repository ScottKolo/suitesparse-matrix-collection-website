{
    name: 'AG-Monien',
    num_matrices: '32',
    notes: 'AG-Monien Graph Collection, Ralf Diekmann and Robert Preis
http://www2.cs.uni-paderborn.de/fachbereich/AG/monien/RESEARCH/PART/graphs.html

A collection of test graphs from various sources.  Many of the graphs
include XY or XYZ coordinates.  This set also includes some graphs from
the Harwell-Boeing collection, the NASA matrices, and some random matrices
which are not included here in the AG-Monien/ group of the UF Collection.
In addition, two graphs already appear in other groups:

   AG-Monien/big : same as Nasa/barth5, Pothen/barth5 (not included here)
   AG-Monien/cage_3_11 : same as Pajek/GD98_c (included here)

The AG-Monien/GRID subset is not included.  It contains square grids that
are already well-represented in the UF Collection.

These graphs appear in this set, as individual graphs, all with XY or XYZ
coordinates:

    AG-Monien/3elt
    AG-Monien/3elt_dual
    AG-Monien/airfoil1
    AG-Monien/airfoil1_dual
    AG-Monien/big_dual
    AG-Monien/crack
    AG-Monien/crack_dual
    AG-Monien/grid1
    AG-Monien/grid1_dual
    AG-Monien/grid2
    AG-Monien/grid2_dual
    AG-Monien/netz4504
    AG-Monien/netz4504_dual
    AG-Monien/ukerbe1
    AG-Monien/ukerbe1_dual
    AG-Monien/whitaker3
    AG-Monien/whitaker3_dual
    AG-Monien/brack2
    AG-Monien/wave
    AG-Monien/diag
    AG-Monien/L
    AG-Monien/L-9
    AG-Monien/stufe
    AG-Monien/stufe-10
    AG-Monien/biplane-9
    AG-Monien/shock-9

Note that L-9, stufe-10, biplane-9 and shock-9 were L.9, stufe.10,
etc, in the AG-Monien set.  The UF Collection does not permit "." in
the matrix name.

Six more problem sets are included as sequences, each sequence being
a single problem instance in the UF Collection:

   AG-Monien/bfly:  10 butterfly graphs 3..12
   AG-Monien/cage:  45 cage graphs 3..12
   AG-Monien/cca:   10 cube-connected cycle graphs, no wrap
   AG-Monien/ccc:   10 cube-connected cycle graphs, with wrap
   AG-Monien/debr:  18 De Bruijn graphs
   AG-Monien/se:    13 shuffle-exchange graphs

The primary graph (Problem.A) in each sequence is the last graph
in the sequence.  In the Matrix Market and Rutherford-Boeing
formats, the filenames will differ from the names given below,
because in the UF Collection, the file name gives the place of
a graph in its sequence.  The correspondence with the original
graph names is given below.

Graphs in the bfly sequence:

     1 : BFLY3        :      24 nodes      48 edges      96 nonzeros
     2 : BFLY4        :      64 nodes     128 edges     256 nonzeros
     3 : BFLY5        :     160 nodes     320 edges     640 nonzeros
     4 : BFLY6        :     384 nodes     768 edges    1536 nonzeros
     5 : BFLY7        :     896 nodes    1792 edges    3584 nonzeros
     6 : BFLY8        :    2048 nodes    4096 edges    8192 nonzeros
     7 : BFLY9        :    4608 nodes    9216 edges   18432 nonzeros
     8 : BFLY10       :   10240 nodes   20480 edges   40960 nonzeros
     9 : BFLY11       :   22528 nodes   45056 edges   90112 nonzeros
    10 : BFLY12       :   49152 nodes   98304 edges  196608 nonzeros

Graphs in the cage sequence:

     1 : cage_3_5     :      10 nodes      15 edges      30 nonzeros
     2 : cage_3_6     :      14 nodes      21 edges      42 nonzeros
     3 : cage_3_7     :      24 nodes      36 edges      72 nonzeros
     4 : cage_3_8     :      30 nodes      45 edges      90 nonzeros
     5 : cage_3_9.1   :      58 nodes      87 edges     174 nonzeros
     6 : cage_3_9.2   :      58 nodes      87 edges     174 nonzeros
     7 : cage_3_9.3   :      58 nodes      87 edges     174 nonzeros
     8 : cage_3_9.4   :      58 nodes      87 edges     174 nonzeros
     9 : cage_3_9.5   :      58 nodes      87 edges     174 nonzeros
    10 : cage_3_9.6   :      58 nodes      87 edges     174 nonzeros
    11 : cage_3_9.7   :      58 nodes      87 edges     174 nonzeros
    12 : cage_3_9.8   :      58 nodes      87 edges     174 nonzeros
    13 : cage_3_9.9   :      58 nodes      87 edges     174 nonzeros
    14 : cage_3_9.10  :      58 nodes      87 edges     174 nonzeros
    15 : cage_3_9.11  :      58 nodes      87 edges     174 nonzeros
    16 : cage_3_9.12  :      58 nodes      87 edges     174 nonzeros
    17 : cage_3_9.13  :      58 nodes      87 edges     174 nonzeros
    18 : cage_3_9.14  :      58 nodes      87 edges     174 nonzeros
    19 : cage_3_9.15  :      58 nodes      87 edges     174 nonzeros
    20 : cage_3_9.16  :      58 nodes      87 edges     174 nonzeros
    21 : cage_3_9.17  :      58 nodes      87 edges     174 nonzeros
    22 : cage_3_9.18  :      58 nodes      87 edges     174 nonzeros
    23 : cage_3_10.1  :      70 nodes     105 edges     210 nonzeros
    24 : cage_3_10.2  :      70 nodes     105 edges     210 nonzeros
    25 : cage_3_10.3  :      70 nodes     105 edges     210 nonzeros
    26 : cage_3_11    :     112 nodes     168 edges     336 nonzeros
    27 : cage_3_12    :     126 nodes     189 edges     378 nonzeros
    28 : cage_3_13    :     272 nodes     408 edges     816 nonzeros
    29 : cage_3_14    :     406 nodes     609 edges    1218 nonzeros
    30 : cage_3_15    :     620 nodes     930 edges    1860 nonzeros
    31 : cage_4_5     :      19 nodes      38 edges      76 nonzeros
    32 : cage_4_6     :      26 nodes      52 edges     104 nonzeros
    33 : cage_4_7     :      76 nodes     152 edges     304 nonzeros
    34 : cage_4_8     :      80 nodes     160 edges     320 nonzeros
    35 : cage_5_5     :      30 nodes      75 edges     150 nonzeros
    36 : cage_5_6     :      42 nodes     105 edges     210 nonzeros
    37 : cage_6_6     :      62 nodes     186 edges     372 nonzeros
    38 : cage_7_5     :      50 nodes     175 edges     350 nonzeros
    39 : cage_8_5     :      94 nodes     376 edges     752 nonzeros
    40 : cage_8_6     :     114 nodes     456 edges     912 nonzeros
    41 : cage_9_5     :     118 nodes     531 edges    1062 nonzeros
    42 : cage_9_6     :     146 nodes     657 edges    1314 nonzeros
    43 : cage_10_6    :     182 nodes     910 edges    1820 nonzeros
    44 : cage_12_6    :     266 nodes    1596 edges    3192 nonzeros
    45 : cage_14_6    :     366 nodes    2562 edges    5124 nonzeros

Graphs in the cca sequence:

     1 : CCA3         :      24 nodes      28 edges      56 nonzeros
     2 : CCA4         :      64 nodes      80 edges     160 nonzeros
     3 : CCA5         :     160 nodes     208 edges     416 nonzeros
     4 : CCA6         :     384 nodes     512 edges    1024 nonzeros
     5 : CCA7         :     896 nodes    1216 edges    2432 nonzeros
     6 : CCA8         :    2048 nodes    2816 edges    5632 nonzeros
     7 : CCA9         :    4608 nodes    6400 edges   12800 nonzeros
     8 : CCA10        :   10240 nodes   14336 edges   28672 nonzeros
     9 : CCA11        :   22528 nodes   31744 edges   63488 nonzeros
    10 : CCA12        :   49152 nodes   69632 edges  139264 nonzeros

Graphs in the ccc sequence:

     1 : CCC3         :      24 nodes      36 edges      72 nonzeros
     2 : CCC4         :      64 nodes      96 edges     192 nonzeros
     3 : CCC5         :     160 nodes     240 edges     480 nonzeros
     4 : CCC6         :     384 nodes     576 edges    1152 nonzeros
     5 : CCC7         :     896 nodes    1344 edges    2688 nonzeros
     6 : CCC8         :    2048 nodes    3072 edges    6144 nonzeros
     7 : CCC9         :    4608 nodes    6912 edges   13824 nonzeros
     8 : CCC10        :   10240 nodes   15360 edges   30720 nonzeros
     9 : CCC11        :   22528 nodes   33792 edges   67584 nonzeros
    10 : CCC12        :   49152 nodes   73728 edges  147456 nonzeros

Graphs in the debr sequence:

     1 : DEBR3        :       8 nodes      13 edges      26 nonzeros
     2 : DEBR4        :      16 nodes      29 edges      58 nonzeros
     3 : DEBR5        :      32 nodes      61 edges     122 nonzeros
     4 : DEBR6        :      64 nodes     125 edges     250 nonzeros
     5 : DEBR7        :     128 nodes     253 edges     506 nonzeros
     6 : DEBR8        :     256 nodes     509 edges    1018 nonzeros
     7 : DEBR9        :     512 nodes    1021 edges    2042 nonzeros
     8 : DEBR10       :    1024 nodes    2045 edges    4090 nonzeros
     9 : DEBR11       :    2048 nodes    4093 edges    8186 nonzeros
    10 : DEBR12       :    4096 nodes    8189 edges   16378 nonzeros
    11 : DEBR13       :    8192 nodes   16381 edges   32762 nonzeros
    12 : DEBR14       :   16384 nodes   32765 edges   65530 nonzeros
    13 : DEBR15       :   32768 nodes   65533 edges  131066 nonzeros
    14 : DEBR16       :   65536 nodes  131069 edges  262138 nonzeros
    15 : DEBR17       :  131072 nodes  262141 edges  524282 nonzeros
    16 : DEBR18       :  262144 nodes  524285 edges 1048570 nonzeros
    17 : DEBR19       :  524288 nodes 1048573 edges 2097146 nonzeros
    18 : DEBR20       : 1048576 nodes 2097149 edges 4194298 nonzeros

Graphs in the se sequence:

     1 : SE3          :       8 nodes      10 edges      20 nonzeros
     2 : SE4          :      16 nodes      21 edges      42 nonzeros
     3 : SE5          :      32 nodes      46 edges      92 nonzeros
     4 : SE6          :      64 nodes      93 edges     186 nonzeros
     5 : SE7          :     128 nodes     190 edges     380 nonzeros
     6 : SE8          :     256 nodes     381 edges     762 nonzeros
     7 : SE9          :     512 nodes     766 edges    1532 nonzeros
     8 : SE10         :    1024 nodes    1533 edges    3066 nonzeros
     9 : SE11         :    2048 nodes    3070 edges    6140 nonzeros
    10 : SE12         :    4096 nodes    6141 edges   12282 nonzeros
    11 : SE13         :    8192 nodes   12286 edges   24572 nonzeros
    12 : SE14         :   16384 nodes   24573 edges   49146 nonzeros
    13 : SE15         :   32768 nodes   49150 edges   98300 nonzeros

',

}

