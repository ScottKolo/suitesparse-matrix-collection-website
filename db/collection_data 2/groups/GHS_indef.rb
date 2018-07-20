{
    name: 'GHS_psdef',
    num_matrices: '32',
    notes: 'Positive definite matrices collected by Nick Gould, Yifan Hu, & Jennifer Scott.
some in unassembled finite-element form (and some in both forms).

The GHS_indef and GHS_psdef collection includes matrices from the Matrix
Market (math.nist.gov/MatrixMarket), Rutherford-Boeing collection (Duff,
Grimes, and Lewis), the Parasol project (see below), Kumfert and Pothen,
CUTE/CUTEr optimization test set, the UF sparse matrix collection
(those are excluded here), Andy Wathen, Mario Arioli, Christian Damhaug,
Alison Ramage, Anshul Gupta (Gupta\'s matrices are in the UF collection
under the Gupta directory), Olaf Schenk (matrices from Olaf Schenk are
located here, as well as in the existing Schenk_* directories),
Miroslav Tuma, Maros and Meszaros, and the Dept. of Mathematical
Modelling in DIAMO (Czech Republic).

See ftp://ftp.numerical.rl.ac.uk/pub/matrices/symmetric/ for the
GHS collection.

NOTE: some of the *.rse and *.pse finite-element matrices contain
unsorted indices.

NOTE: matrices can have upper-case or lower case matrix-type fields
(rsa or RSA, for example).

--------------------------------------------------------------------------------
==> audi.readme <==
--------------------------------------------------------------------------------
Source:   www.parallab.uib.no/parasol/data.html  (matrix AUDI)

Automotive crankshaft model with over 900,000 TETRA
              elements (MSC-CRANKSHAFT-900K)

symmetric rb matrix                                                     rb.mtx        18129441        117962       4912222      13099257
rsa                   943695        943695      39297771             0

Order           943695    
No. entries    39297771                          

--------------------------------------------------------------------------------
==> bmw7st_1.readme <==
--------------------------------------------------------------------------------
Source:   www.parallab.uib.no/parasol/data.html  (matrix BMW7st_1)

stiffness matrix                                                        BMW7ST_1       2540788         47116       1246836       1246836
rsa                   141347        141347       3740507             0


Linear static analysis of a car body.
              (MSC-CARBODY-140K)
Order         141347
No. entries   3740507                         

--------------------------------------------------------------------------------
==> bmwcra_1.readme <==
--------------------------------------------------------------------------------
Source:   www.parallab.uib.no/parasol/data.html  (matrix BMWCRA_1)

Automotive crankshaft model with nearly 150,000 TETRA
              elements (MSC-CRANKSHAFT-150K)

stiffness matrix                                                        BMWCRA_1
       3647183         49591       1798796       1798796
rsa                   148770        148770       5396386             0
(3I14)          (3I14)          (1P,3E25.16E3)      

Order           148770    
No. entries    5396386                          

--------------------------------------------------------------------------------
==> copter1.readme <==
--------------------------------------------------------------------------------
Source: Kumfert and Pothen

require files
copter1.kp   (which is obtained from copter1.ptr and copter1.chac)

N = 17222
NZ = 96921 (= off diag entries in upper triangle) 
Off diag. pattern only supplied.

--------------------------------------------------------------------------------
==> copter2.readme <==
--------------------------------------------------------------------------------
Source: Kumfert and Pothen

require files
copter2.kp   (which is obtained from copter2.ptr and copter2.chac)

N = 55476
NZ = 352238 (= off diag entries in upper triangle) 
Off diag. pattern only supplied.

--------------------------------------------------------------------------------
==> crankseg_1.readme <==
--------------------------------------------------------------------------------
Source:   www.parallab.uib.no/parasol/data.html  (matrix CRANKSG1)

Linear static analysis of a crankshaft detail
              (MSC-CRANKSHAFT-SEGMENT-1)

Order           52,804    
No. entries  5,333,507                          

--------------------------------------------------------------------------------
==> crankseg_2.readme <==
--------------------------------------------------------------------------------
Source:   www.parallab.uib.no/parasol/data.html  (matrix CRANKSG2

Linear static analysis of a crankshaft detail
              (MSC-CRANKSHAFT-SEGMENT-2)

Order           52,804    
No. entries  7,106,348                          


--------------------------------------------------------------------------------
==> Fcondp2.readme <==
--------------------------------------------------------------------------------

Source: Christain Damahug (Det Norske Veritas, Oslo, Norway)


 Matrix Format Converter
 -----------------------

 Total number of nodes ................................... :       33913
 Number of active nodes .................................. :       33913
 Number of external nodes ................................ :           0
 Number of nodes with at least one boundary condition .... :         552
 Number of nodes with at least one load intensity ........ :           0
 Number of free variables (equations) .................... :      201822

 Number of elements ...................................... :       35836
 Number of material types ................................ :           1
 Maximum number of nodes connected to an element ......... :           4

 Size of complete element node connectivity .............. :      143344
 Size of stripped element node connectivity .............. :      143344
 Size of active adjacency set representation ............. :      282912
 TIME FOR WRITING MATRIX FORMAT        =     7.7391695976E+00


 = = = = = = = = = = = = = = = = = = = = = = = = =
 = = = Storage Requirement Matrix Convertion = = =
 = = = = = = = = = = = = = = = = = = = = = = = = =

 Total INTEGER workspace need (runtime measure) .......... :     1173274
 Total REAL workspace need (runtime measure) ............. :           0

 Total CPU-time consumption to convert the matrix ........ : 8.89181E+00

 Wall-Clock Time Consumption ............................. : 1.70000E+01

--------------------------------------------------------------------------------
==> finance256.readme <==
--------------------------------------------------------------------------------
Source: Kumfert and Pothen

require files
finance256.kp   (which is obtained from finance256.ptr and finance256.chac)

N = 37376
NZ = 130560 (= off diag entries in upper triangle) 
Off diag. pattern only supplied.

--------------------------------------------------------------------------------
==> ford1.readme <==
--------------------------------------------------------------------------------
Source: Kumfert and Pothen

require files
ford1.kp   (which is obtained from ford1.ptr and ford1.chac)

N = 18728
NZ = 41424 (= off diag entries in upper triangle) 
Off diag. pattern only supplied.

--------------------------------------------------------------------------------
==> ford2.readme <==
--------------------------------------------------------------------------------
Source: Kumfert and Pothen

require files
ford2.kp   (which is obtained from ford2.ptr and ford2.chac)

N = 100196
NZ = 222246 (= off diag entries in upper triangle) 
Off diag. pattern only supplied.

--------------------------------------------------------------------------------
==> Fullb.readme <==
--------------------------------------------------------------------------------

Source: Christain Damahug (Det Norske Veritas, Oslo, Norway)


 Matrix Format Converter
 -----------------------

 Total number of nodes ................................... :       33442
 Number of active nodes .................................. :       33442
 Number of external nodes ................................ :           0
 Number of nodes with at least one boundary condition .... :         586
 Number of nodes with at least one load intensity ........ :           0
 Number of free variables (equations) .................... :      199187

 Number of elements ...................................... :       59738
 Number of material types ................................ :           3
 Maximum number of nodes connected to an element ......... :           4

 Size of complete element node connectivity .............. :      195585
 Size of stripped element node connectivity .............. :      195585
 Size of active adjacency set representation ............. :      294498
 TIME FOR WRITING MATRIX FORMAT        =     1.0402039528E+01


 = = = = = = = = = = = = = = = = = = = = = = = = =
 = = = Storage Requirement Matrix Convertion = = =
 = = = = = = = = = = = = = = = = = = = = = = = = =

 Total INTEGER workspace need (runtime measure) .......... :     1584759
 Total REAL workspace need (runtime measure) ............. :           0

 Total CPU-time consumption to convert the matrix ........ : 1.18173E+01

 Wall-Clock Time Consumption ............................. : 2.90000E+01

--------------------------------------------------------------------------------
==> Halfb.readme <==
--------------------------------------------------------------------------------


Source: Christain Damahug (Det Norske Veritas, Oslo, Norway)


 Matrix Format Converter
 -----------------------

 Total number of nodes ................................... :       38556
 Number of active nodes .................................. :       38556
 Number of external nodes ................................ :           0
 Number of nodes with at least one boundary condition .... :        2470
 Number of nodes with at least one load intensity ........ :           0
 Number of free variables (equations) .................... :      224617

 Number of elements ...................................... :       70211
 Number of material types ................................ :           3
 Maximum number of nodes connected to an element ......... :           4

 Size of complete element node connectivity .............. :      221764
 Size of stripped element node connectivity .............. :      221764
 Size of active adjacency set representation ............. :      321406
 TIME FOR WRITING MATRIX FORMAT        =     1.1791002274E+01


 = = = = = = = = = = = = = = = = = = = = = = = = =
 = = = Storage Requirement Matrix Convertion = = =
 = = = = = = = = = = = = = = = = = = = = = = = = =

 Total INTEGER workspace need (runtime measure) .......... :     1774320
 Total REAL workspace need (runtime measure) ............. :           0

 Total CPU-time consumption to convert the matrix ........ : 1.33733E+01

 Wall-Clock Time Consumption ............................. : 4.20000E+01

--------------------------------------------------------------------------------
==> hood.readme <==
--------------------------------------------------------------------------------

Source:   www.parallab.uib.no/parasol/data.html  (matrix HOOD)

 INDEED Test Matrix (DC-mh)                                              DCMH          1945127         22055        549449       1373623
RSA                   220542        220542       5494489             0


Order         220542
No. entries   5494489                         

--------------------------------------------------------------------------------
==> inline_1.readme <==
--------------------------------------------------------------------------------
Source:   www.parallab.uib.no/parasol/data.html  (INLINE_1)

Inline skater (MSC-INLINE)

stiffness matrix                                                        INLINE_1      12607923        167905       6220009       6220009
rsa                   503712        503712      18660027             0
(3I14)          (3I14)          (1P,3E25.16E3)      

Order           503,712
No. entries  18,660,027                          

--------------------------------------------------------------------------------
==> ldoor.readme <==
--------------------------------------------------------------------------------
Source:   www.parallab.uib.no/parasol/data.html  (LDOOR)

Large door

 INDEED Test Matrix                                                      TUER          8403290         95221       2373734       5934335
RSA                   952203        952203      23737339             0

Order           952,203
No. entries  23,737,339                          

--------------------------------------------------------------------------------
==> msdoor.readme <==
--------------------------------------------------------------------------------
Source:   www.parallab.uib.no/parasol/data.html  (MSDOOR)

 INDEED Test Matrix smltuer                                              smtuer        3656527         41587       1032840       2582100
rsa                   415863        415863      10328399             0


Order           415,863
No. entries  10,328,399                          

--------------------------------------------------------------------------------
==> M_T1.readme <==
--------------------------------------------------------------------------------
Source: Chrisitan Damhaug
www.parallab.uib.no/parasol/data.html

We have this matrix available in assembled and element form

Tubular joint

Order 97,578
when assembled, entries = 4,925,574
unassembled entries = 6,882,780

 DNV-Ex 1 : Tubular joint-1999-01-17                                     M_T1    
       1747955           533         26727       1720695             0
RSE                    97578          5328        267270       6882780          
(10I8)          (10I8)          (3e26.16)                               
            

--------------------------------------------------------------------------------
==> MT1.readme <==
--------------------------------------------------------------------------------
Source: Chrisitan Damhaug

Element Repr of                                                                 
         27260           533         26727             0             0
PSE                    97578          5328        267270             0
(10I8)          (10I8)          

--------------------------------------------------------------------------------
==> OILPAN.readme <==
--------------------------------------------------------------------------------
Source:   www.parallab.uib.no/parasol/data.html

 1. TEST MATRIX FROM INPRO FOR PARASOL (OIL-PAN)
        649791          7376        183547        458868             0
rsa                    73752         73752       1835470             0


Order 73752
No. entries   1835470                         

--------------------------------------------------------------------------------
==> onera_dual.readme <==
--------------------------------------------------------------------------------
Source: Kumfert and Pothen

require files
onera_dual.kp   (which is obtained from onera_dual.ptr and onera_dual.chac)

N = 85567
NZ = 166817 (= off diag entries in upper triangle) 
Off diag. pattern only supplied.

--------------------------------------------------------------------------------
==> opt1.readme <==
--------------------------------------------------------------------------------
Source: Christain Damhaug

Matrix Representation of OPT1, part of condeep cylinder                 OPT1    
          5367            98          5269             0             0
PSE                    15449           977         52686             0
(10I8)          (10I8)          

--------------------------------------------------------------------------------
==> pds10.readme <==
--------------------------------------------------------------------------------
Source: Kumfert and Pothen

require files
pds10.kp   (which is obtained from pds10.ptr and pds10.chac)

N = 16558
NZ = 66550 (= off diag entries in upper triangle) 
Off diag. pattern only supplied.

--------------------------------------------------------------------------------
==> ramage02.readme <==
--------------------------------------------------------------------------------

Source: Alison Ramage (Strathclyde)

Pattern only element problem

1FINITE ELEMENT PROBLEM. NAVIER-STOKES AND CONTINUITY EQUATIONS.        RAMAGE02
          6495           141          6354             0             0          
PSE                    16830          1400         82598             0          
(10I8)          (13I6)          (3(1PE22.14))       (3(1PE22.14))

--------------------------------------------------------------------------------
==> s3dkq4m2.readme <==
--------------------------------------------------------------------------------
Source: Matrix Market
BUT had to edit file as in RB format so RSA needs to be rsa

   * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
   * cyl shell R/t=1000 unif 100 x 150 quad mesh DK-el with drill rotat      *
   *                    Key = s3dkq4m2 , Type = RSA                          *
   * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
       *  Dimension N                                      =      90449  *
       *  Number of nonzero elements                       =    2455670  *
       *  Average number of nonzero elements/Column        =    27.1498  *
       *  Standard deviation for above average             =     2.6724  *
       *  Nonzero elements in strict lower part            =    2365221  *
       *  Nonzero elements in strict upper part            =    2365221  *
       *  Nonzero elements in main diagonal                =      90449  *
       *  Weight of longest column                         =         59  *
       *  Weight of shortest column                        =         15  *
       *  Matching elements in symmetry                    =          0  *
       *  Relative Symmetry Match (symmetry=1)             = NaN         *
       *  Average distance of a(i,j)  from diag.           =  0.395E+03  *
       *  Standard deviation for above average             =  0.285E+03  *
       *-----------------------------------------------------------------*
       *  Frobenius norm of A                              =  0.403E+06  *
       *  Frobenius norm of symmetric part                 =  0.403E+06  *
       *  Frobenius norm of nonsymmetric part              =  0.000E+00  *
       *  Maximum element in A                             =  0.215E+04  *
       *  Percentage of weakly diagonally dominant rows    =  0.329E-02  *
       *  Percentage of weakly diagonally dominant columns =  0.329E-02  *
       *-----------------------------------------------------------------*
       *  Lower bandwidth  (max: i-j, a(i,j) .ne. 0)       =          0  *
       *  Upper bandwidth  (max: j-i, a(i,j) .ne. 0)       =        614  *
       *  Maximum Bandwidth                                =        615  *
       *  Average Bandwidth                                =  0.609E+03  *
       *  Number of nonzeros in skyline storage            =   55071893  *
       *  90% of matrix is in the band of width            =       1217  *
       *  80% of matrix is in the band of width            =       1211  *
       *  The total number of nonvoid diagonals is         =        331  *
       *  The 10 most important diagonals are (offsets)    :             *
       *     0     1     2     3     4     5   603   602   604   601     *
       *  The accumulated percentages they represent are   :             *
       *   3.7   7.4  11.0  14.7  18.3  22.0  25.6  29.2  32.9  36.5     *
       *-----------------------------------------------------------------*
       *  The matrix does not have a block structure                     *
       *-----------------------------------------------------------------*

--------------------------------------------------------------------------------
==> s3dkt3m2.readme <==
--------------------------------------------------------------------------------
Source: Matrix Market
But had to edit file as in RB format RSA needs to be rsa

   * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
   * cyl shell 100 x 150 unif triang mesh R/t = 1000                         *
   *                    Key = s3dkt3m2 , Type = RSA                          *
   * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
       *  Dimension N                                      =      90449  *
       *  Number of nonzero elements                       =    1921955  *
       *  Average number of nonzero elements/Column        =    21.2490  *
       *  Standard deviation for above average             =     2.3992  *
       *  Nonzero elements in strict lower part            =    1831506  *
       *  Nonzero elements in strict upper part            =    1831506  *
       *  Nonzero elements in main diagonal                =      90449  *
       *  Weight of longest column                         =         47  *
       *  Weight of shortest column                        =          9  *
       *  Matching elements in symmetry                    =          0  *
       *  Relative Symmetry Match (symmetry=1)             = NaN         *
       *  Average distance of a(i,j)  from diag.           =  0.339E+03  *
       *  Standard deviation for above average             =  0.299E+03  *
       *-----------------------------------------------------------------*
       *  Frobenius norm of A                              =  0.641E+06  *
       *  Frobenius norm of symmetric part                 =  0.641E+06  *
       *  Frobenius norm of nonsymmetric part              =  0.000E+00  *
       *  Maximum element in A                             =  0.322E+04  *
       *  Percentage of weakly diagonally dominant rows    =  0.000E+00  *
       *  Percentage of weakly diagonally dominant columns =  0.000E+00  *
       *-----------------------------------------------------------------*
       *  Lower bandwidth  (max: i-j, a(i,j) .ne. 0)       =          0  *
       *  Upper bandwidth  (max: j-i, a(i,j) .ne. 0)       =        614  *
       *  Maximum Bandwidth                                =        615  *
       *  Average Bandwidth                                =  0.609E+03  *
       *  Number of nonzeros in skyline storage            =   55071893  *
       *  90% of matrix is in the band of width            =       1219  *
       *  80% of matrix is in the band of width            =       1215  *
       *  The total number of nonvoid diagonals is         =        328  *
       *  The 10 most important diagonals are (offsets)    :             *
       *     0     1     2     3     4     5   603   604   605     6     *
       *  The accumulated percentages they represent are   :             *
       *   4.7   9.4  14.1  18.8  23.4  28.1  32.7  37.4  42.0  46.6     *
       *-----------------------------------------------------------------*
       *  The matrix does not have a block structure                     *
       *-----------------------------------------------------------------*

--------------------------------------------------------------------------------
==> SHIP_001.readme <==
--------------------------------------------------------------------------------
Source: Chrisitan Damhaug
www.parallab.uib.no/parasol/data.html

We have this matrix available in assembled and element form

Ship structure, predesign model
Order 34,920
when assembled, entries = 2,339,575
unassembled entries = 3,686,133

DNV-Ex 2 : Ship structure, predesign model-1999-01-17                   SHIP_001
        937389           344         15511        921534             0
RSE                    34920          3431        155106       3686133          
(10I8)          (10I8)          (3e26.16)                               
            

--------------------------------------------------------------------------------
==> SHIP_003.readme <==
--------------------------------------------------------------------------------
Source: Chrisitan Damhaug
www.parallab.uib.no/parasol/data.html

We have this matrix available in assembled and element form

Ship structure from production run
Order 121,728
when assembled, entries = 4,103,881
unassembled entries =9,728,631

            
DNV-Ex 3 : Ship structure from production run-1999-01-17                SHIP_003
       2525272          4547         88317       2432408             0
RSE                   121728         45464        883167       9729631          
(10I8)          (10I8)          (3e26.16)                               

--------------------------------------------------------------------------------
==> SHIPSEC1.readme <==
--------------------------------------------------------------------------------
Source: Chrisitan Damhaug
www.parallab.uib.no/parasol/data.html

We have this matrix available in assembled and element form

Ship section/detail from production run
Order 140,874
when assembled, entries = 3,977,139
unassembled entries = 6,882,780

DNV-Ex 4 : Ship section/detail from production run-1999-01-17           SHIPSEC1
       2237188          4104         78502       2154582             0
RSE                   140874         41037        785016       8618328          
(10I8)          (10I8)          (3e26.16)                               
            

--------------------------------------------------------------------------------
==> SHIPSEC5.readme <==
--------------------------------------------------------------------------------
Source: Chrisitan Damhaug
www.parallab.uib.no/parasol/data.html

We have this matrix available in assembled and element form

Ship section/detail from production run
Order 179,86
when assembled, entries = 6,146,478
unassembled entries = 11,118,602

DNV-PARASOL Ship section 5-1999-01-15                                   Shipsec5
       2885670          5228        100791       2779651             0
RSE                   179860         52272       1007907      11118602          
(10I8)          (10I8)          (4e22.14)                               
            

--------------------------------------------------------------------------------
==> SHIPSEC8.readme <==
--------------------------------------------------------------------------------
Source: Chrisitan Damhaug
www.parallab.uib.no/parasol/data.html

We have this matrix available in assembled and element form

Ship section/detail from production run
Order 114,919
when assembled, entries = 3,384,159
unassembled entries = 7,431,867

DNV-PARASOL Ship section 5-1999-01-15                                   Shipsec5
       2885670          5228        100791       2779651             0
RSE                   179860         52272       1007907      11118602          
(10I8)          (10I8)          (4e22.14)                               
            

--------------------------------------------------------------------------------
==> Srb1.readme <==
--------------------------------------------------------------------------------

Source: Christain Damahug (Det Norske Veritas, Oslo, Norway)

 Matrix Format Converter
 -----------------------

 Total number of nodes ................................... :        9198
 Number of active nodes .................................. :        9154
 Number of external nodes ................................ :           0
 Number of nodes with at least one boundary condition .... :          44
 Number of nodes with at least one load intensity ........ :           0
 Number of free variables (equations) .................... :       54924

 Number of elements ...................................... :        9240
 Number of material types ................................ :           0
 Maximum number of nodes connected to an element ......... :           4

 Size of complete element node connectivity .............. :       36872
 Size of stripped element node connectivity .............. :       36784
 Size of active adjacency set representation ............. :       73128
 TIME FOR WRITING MATRIX FORMAT        =     1.9468524456E+00


 = = = = = = = = = = = = = = = = = = = = = = = = =
 = = = Storage Requirement Matrix Convertion = = =
 = = = = = = = = = = = = = = = = = = = = = = = = =

 Total INTEGER workspace need (runtime measure) .......... :      303533
 Total REAL workspace need (runtime measure) ............. :           0

 Total CPU-time consumption to convert the matrix ........ : 2.20886E+00

 Wall-Clock Time Consumption ............................. : 6.00000E+00

--------------------------------------------------------------------------------
==> Thread.readme <==
--------------------------------------------------------------------------------

Source: Christain Damahug (Det Norske Veritas, Oslo, Norway)


 Matrix Format Converter
 -----------------------

 Total number of nodes ................................... :       10008
 Number of active nodes .................................. :        9912
 Number of external nodes ................................ :           0
 Number of nodes with at least one boundary condition .... :          96
 Number of nodes with at least one load intensity ........ :           0
 Number of free variables (equations) .................... :       29736

 Number of elements ...................................... :        2176
 Number of material types ................................ :           1
 Maximum number of nodes connected to an element ......... :          20

 Size of complete element node connectivity .............. :       42080
 Size of stripped element node connectivity .............. :       41888
 Size of active adjacency set representation ............. :      486760
 TIME FOR WRITING MATRIX FORMAT        =     1.0886445045E+00


 = = = = = = = = = = = = = = = = = = = = = = = = =
 = = = Storage Requirement Matrix Convertion = = =
 = = = = = = = = = = = = = = = = = = = = = = = = =

 Total INTEGER workspace need (runtime measure) .......... :      201743
 Total REAL workspace need (runtime measure) ............. :           0

 Total CPU-time consumption to convert the matrix ........ : 1.33817E+00

 Wall-Clock Time Consumption ............................. : 4.00000E+00

--------------------------------------------------------------------------------
==> THREAD.readme <==
--------------------------------------------------------------------------------
Source: Chrisitan Damhaug
www.parallab.uib.no/parasol/data.html

We have this matrix available in assembled and element form

Threaded connector/contact problem
Order 29,736
when assembled, entries = 2,249,892
unassembled entries = 3,718,704

DNV-Ex 7 : Threaded connector/contact problem-1999-01-17                THREAD  
        942461           218         12567        929676             0
RSE                    29736          2176        125664       3718704          
(10I8)          (10I8)          (3e26.16)                               
            

--------------------------------------------------------------------------------
==> trdheim.readme <==
--------------------------------------------------------------------------------
Source: Christian Damhaug (DNR)

Matrix Representation of TRDHEIM, Mesh of the Trondheim Fjord           TRDHEIM 
          4473            82          4391             0             0
PSE                    22098           813         43902             0
(10I8)          (10I8)          

--------------------------------------------------------------------------------
==> Troll.readme <==
--------------------------------------------------------------------------------

Source: Christain Damahug (Det Norske Veritas, Oslo, Norway)

 Matrix Format Converter
 -----------------------

 Total number of nodes ................................... :       72545
 Number of active nodes .................................. :       71151
 Number of external nodes ................................ :           0
 Number of nodes with at least one boundary condition .... :        1394
 Number of nodes with at least one load intensity ........ :           0
 Number of free variables (equations) .................... :      213453

 Number of elements ...................................... :       41084
 Number of material types ................................ :           2
 Maximum number of nodes connected to an element ......... :           8

 Size of complete element node connectivity .............. :      321888
 Size of stripped element node connectivity .............. :      318624
 Size of active adjacency set representation ............. :     1260528
 TIME FOR WRITING MATRIX FORMAT        =     8.8573474884E+00


 = = = = = = = = = = = = = = = = = = = = = = = = =
 = = = Storage Requirement Matrix Convertion = = =
 = = = = = = = = = = = = = = = = = = = = = = = = =

 Total INTEGER workspace need (runtime measure) .......... :     1570220
 Total REAL workspace need (runtime measure) ............. :           0

 Total CPU-time consumption to convert the matrix ........ : 1.10190E+01

 Wall-Clock Time Consumption ............................. : 2.90000E+01

--------------------------------------------------------------------------------
==> tsyl201.readme <==
--------------------------------------------------------------------------------
Source: Christian Damhaug (DNR)

Matrix Representation of TSYL201, part of condeep cylinder              TSYL201 
          5857            97          5760             0             0
PSE                    20685           960         57600             0
(10I8)          (10I8)          

--------------------------------------------------------------------------------
==> vanbody.readme <==
--------------------------------------------------------------------------------
Source:   www.parallab.uib.no/parasol/data.html  (LDOOR)

Van body model (MSC-VANBODY)

stiffness matrix                                                        XCARBO_1        810349         15691        397329        397329
rsa                    47072         47072       1191985             0

Order     47072
entries 1191985

--------------------------------------------------------------------------------
==> X104.readme <==
--------------------------------------------------------------------------------
Source: Chrisitan Damhaug
www.parallab.uib.no/parasol/data.html

We have this matrix available in assembled and element form

Beam joint (SESAM test example no. 104)
Order 108,384
when assembled, entries = 5,138,004
unassembled entries = 7,065,546

DNV-Ex 8 : SESAM test example no 104-1999-01-17                         X104    
       1795848           602         28859       1766387             0
RSE                   108384          6019        288588       7065546          
(10I8)          (10I8)          (3e26.16)                               


################################################################################
These are matrices in unassembled finite-element form:
################################################################################


--------------------------------------------------------------------------------
==> Fcondp2.readme <==
--------------------------------------------------------------------------------

Source: Christain Damahug (Det Norske Veritas, Oslo, Norway)


 Matrix Format Converter
 -----------------------

 Total number of nodes ................................... :       33913
 Number of active nodes .................................. :       33913
 Number of external nodes ................................ :           0
 Number of nodes with at least one boundary condition .... :         552
 Number of nodes with at least one load intensity ........ :           0
 Number of free variables (equations) .................... :      201822

 Number of elements ...................................... :       35836
 Number of material types ................................ :           1
 Maximum number of nodes connected to an element ......... :           4

 Size of complete element node connectivity .............. :      143344
 Size of stripped element node connectivity .............. :      143344
 Size of active adjacency set representation ............. :      282912
 TIME FOR WRITING MATRIX FORMAT        =     7.7391695976E+00


 = = = = = = = = = = = = = = = = = = = = = = = = =
 = = = Storage Requirement Matrix Convertion = = =
 = = = = = = = = = = = = = = = = = = = = = = = = =

 Total INTEGER workspace need (runtime measure) .......... :     1173274
 Total REAL workspace need (runtime measure) ............. :           0

 Total CPU-time consumption to convert the matrix ........ : 8.89181E+00

 Wall-Clock Time Consumption ............................. : 1.70000E+01

--------------------------------------------------------------------------------
==> Fullb.readme <==
--------------------------------------------------------------------------------

Source: Christain Damahug (Det Norske Veritas, Oslo, Norway)


 Matrix Format Converter
 -----------------------

 Total number of nodes ................................... :       33442
 Number of active nodes .................................. :       33442
 Number of external nodes ................................ :           0
 Number of nodes with at least one boundary condition .... :         586
 Number of nodes with at least one load intensity ........ :           0
 Number of free variables (equations) .................... :      199187

 Number of elements ...................................... :       59738
 Number of material types ................................ :           3
 Maximum number of nodes connected to an element ......... :           4

 Size of complete element node connectivity .............. :      195585
 Size of stripped element node connectivity .............. :      195585
 Size of active adjacency set representation ............. :      294498
 TIME FOR WRITING MATRIX FORMAT        =     1.0402039528E+01


 = = = = = = = = = = = = = = = = = = = = = = = = =
 = = = Storage Requirement Matrix Convertion = = =
 = = = = = = = = = = = = = = = = = = = = = = = = =

 Total INTEGER workspace need (runtime measure) .......... :     1584759
 Total REAL workspace need (runtime measure) ............. :           0

 Total CPU-time consumption to convert the matrix ........ : 1.18173E+01

 Wall-Clock Time Consumption ............................. : 2.90000E+01

--------------------------------------------------------------------------------
==> Halfb.readme <==
--------------------------------------------------------------------------------


Source: Christain Damahug (Det Norske Veritas, Oslo, Norway)


 Matrix Format Converter
 -----------------------

 Total number of nodes ................................... :       38556
 Number of active nodes .................................. :       38556
 Number of external nodes ................................ :           0
 Number of nodes with at least one boundary condition .... :        2470
 Number of nodes with at least one load intensity ........ :           0
 Number of free variables (equations) .................... :      224617

 Number of elements ...................................... :       70211
 Number of material types ................................ :           3
 Maximum number of nodes connected to an element ......... :           4

 Size of complete element node connectivity .............. :      221764
 Size of stripped element node connectivity .............. :      221764
 Size of active adjacency set representation ............. :      321406
 TIME FOR WRITING MATRIX FORMAT        =     1.1791002274E+01


 = = = = = = = = = = = = = = = = = = = = = = = = =
 = = = Storage Requirement Matrix Convertion = = =
 = = = = = = = = = = = = = = = = = = = = = = = = =

 Total INTEGER workspace need (runtime measure) .......... :     1774320
 Total REAL workspace need (runtime measure) ............. :           0

 Total CPU-time consumption to convert the matrix ........ : 1.33733E+01

 Wall-Clock Time Consumption ............................. : 4.20000E+01

--------------------------------------------------------------------------------
==> M_T1.readme <==
--------------------------------------------------------------------------------
Source: Chrisitan Damhaug
www.parallab.uib.no/parasol/data.html

We have this matrix available in assembled and element form

Tubular joint

Order 97,578
when assembled, entries = 4,925,574
unassembled entries = 6,882,780

 DNV-Ex 1 : Tubular joint-1999-01-17                                     M_T1    
       1747955           533         26727       1720695             0
RSE                    97578          5328        267270       6882780          
(10I8)          (10I8)          (3e26.16)                               
            

--------------------------------------------------------------------------------
==> MT1.readme <==
--------------------------------------------------------------------------------
Source: Chrisitan Damhaug

Element Repr of                                                                 
         27260           533         26727             0             0
PSE                    97578          5328        267270             0
(10I8)          (10I8)          

--------------------------------------------------------------------------------
==> opt1.readme <==
--------------------------------------------------------------------------------
Source: Christain Damhaug

Matrix Representation of OPT1, part of condeep cylinder                 OPT1    
          5367            98          5269             0             0
PSE                    15449           977         52686             0
(10I8)          (10I8)          

--------------------------------------------------------------------------------
==> ramage02.readme <==
--------------------------------------------------------------------------------

Source: Alison Ramage (Strathclyde)

Pattern only element problem

1FINITE ELEMENT PROBLEM. NAVIER-STOKES AND CONTINUITY EQUATIONS.        RAMAGE02
          6495           141          6354             0             0          
PSE                    16830          1400         82598             0          
(10I8)          (13I6)          (3(1PE22.14))       (3(1PE22.14))

--------------------------------------------------------------------------------
==> SHIP_001.readme <==
--------------------------------------------------------------------------------
Source: Chrisitan Damhaug
www.parallab.uib.no/parasol/data.html

We have this matrix available in assembled and element form

Ship structure, predesign model
Order 34,920
when assembled, entries = 2,339,575
unassembled entries = 3,686,133

DNV-Ex 2 : Ship structure, predesign model-1999-01-17                   SHIP_001
        937389           344         15511        921534             0
RSE                    34920          3431        155106       3686133          
(10I8)          (10I8)          (3e26.16)                               
            

--------------------------------------------------------------------------------
==> SHIP_003.readme <==
--------------------------------------------------------------------------------
Source: Chrisitan Damhaug
www.parallab.uib.no/parasol/data.html

We have this matrix available in assembled and element form

Ship structure from production run
Order 121,728
when assembled, entries = 4,103,881
unassembled entries =9,728,631

            
DNV-Ex 3 : Ship structure from production run-1999-01-17                SHIP_003
       2525272          4547         88317       2432408             0
RSE                   121728         45464        883167       9729631          
(10I8)          (10I8)          (3e26.16)                               

--------------------------------------------------------------------------------
==> SHIPSEC1.readme <==
--------------------------------------------------------------------------------
Source: Chrisitan Damhaug
www.parallab.uib.no/parasol/data.html

We have this matrix available in assembled and element form

Ship section/detail from production run
Order 140,874
when assembled, entries = 3,977,139
unassembled entries = 6,882,780

DNV-Ex 4 : Ship section/detail from production run-1999-01-17           SHIPSEC1
       2237188          4104         78502       2154582             0
RSE                   140874         41037        785016       8618328          
(10I8)          (10I8)          (3e26.16)                               
            

--------------------------------------------------------------------------------
==> SHIPSEC5.readme <==
--------------------------------------------------------------------------------
Source: Chrisitan Damhaug
www.parallab.uib.no/parasol/data.html

We have this matrix available in assembled and element form

Ship section/detail from production run
Order 179,86
when assembled, entries = 6,146,478
unassembled entries = 11,118,602

DNV-PARASOL Ship section 5-1999-01-15                                   Shipsec5
       2885670          5228        100791       2779651             0
RSE                   179860         52272       1007907      11118602          
(10I8)          (10I8)          (4e22.14)                               
            

--------------------------------------------------------------------------------
==> SHIPSEC8.readme <==
--------------------------------------------------------------------------------
Source: Chrisitan Damhaug
www.parallab.uib.no/parasol/data.html

We have this matrix available in assembled and element form

Ship section/detail from production run
Order 114,919
when assembled, entries = 3,384,159
unassembled entries = 7,431,867

DNV-PARASOL Ship section 5-1999-01-15                                   Shipsec5
       2885670          5228        100791       2779651             0
RSE                   179860         52272       1007907      11118602          
(10I8)          (10I8)          (4e22.14)                               
            

--------------------------------------------------------------------------------
==> Srb1.readme <==
--------------------------------------------------------------------------------

Source: Christain Damahug (Det Norske Veritas, Oslo, Norway)

 Matrix Format Converter
 -----------------------

 Total number of nodes ................................... :        9198
 Number of active nodes .................................. :        9154
 Number of external nodes ................................ :           0
 Number of nodes with at least one boundary condition .... :          44
 Number of nodes with at least one load intensity ........ :           0
 Number of free variables (equations) .................... :       54924

 Number of elements ...................................... :        9240
 Number of material types ................................ :           0
 Maximum number of nodes connected to an element ......... :           4

 Size of complete element node connectivity .............. :       36872
 Size of stripped element node connectivity .............. :       36784
 Size of active adjacency set representation ............. :       73128
 TIME FOR WRITING MATRIX FORMAT        =     1.9468524456E+00


 = = = = = = = = = = = = = = = = = = = = = = = = =
 = = = Storage Requirement Matrix Convertion = = =
 = = = = = = = = = = = = = = = = = = = = = = = = =

 Total INTEGER workspace need (runtime measure) .......... :      303533
 Total REAL workspace need (runtime measure) ............. :           0

 Total CPU-time consumption to convert the matrix ........ : 2.20886E+00

 Wall-Clock Time Consumption ............................. : 6.00000E+00

--------------------------------------------------------------------------------
==> Thread.readme <==
--------------------------------------------------------------------------------

Source: Christain Damahug (Det Norske Veritas, Oslo, Norway)


 Matrix Format Converter
 -----------------------

 Total number of nodes ................................... :       10008
 Number of active nodes .................................. :        9912
 Number of external nodes ................................ :           0
 Number of nodes with at least one boundary condition .... :          96
 Number of nodes with at least one load intensity ........ :           0
 Number of free variables (equations) .................... :       29736

 Number of elements ...................................... :        2176
 Number of material types ................................ :           1
 Maximum number of nodes connected to an element ......... :          20

 Size of complete element node connectivity .............. :       42080
 Size of stripped element node connectivity .............. :       41888
 Size of active adjacency set representation ............. :      486760
 TIME FOR WRITING MATRIX FORMAT        =     1.0886445045E+00


 = = = = = = = = = = = = = = = = = = = = = = = = =
 = = = Storage Requirement Matrix Convertion = = =
 = = = = = = = = = = = = = = = = = = = = = = = = =

 Total INTEGER workspace need (runtime measure) .......... :      201743
 Total REAL workspace need (runtime measure) ............. :           0

 Total CPU-time consumption to convert the matrix ........ : 1.33817E+00

 Wall-Clock Time Consumption ............................. : 4.00000E+00

--------------------------------------------------------------------------------
==> THREAD.readme <==
--------------------------------------------------------------------------------
Source: Chrisitan Damhaug
www.parallab.uib.no/parasol/data.html

We have this matrix available in assembled and element form

Threaded connector/contact problem
Order 29,736
when assembled, entries = 2,249,892
unassembled entries = 3,718,704

DNV-Ex 7 : Threaded connector/contact problem-1999-01-17                THREAD  
        942461           218         12567        929676             0
RSE                    29736          2176        125664       3718704          
(10I8)          (10I8)          (3e26.16)                               
            

--------------------------------------------------------------------------------
==> trdheim.readme <==
--------------------------------------------------------------------------------
Source: Christian Damhaug (DNR)

Matrix Representation of TRDHEIM, Mesh of the Trondheim Fjord           TRDHEIM 
          4473            82          4391             0             0
PSE                    22098           813         43902             0
(10I8)          (10I8)          

--------------------------------------------------------------------------------
==> Troll.readme <==
--------------------------------------------------------------------------------

Source: Christain Damahug (Det Norske Veritas, Oslo, Norway)

 Matrix Format Converter
 -----------------------

 Total number of nodes ................................... :       72545
 Number of active nodes .................................. :       71151
 Number of external nodes ................................ :           0
 Number of nodes with at least one boundary condition .... :        1394
 Number of nodes with at least one load intensity ........ :           0
 Number of free variables (equations) .................... :      213453

 Number of elements ...................................... :       41084
 Number of material types ................................ :           2
 Maximum number of nodes connected to an element ......... :           8

 Size of complete element node connectivity .............. :      321888
 Size of stripped element node connectivity .............. :      318624
 Size of active adjacency set representation ............. :     1260528
 TIME FOR WRITING MATRIX FORMAT        =     8.8573474884E+00


 = = = = = = = = = = = = = = = = = = = = = = = = =
 = = = Storage Requirement Matrix Convertion = = =
 = = = = = = = = = = = = = = = = = = = = = = = = =

 Total INTEGER workspace need (runtime measure) .......... :     1570220
 Total REAL workspace need (runtime measure) ............. :           0

 Total CPU-time consumption to convert the matrix ........ : 1.10190E+01

 Wall-Clock Time Consumption ............................. : 2.90000E+01

--------------------------------------------------------------------------------
==> tsyl201.readme <==
--------------------------------------------------------------------------------
Source: Christian Damhaug (DNR)

Matrix Representation of TSYL201, part of condeep cylinder              TSYL201 
          5857            97          5760             0             0
PSE                    20685           960         57600             0
(10I8)          (10I8)          

--------------------------------------------------------------------------------
==> X104.readme <==
--------------------------------------------------------------------------------
Source: Chrisitan Damhaug
www.parallab.uib.no/parasol/data.html

We have this matrix available in assembled and element form

Beam joint (SESAM test example no. 104)
Order 108,384
when assembled, entries = 5,138,004
unassembled entries = 7,065,546

DNV-Ex 8 : SESAM test example no 104-1999-01-17                         X104    
       1795848           602         28859       1766387             0
RSE                   108384          6019        288588       7065546          
(10I8)          (10I8)          (3e26.16)                               


            
',

}

