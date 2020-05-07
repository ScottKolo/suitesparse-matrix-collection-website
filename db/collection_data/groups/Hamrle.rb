{
    name: 'Hamrle',
    num_matrices: '3',
    notes: 'Circuit simulation matrices from Jaroslav Hamrle, RIKEN, Japan.

--------------------------------------------------------------------------------

Date: Tue, 24 Feb 2004 17:33:31 +0900
From: Jaroslav Hamrle <(first initial, then last name) at the domain
 postman dot riken  dot go
 dot jp >
To: Cleve Moler <(last name) at  mathworks dotcom>
Subject: Re: How to solve A\\y with large ( 60MB) sparse matrices ?

Hello,

the matrix is coming from solving of somewhat-like very large electrical
network.  So, it is like a large graph, where matrix elements gives
connections between graph points.

I\'m sending you \'spy\' of three matrices of this type.

Maybe the most clear is the smallest \'spy\', named Amatrix-small.pdf.
In this matrix, I changed colors depending on values:
red ..... +1
green ... -1
blue .... different from 1 and -1, usually number between 0.01 to 100

First two upper pars of the matrix given relation between values of nodes
inside the graph. More precisely, they express what is the relation between
current and voltage between both sides of one resistor.

The first part treats resistors, which have special boundary conditions
(resistors whith connected only one end to the circuity). In this case, the
sub-matrices goes by on \'diagonal\'. I used quotes here, because this
\'diagonal\' is not exactly diagonal, by goes in the way that skip of one
line is followed by skip of two raws.

The second part treats relationship between both ends of the resistors.
In this part, the matrix 4x4 together with four adjective \'-1\' goes also
on \'diagonal\'. Note that for large matrices, this second part is much
larger that the first one.

The division between first two parts and second two part is exactly in the
half of the matrix.

The thrid part of the matrix provide relationship, that the sum of the current
in the each electrical node is zero (sum(j_i))=0. Hence, each line of this
part of the matrix contains severals (in presented matrix 4x) \'1\' or \'-1\'.

The fourth part of the matrix says that the voltage at each nod is the same
for all resistors ending/starting at given node. Hence, this part of matrix
contains in each line just once \'1\' and once \'-1\'. Hence, this part only
express that that some pairs of elements in resulting vector are identical.
As this part takes more that 1/4 of total matrix, maybe by some reordiring
it is possible to reduce significantly number of raws/lines.


In conclusion, the most of the matrix contain only \'1\' and \'-1\' elements. And
half of the lines (all third and fourt part) contains only \'1\' and \'-1\'
elements. More that 1/4 of lines contains just one pair of \'1\' and \'-1\'.

Also, it is important to say, that the vector x (when solving A\\x) contains
mainly zeros. Only 1%-5% of the vector x is non-zero. (And these zeros
appears only in start of the x-vector, in part corresponding to the first
part of the matrix.)

If you are interested, I can send you my matrix by ftp.

I thank you very much for any help.

Jaroslav Hamrle
',

}

