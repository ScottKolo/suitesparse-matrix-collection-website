{
    name: 'Kamvar',
    num_matrices: '2',
    notes: 'Web matrices from Sep Kamvar, Stanford University.

* Stanford Web Matrix:
    281903 pages, ~2.3 million links. From a September 2002 crawl.

* Stanford-Berkeley Web Matrix:
    683446 pages, ~7.6 million links. From a December 2002 crawl.

The data comes fro the Stanford WebBase project,
http://www-diglib.stanford.edu/~testbed/doc2/WebBase .

The original data is posted at http://www.stanford.edu/~sdkamvar/research.html .
In the data posted there, one of the matrices is normalized, and the other is
not (but includes MATLAB code to produce the normalized matrix).  Both have
some non-binary values in their connectivity, which represents pages with more
than one link to another specific page.  The matrices posted here are purely
binary, and correspond to the matrix G discussed in Chapter 2 of
"Numerical Computing with MATLAB" by Cleve Moler and Kathryn Moler,
http://www.mathworks.com/moler .

In these matrices, if G(i,j)=1 then there is a link from page j to page i.
Thus, column j of G reflects the links that you can click on, if you are
visiting page j.

A basic statement of the pagerank algorithm is given at
http://www.mathworks.com/moler/ncm/pagerank.m , but that algorithm is not
suited for these large problems.  The methods posted at
http://www.mathworks.com/moler/ncm/pagerankpow.m or 
http://www.stanford.edu/~sdkamvar/research.html 
are more suitable for these problems.

The related eigenvalue problem is to find the vector x such that x=A*x,
where A = (p*G*D + delta*e*e\'), and:

    p = a scalar damping factor less than one (typically 0.85)
    G = the binary connectivity matrix (Problem.A in the MATLAB .mat files,
	or the .pua files).  Don\'t confuse Problem.A with the matrix
	A = (p*G*D + delta*e*e\').  Problem.A is the matrix G, not A.
    D = a diagonal matrix with D (i,i) equal to the sum of column i of G
    delta = (1-p)/n
    e = the column vector of all one\'s

The urls of the Stanford_Berkeley matrix are given in a cell array,
Problem.colname.  The url associate with column j is Problem.colname {j}.
Only a few of these are given, corresponding to root urls.
No urls are given for the Stanford matrix.

',

}

