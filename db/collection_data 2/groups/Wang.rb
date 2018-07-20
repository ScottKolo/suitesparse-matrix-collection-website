{
    name: 'Watson',
    num_matrices: '2',
    notes: 'Chemical reaction simulation matrices from Layne Watson and Jingwei Zhang.
Virginia Tech, ltw at cs dot vtu doe yes, and jwzhang at the same domain.

The ODE system \\frac{dp}{dt}=Qp is what we call a chemical master equation (a 
Kolmogorov\'s backward/forward equation). Q is a sparse asymmetric matrix,     
whose off-diagonal entries are non-negative and row sum to zero. On each row, 
q_{ij}h gives the probability the system makes a transition from current state
i to some other state j, in small time interval h. By "state", we mean a      
possible combination of number of molecules in each chemical species. Now, h  
is small enough so that only one reaction happens.  In this way q_{ij} is     
nonzero only if there exists a chemical reaction that connects state i and j, 
i.e. j=i+s_k, s_k\'s are constant state vectors that correspond to every       
reaction.  Say we have M reactions, then there are at most M+1 nonzero        
entries on each row of Q.  On the other hand, the number of possible          
combination of molecules is huge, which means the dimension of Q is huge.     
The linear system we want to solve is (I - Q/lambda)x=b, and we have          
to solve it several times. (Here lambda is a constant).  Problem.A is the Q   
matrix.

',

}

