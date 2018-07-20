{
    matrix_id: '2755',
    name: 'tumorAntiAngiogenesis_8',
    group: 'VDOL',
    description: 'tumorAntiAngiogenesis optimal control problem (matrix 8 of 8)',
    author: 'B. Senses, A. Rao',
    editor: 'T. Davis',
    date: '2015',
    kind: 'optimal control problem',
    problem_2D_or_3D: '0',
    num_rows: '490',
    num_cols: '490',
    nonzeros: '4776',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '1',
    num_dmperm_blocks: '1',
    structural_full_rank: 'true',
    structural_rank: '490',
    pattern_symmetry: '1.000',
    numeric_symmetry: '1.000',
    rb_type: 'real',
    structure: 'symmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'Optimal control problem, Vehicle Dynamics & Optimization Lab, UF       
Anil Rao and Begum Senses, University of Florida                       
http://vdol.mae.ufl.edu                                                
                                                                       
This matrix arises from an optimal control problem described below.    
Each optimal control problem gives rise to a sequence of matrices of   
different sizes when they are being solved inside GPOPS, an optimal    
control solver created by Anil Rao, Begum Senses, and others at in VDOL
lab at the University of Florida.  This is one of the matrices in one  
of these problems.  The matrix is symmetric indefinite.                
                                                                       
Rao, Senses, and Davis have created a graph coarsening strategy        
that matches pairs of nodes.  The mapping is given for this matrix,    
where map(i)=k means that node i in the original graph is mapped to    
node k in the smaller graph.  map(i)=map(j)=k means that both nodes    
i and j are mapped to the same node k, and thus nodes i and j have     
been merged.                                                           
                                                                       
This matrix consists of a set of nodes (rows/columns) and the          
names of these rows/cols are given                                     
                                                                       
Anil Rao, Begum Sense, and Tim Davis, 2015.                            
                                                                       
VDOL/tumorAntiogenesis                                                 
                                                                       
Tumor anti-angiogenesis optimal control problem is taken from          
Ref.~\cite{ledzewicz2008analysis}. A tumor first uses the blood        
vessels of its host but as the tumor grows oxygen that is carried by   
the blood vessels of its host cannot defuse very far into the tumor.   
Therefore, the tumor grows its own blood vessels by producing          
vascular endothelial growth factor (VEGF). This process is called      
angiogenesis. But blood vessels have a defense mechanism, called       
endostatin, that tries to impede the development of new blood cells    
by targeting VEGF. In addition, new pharmacological therapies that is  
developed for tumor-type cancers also targets VEGF. The goal of the    
tumor anti-angiogenesis problem is to determine the state and control  
that minimizing the size of the tumor at the final time. The state of  
the system is defined by the tumor volume, carrying capacity of a      
vessel, and the total anti-angiogenic treatment administered and the   
control of the system is the angiogenic dose rate.  The specified      
accuracy tolerance of $10^{-7}$ were satisfied after eight mesh        
iterations. As the mesh refinement proceeds, the size of the KKT       
matrices increases from 205 to 490.                                    
                                                                       
@article{ledzewicz2008analysis,                                        
  title={Analysis of Optimal Controls for a Mathematical Model of      
     Tumour Anti-Angiogenesis},                                        
  author={Ledzewicz, Urszula and Sch{\"a}ttler, Heinz},                
  journal={Optimal Control Applications and Methods},                  
  volume=29,                                                           
  number=1,                                                            
  pages={41--57},                                                      
  year=2008,                                                           
  publisher={Wiley Online Library}                                     
}                                                                      
',
    b_field: 'full 490-by-1
',
    aux_fields: 'rowname: full 490-by-80
mapping: full 490-by-1
',    image_files: 'tumorAntiAngiogenesis_8.png,tumorAntiAngiogenesis_8_graph.gif,',
}
