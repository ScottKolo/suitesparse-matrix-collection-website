{
    name: 'Davis',
    num_matrices: '1',
    notes: 'Analysis of the MATLAB FileExchange, March 2010                    
                                                                   
For the 8th Edition of the MATLAB Primer (published by CRC Press)  
I wrote a script that downloaded and parsed all 9489 submissions   
to the MATLAB File Exchange (as of March 12, 2010, 8am), at:       
http://www.mathworks.com/matlabcentral/fileexchange/ .             
Each submission was parsed to determine how many times each of     
1319 keywords appears.  The list of keywords to search for was     
obtained by parsing the MATLAB Help documentation.  In the primary 
matrix (Problem.A), the entry A(i,j) is the nubmer of times that   
the ith keyword appears in the jth "file" (each of the submissions 
to the MATLAB File Exchange is called a "file", although each      
submission often consists of more than one actual file).           
Problem.aux.key{i} is the ith keyword, and Problem.aux.id(j) is    
the MATLAB File ID corresponding to the jth column of the matrix A.
The first 454 rows of the A matrix correspond to the 454 functions 
or keywords that appear in the "MATLAB Top 500" list of most-      
frequently used functions, keywords, and operators in the 8th      
Edition of the MATLAB Primer.  The remaining are operators         
(+ - / * . etc) to round out the "Top 500" (these do not appear    
in the Problem.A matrix since parsing them proved difficult).      
                                                                   
Note that some editorial adjustments were made to the Top 500.     
In particular, deprecated functions were removed.  Some of the     
trigonometric functions are rarely used, but all of them were      
included in the "Top 500" to make a complete set.  You can         
visualize this with semilogy(sum(A,2)).  The rows of A are         
mostly sorted in decreasing row-sum, except for rows 430 to        
470 or so.                                                         
                                                                   
This matrix was constructed in March 2010 by Tim Davis and added   
to the collection in July 2012; Tim Davis is solely responsible    
for this matrix.  It was not submitted by or authorized by         
The MathWorks, Inc, but since the File Exchange is now under       
a BSD license, this is included in the collection as a legitimate  
derivative work.                                                   
',

}

