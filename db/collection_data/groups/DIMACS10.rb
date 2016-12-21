{
    name: 'DNVS',
    num_matrices: '15',
    notes: 'Positive definite matrices from Christian Damhaug, DNV Software.

Originally collected by Nick Gould, Yifan Hu, & Jennifer Scott,
some in unassembled finite-element form (and some in both forms).

(Note: these matrices were previously in the GHS_psdef directory).

NOTE: matrices can have upper-case or lower case matrix-type fields
(rsa or RSA, for example).

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
Source: Christian Damhaug
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
Source: Christian Damhaug

Element Repr of                                                                 
         27260           533         26727             0             0
PSE                    97578          5328        267270             0
(10I8)          (10I8)          

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

