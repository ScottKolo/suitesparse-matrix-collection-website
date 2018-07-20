{
    name: 'YCheng',
    num_matrices: '3',
    notes: 'Power system state simulation matrices Yunzhi Cheng, UT Arlington.
In MATLAB, the solution to x=A\\b is desired, but this can be slow in 
MATLAB 7.3 because of the speed of sparse QR as compared to sparse   
Cholesky.  Using x=(A\'*A)\\(A\'*b) is faster, but of course yields     
slightly less accurate (but still acceptable) results.  Note that an 
initial guess to the solution is provided, for use by an iterative   
method.  However, sparse Cholesky with an AMD ordering is very fast  
for this matrix and thus iterative methods are unlikely to be        
competitive.
',

}

