{
    matrix_id: '2273',
    name: 'LargeRegFile',
    group: 'Stevenson',
    description: 'large register file, digital circuit optimization',
    author: 'J. Stevenson',
    editor: 'T. Davis',
    date: '2010',
    kind: 'circuit simulation problem',
    problem_2D_or_3D: '0',
    num_rows: '2111154',
    num_cols: '801374',
    nonzeros: '4944201',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '2',
    num_dmperm_blocks: '32778',
    structural_full_rank: 'true',
    structural_rank: '801374',
    pattern_symmetry: '0.000',
    numeric_symmetry: '0.000',
    rb_type: 'real',
    structure: 'rectangular',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'Circuit optimization for digital circuits.  John Peter Stevenson, Stanford.
                                                                           
LargeRegFile is a matrix representing an optimization problem.             
Specifically, it is a geometric program, a kind of convex optimization     
problem.  The matrix entries are the exponents found in the geometric      
program constraints; specifically, this matrix is a portion of the         
input required by mskexpopt:                                               
http://docs.mosek.com/6.0/capi/node008.html                                
                                                                           
This matrix represents a digital circuit.  The circuit is a large          
register file: 256 registers, 64 bits each, 2 read ports, 1 write port.    
The optimization problem is to minimize circuit delay, subject to          
constraints on energy cost and area cost. The optimization variables       
are the transistor size, the supply voltage, and the threshold voltage.    
The circuit optimization method is described by Patil, et. al.: Robust     
energy-efficient adder topologies. In ARITH07: Proceedings of the 18th     
IEEE Symposium on Computer Arithmetic, pages 16-28, Washington, DC,        
USA, 2007. IEEE Computer Society.                                          
',
    image_files: 'LargeRegFile.png,LargeRegFile_dmperm.png,LargeRegFile_scc.png,LargeRegFile_graph.gif,',
}
