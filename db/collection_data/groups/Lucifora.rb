{
    name: 'Lucifora',
    num_matrices: '2',
    notes: 'GSM cell traffic matrices from Salvatore Lucifora, Telecom Italia Mobile.

Ing. Salvatore Lucifora
TIM R/SR-TI
via L. Rizzo, 22
00136 Roma

tel.   +39 06 3900 9241
fax.   +39 06 3900 9315
cell.  +39 335 7534668
email:  <mailto:slucifora :at the domain:
mail.tim.it> slucifora :at the domain:
mail.tim.it


These 2 matrices come from a software tool that evaluates the correct
dimensioning for GSM cell with the coexistence of 2 kinds of traffic channels
(Full-Rate and Half-Rate: the latter requires only half bandwidth with
respect to the FR channel). The tool requires the solution of a sparse linear
system Ax=b.

The cell1.rua and cell2.rua matrices have the same nonzero pattern, and
very similar values.  The 1-norm of C1-C2 is only 0.002, compared with
a 1-norm of about 416 for both C1 and C2.  MATLAB\'s condest reports a
condition number of 10^12 for C1 and 10^20 for C2.

',

}

