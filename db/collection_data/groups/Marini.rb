{
    name: 'Marini',
    num_matrices: '1',
    notes: 'Economic Time Series, T. Di Fonzo (Univ Padua) and M. Marini, (ISTAT, Italy)

Description of the Sparse Linear System arising from the 
Reconciliation Problem of a System of Economic Time Series 

Notes for Professor Tim Davis 

by Tommaso Di Fonzo and Marco Marini 
July 3, 2008 

Dear Prof. Davis, 
we have read your message Sparse QR mexFunction on the Matlab Central 
website, in which you invite the community to provide sparse problems 
arising from real applications for testing a new sparse QR function. In 
particular, you seem particularly interested in rank deficient problems. We 
have a problem with such characteristics, so we have decided to upload in the 
CISE website the elements of this linear system (coefficient matrix and right-
hand side). This problem is generally known as the reconciliation problem 
in the statistics and economics literature, which we intend to describe you 
very briefly in this note for your information. 

Economic statistics are often published in the form of time series, as a collec
tion of observations sampled at equally-spaced time periods (months, quar
ters). Economic concepts behind such statistics are often linked by a system 
of linear relationships, deriving from the economic theory. However, these 
restrictions are rarely met by the original time series for various reasons. 
Then, data sets of real-world variables generally show discrepancies with 
respect to prior restrictions on their values. Such discrepancies are rarely 
accepted because their existence generally causes confusion among users and 
embarrassment to data producers. The adjustment of a set of data in order 
to satisfy a number of accounting restrictions -and thus to remove any dis
crepancy -is generally known as the reconciliation problem. 

The reconciliation problem can be seen as the solution of a linear system. 
The dimension of the system increases rapidly as the number of time pe
riods, the number of variables and the number of constraints grow. Since 
it is convenient to solve the system simultaneously (that is, considering all 
periods, all variables, all constraints), the use of sparse matrices and algo
rithms is strongly suggested for solving practical applications. However, as 
far as we know, such problems are generally solved by data producers by 
using dense matrices and/or iterative methods (i.e. the conjugate gradi
ent method). Our intention is to encourage the use of direct methods with 
sparse matrices for solving this kind of problems. 

A formalization of the problem is helpful to understand the features of this 
linear system. Let p be an n-dimensional vector containing all the obser-
vations of the system to be reconciled (where n is the number of variables 
multiplied by the number of periods in which such variables are observed). 
Let H be the matrix defining the relationships between such observations. 
Supposing there are k constraints, the matrix H has dimension k × n: for 
each constraint we have a known total that must be satisfied by the obser
vations, collected together in the k-dimensional vector w. Notice that (i) 
k<n, and (ii) rank(H) ≤ k. In other words, some constraints could be 
redundant. The reconciliation problem can be summarized by the inequality 

    H*p = w. (1) 

The vector p is called preliminary, because it contains data that do not 
satisfy the given constraints and must be modified accordingly. The solution 
to the problem is given by y, an n-dimensional vector which satisfies the 
given constraints, that is 

    H*y = w. (2) 

and is close enough to the preliminary vector p. 
An optimal solution of the problem (2) can be derived following a least-
squares adjustment criterion. First of all, a metric must be defined to mea
sure the distance between p and y. Denote by Q this metric, with Q a 
positive semi-definite (we stress this fact, Q can be singular) matrix of 
dimension n. Then, the vector y can be obtained as the minimand of the 
quadratic loss function 

    (y − p)\'*Q*(y − p) (3) 

subject to 

    H*y = w. (4) 

Writing down the Lagrangian function and calculating derivates of it with 
respect to y and lambda, we finally obtain the block linear system 

    [ Q H\' ; H 0 ] * [ y ; lambda ] = [ Q*p ; w ]           (5)

which can be expressed, according to a standard and compact notation, as 

    A*x = b (6) 

System 5 is an "augmented system", where the coefficient matrix A is sparse, 
symmetric and 2 × 2 block partitioned. The matrix A is also indefinite, 
due to the zeroes in the (2, 2) block. Moreover, the matrix might present 
singularities for two reasons: 


    * The block (1, 1), that is matrix Q, might be singular (for example 
    when Q is positive semi-definite) 

    * The block (1, 2) might have reduced row rank, due to redundancy in 
    the constraints of the system. 

The latter condition is crucial, because if H has reduced rank, than matrix A
is also singular. In Matlab R2008a, a symmetric indefinite sparse system is
efficiently solved by the algorithm MA57. According to Duff (2004)1, this
algorithm is able to flush any singularities to the end of the factorization
and perform an LDLT factorization on the nonsingular block. We would like to
understand better how MA57 is able to solve the system in so little time; on
the other hand, if the singularities might be discovered and eliminated with an
efficient rank-revealing sparse QR method (which is the objective of your
request), we wonder if we would be able to solve the system without recurring
to MA57. 

Now we provide some more details about the elements of the system up
loaded on the CISE website. It refers to a real application composed of 183 
quarterly time series observed over 28 quarters, which form the system of 
European national accounts by institutional sectors (EURQSA). Then, the 
number of observations to be reconciled is n = 28 × 183 = 5124. The vari
ables are connected by a system of 30 linear relationships. Moreover, each 
quarterly time series must be in line with the same variables observed yearly 
(due to different compilation practices quarterly and annual estimates might 
differ). The total number of constraints of the system is k = 2121. On the 
whole, matrix A has dimension 7245, with block (1,1) of dimension 5124. 
Figure 1 shows the partitioned form of the matrix, including the LDLT fac
torization provided by MA57. 


Figure 1: Matrix A and LDLT tranformation for the EURQSA problem 

Duff (2004), MA57|a code for the solution of sparse symmetric definite and
indefinite systems, ACM Transactions on Mathematical Software, Volume 30, Issue
2, p. 122. 


A single Matlab *.mat file has been uploaded, named eurqsa-davis.mat. 
The archive contains the coefficient matrix A, the right-hand side vector b, 
and the solution achieved with MA57 x. Moreover, for your convenience we 
also saved the blocks (1, 1) and (1, 2) of matrix A, named A11 and A12 
respectively. 

We hope we have been sufficiently able to explain our problem and to pro
vide you with an interesting real application for your activity. We are still 
novel to sparse algorithms, we are sorry if we missed some important infor
mation about the system. If so, please do not hesitate to contact us. Just 
for your knowledge, both of us have installed the SuiteSparse package in 
Matlab and are currently studying on your book Direct methods for Sparse 
Linear System, which is very clear and helpful for our research. 

We really look forward to hearing from you soon. Thank you very much for 
your attention. 

Yours sincerely 

Prof. Tommaso Di Fonzo (University of Padua, Italy) e-mail:
difonzo@stat.unipd.it 

Dr. Marco Marini (ISTAT, Rome, Italy) e-mail: marco.marini@istat.it 

',

}

