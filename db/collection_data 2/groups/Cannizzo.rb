{
    name: 'Castrillon',
    num_matrices: '1',
    notes: 'Counter-example matrix (denormal in A+alpha*I), J. Castrillon, Teledyne

The problem is x=(A+alpha*I)\\b as alpha varies from 0 to 100.  However
as this occurs, performance suffers because of the many denormals that
appear below the diagonal in L.

%-------------------------------------------------------------------------------
% consider the following code:
%-------------------------------------------------------------------------------

Problem = UFget (\'Castrillon/denormal\') ;
K = Problem.A ;

fprintf (\'nnz (K-K\'\') = %d\\n\', nnz(K-K\')) ;
fprintf (\'nnz (diag (K)): %d\\n\', nnz (diag (K))) ;

p = amd (K) ;
[count, h, parent, post, Lpattern] = symbfact (K(p,p), \'sym\', \'lower\') ;
fprintf (\'nnz(K) %d nnz(L) %d\\n\', nnz(K), nnz(Lpattern)) ;

n = size (K,1) ;
rand (\'state\',0) ;
b = rand (n,1) ;
I = speye (n) ;

spparms (\'spumoni\',0) ;
maxNumCompThreads (1) ;

for alpha = [0 .01 .02 .1 .3 1 10 100]

  fprintf (\'\\n\\n --------------------- alpha = %g:\\n\', alpha) ;

  A = K + alpha*I ;

  for threads = 1:2
      maxNumCompThreads (threads) ;
      fprintf (\'threads: %d\\n\', threads) ;
      tic
      [L,ignore,p] = chol (A, \'lower\') ;
      t = toc ;
      fprintf (\'  chol time: %g nnz(L) %d (%d dropped)\\n\', ...
          t, nnz (L), nnz(Lpattern)-nnz(L)) ;

      [i j s] = find (L) ;
      fprintf (\'  min(abs(L)): %g\\n\', min (abs (s))) ;
      clear L i j s

      tic
      x = A\\b ;
      t = toc ;
      fprintf (\'  backslash time: %g\\n\', t) ;
  end

end

%-------------------------------------------------------------------------------
% the output is below
%-------------------------------------------------------------------------------

diary off
tryK
---------------------------------------------------------------------------

MATLAB Version 7.6.0.324 (R2008a)
MATLAB License Number: 523006
Operating System: Linux 2.6.24-19-generic #1 SMP Wed Jun 18 14:43:41
UTC 2008 i686
Java VM Version: Java 1.6.0_01 with Sun Microsystems Inc. Java
HotSpot(TM) Client VM mixed mode, sharing
---------------------------------------------------------------------------

MATLAB                                                Version 7.6
(R2008a)
Optimization Toolbox                                  Version 4.0
(R2008a)
Symbolic Math Toolbox                                 Version 3.2.3
(R2008a)

Name          Size                  Bytes  Class     Attributes

K         89400x89400            14232292  double    sparse

nnz (K-K\') = 0
nnz (diag (K)): 89400
nnz(K) 1156224 nnz(L) 8231641


--------------------- alpha = 0:
threads: 1
chol time: 3.04069 nnz(L) 8231641 (0 dropped)
min(abs(L)): 2.3735e-15
backslash time: 2.93038
threads: 2
chol time: 2.18102 nnz(L) 8231641 (0 dropped)
min(abs(L)): 2.3735e-15
backslash time: 2.0675


--------------------- alpha = 0.01:
threads: 1
chol time: 3.06346 nnz(L) 8231641 (0 dropped)
min(abs(L)): 7.68315e-168
backslash time: 2.95286
threads: 2
chol time: 2.19825 nnz(L) 8231641 (0 dropped)
min(abs(L)): 7.68315e-168
backslash time: 2.08248


--------------------- alpha = 0.02:
threads: 1
chol time: 3.58369 nnz(L) 8211304 (20337 dropped)
min(abs(L)): 7.90408e-200
backslash time: 3.4712
threads: 2
chol time: 2.48563 nnz(L) 8211304 (20337 dropped)
min(abs(L)): 7.90408e-200
backslash time: 2.39297


--------------------- alpha = 0.1:
threads: 1
chol time: 8.60043 nnz(L) 8231641 (0 dropped)
min(abs(L)): 1.32989e-295
backslash time: 8.49517
threads: 2
chol time: 5.83973 nnz(L) 8231641 (0 dropped)
min(abs(L)): 1.32989e-295
backslash time: 5.74531


--------------------- alpha = 0.3:
threads: 1
chol time: 14.6864 nnz(L) 8221018 (10623 dropped)
min(abs(L)): 9.88131e-324
backslash time: 14.5832
threads: 2
chol time: 9.6974 nnz(L) 8221018 (10623 dropped)
min(abs(L)): 9.88131e-324
backslash time: 9.56342


--------------------- alpha = 1:
threads: 1
chol time: 21.5543 nnz(L) 8161666 (69975 dropped)
min(abs(L)): 4.94066e-324
backslash time: 21.4453
threads: 2
chol time: 13.3063 nnz(L) 8161666 (69975 dropped)
min(abs(L)): 4.94066e-324
backslash time: 13.218


--------------------- alpha = 10:
threads: 1
chol time: 29.1026 nnz(L) 7957149 (274492 dropped)
min(abs(L)): 4.94066e-324
backslash time: 29.0284
threads: 2
chol time: 19.0662 nnz(L) 7957149 (274492 dropped)
min(abs(L)): 4.94066e-324
backslash time: 19.5602


--------------------- alpha = 100:
threads: 1
chol time: 31.3377 nnz(L) 7698212 (533429 dropped)
min(abs(L)): 4.94066e-324
backslash time: 31.1925
threads: 2
chol time: 20.2513 nnz(L) 7698212 (533429 dropped)
min(abs(L)): 4.94066e-324
backslash time: 20.1174



',

}

