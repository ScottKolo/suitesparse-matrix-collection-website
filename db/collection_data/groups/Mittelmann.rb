{
    name: 'Mittelmann',
    num_matrices: '30',
    notes: 'Linear programming problems from H. Mittelmann

12 Jul 2006

 ====================================
 Benchmark of commercial LP solvers
 ====================================

H. Mittelmann (mittelmann@asu.edu)

Logfiles of these runs at: http://plato.asu.edu/ftp/lp_logs/

This benchmark was run on a Linux-PC (3.2 GHz P4, 4 GB RDRAM, Linux-2.6).
The MPS-datafiles for all testcases are in one of (see column "s")

 http://miplib.zib.de/ [1]
 http://plato.asu.edu/ftp/lptestset/ [2]
 http://www.sztaki.hu/~meszaros/public_ftp/lptestset/
(NETLIB[3], MISC[4], PROBLEMATIC[5], STOCHLP[6], KENNINGTON[7], INFEAS[8])

NOTE: files in [2-8] need to be expanded with emps in same directory!

B/D/P: barrier/dual/primal simplex

The following codes were tested:

 XP-B/D/P     http://www.dashoptimization.com/ (XPRESS-MP-15.20)
 CPLEX-B/D/P  http://www.cplex.com/ (ILOG-CPLEX-10.0)
 MOSEK-4.0.0.32 http://www.mosek.com (barrier)
 LOQO-6.06    http://www.princeton.edu/~rvdb/
 LIPSOL       linprog in Matlab 7.0

Times are user times in secs including input and crossover to a feasible basis
for all codes except LOQO and LIPSOL. "$" without crossover.

=====================================================
s problem  CPLEX-B   CPLEX-D/P   MOSEK   LOQO LIPSOL
=====================================================
2 cont1       952    2174/1530    5855      -      -
2 cont11     1983        /       45727      -      -
2 cont4      3505    2929/736      686      -      -
2 cont1_l$   3171                 7102
2 cont11_l$     f                 2081
1 dano3mip     16      36/23        14     85     14
4 dbic1       112     116/23       129    156    104
3 dfl001       14      20/46        12    152     13
2 fome12      169     141/407       57    485     88
2 fome13       87     669/1170      88    963     85
5 gen4         31       2/71        24     33    233
7 ken-18       11      12/68        21    274     25
5 l30           f      28/80         3      3   1691
4 lp22          6      40/72         7     62      9
4 mod2         10      82/192       20     61     25
2 neos        109      27/154      167    754    321
2 neos1        30     808/16        35    153     37
2 neos2        21     492/29        30     92     29
2 neos3       201    3208/5915     562   1505    502
4 nsct2        69       2/2         50    840    131
4 nug15        77    2912/1278     111   1855    118
2 nug20      1276                 1490  26402   3092
2 nug08-3rd  1279    2367/        1925          2004
2 pds-40      142      37/166      183  15908    252
2 pds-100     740     160/1586    1951          1673
3 qap12        10     203/112       15    201     17
3 qap15        74    2871/1230     107   1978    145
2 rail4284    239    5235/6476     386   4123    534
4 rlfprim       4       1/6          5     64      7
8 self         64     113/100      203     85   3194
2 sgpf5y6      11       3/2         18   fail     23
2 spal_004$  4669                 8020      m
4 stat96v1    390     188/641       47        
4 stat96v2 >125000  29364/fail     390        
4 stat96v4      8     396/553       30     
6 storm-125    18      15/26        62     35     62
2 storm_1000  319     632/1482     916   1269    802
1 stp3d       168    1067/11715    196   2347    218
2 watson_2     49     192/346       66    313     70
4 world        10      94/237       25     44     28
=====================================================



Problem sizes


problem           rows    columns     nonzeros
===============================================
 cont1           160793      40398       399991
 cont11          160793      80396       439989
 cont4           160793      40398       398399
 cont1_l        1918399     641598      5752001
 cont11_l       1468599     981396      4403001
 dano3mip_lp       3203      13873        79656
 dbic1            43200     183235      1038761                    
 dfl001            6072      12230        41873
 fome12           24285      48920       167492
 fome13           48569      97840       334984
 gen4              1538       4297       110174
 ken-18          105128     154699       512719
 l30               2702      15380        64790
 lp22              2959      13434        78994
 mod2             35665      31728       220116
 neos            479120      36786      1084461
 neos1           131582       1892       468094
 neos2           132569       1560       552596
 neos3           512209       6624      1542816
 nsct2            23004      14981       686396
 nug15             6331      22275       110700
 nug20            15240      72600       304800
 nug08-3rd        19728      20448       139008
 pds-40           66845     212859       605678
 pds-100         156244     505360      1390539
 qap12             3193       8856        44244
 qap15             6331      22275       110700
 rail4284          4284    1092610     12372358
 rlfprim          57422       8052       264483
 self               960       7364      1148845
 sgpf5y6         246078     308634       902275
 spal_004         10203     321696     46167908
 stat96v1          5995     197472       588798
 stat96v2         29089     957432      2852184
 stat96v4          3173      62212       490472
 stormG2-125      66186     157496       529317
 stormG2_1000    528186    1259121      4228817
 stp3d           159488     204880       662128
 watson_2        352014     671861      1843716
 world            35511      32734       220748
===============================================

',

}

