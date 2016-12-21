{
    name: 'Priebel',
    num_matrices: '6',
    notes: 'Quadratic sieve matrices from David Priebel, Tenn. Tech. Univ.

Each column in the matrix corresponds to a number in the factor base
less than some bound B.  Each row corresponds to a smooth number (able
to be completely factored over the factor base).  Each value in a row
binary vector corresponds to the exponent of the factor base mod 2.
For example:

    factor base: 2 7 23
    smooth numbers: 46, 28, 322
    2^1       * 23^1 = 46
    2^2 * 7^1        = 28
    2^1 * 7^1 * 23^1 = 322
    Matrix:
        101
        010
        111

A solution to the matrix is considered to be a set of rows which when
combined in GF2 produce a null vector. Thus, if you multiply each of
the smooth numbers which correspond to that particular set of rows you
will get a number with only even exponents, making it a perfect
square. In the above example you can see that combining the 3 vectors
results in a null vector and, indeed, it is a perfect square: 644^2.

Problem.A: A GF(2) matrix constructed from the exponents of the
factorization of the smooth numbers over the factor base. A solution of
this matrix is a kernel (nullspace). Such a solution has a 1/2 chance of
being a factorization of N.

Problem.aux.factor_base: The factor base used. factor_base(j) corresponds
to column j of the matrix. Note that a given column may or may not have
nonzero elements in the matrix.

Problem.aux.smooth_number: The smooth numbers, smooth over the factor
base.  smooth_number(i) corresponds to row i of the matrix.

Problem.aux.solution: A sample solution to the matrix. Combine, in GF(2)
the rows with these indicies to produce a solution to the matrix with the
additional property that it factors N (a matrix solution only has 1/2
probability of factoring N).

Problem specific information:

n = 787911249838484617926390474950774839909 (130-bits)
Divisor: 23850290715477455017 (probably prime)
Divisor: 33035708421246870877 (probably prime)

n = 27393004579711727757848513391018843988362569 (145-bits)
Divisor: 4762476283061573160587 (probably prime)
Divisor: 5751840629031342254587 (probably prime)

n = 3408489886335277144344023699527218196631767672957 (162-bits)
Divisor: 1816046478796474796528999 (probably prime)
Divisor: 1876873706775468629074043 (probably prime)

n = 73363722971930954428433124842779099222294372095286387 (176-bits)
Divisor: 236037985789994529800050193 (probably prime)
Divisor: 310813205452462332837525059 (probably prime)

n = 4232562527578032866150921497850842593296760823796443077101 (192-bits)
Divisor: 83135929635332984850508004533 (probably prime)
Divisor: 50911351399373573113182167897 (probably prime)

n = 239380926372595066574100671394554319947805305453767699448870971 (208-bits)
Divisor: 12216681953629826483019726942851 (probably prime)
Divisor: 19594594283554225566102143686121 (probably prime)
',

}

