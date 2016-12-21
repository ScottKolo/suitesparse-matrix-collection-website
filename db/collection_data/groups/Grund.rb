{
    name: 'Gset',
    num_matrices: '67',
    notes: 'Random graphs from Yinyu Ye, Univ. of Iowa.

Obtained from ftp://dollar.biz.uiowa.edu/pub/yyye/Gset/
See also http://dollar.biz.uiowa.edu/col/ye/

From \'rudy\', an automatic graph generator.

  Three types of patterns:
 	even:	evenly, randomly distributed entries
 	tor:	2D torus.   All nodes have degree 4.  Wrapped in both directions
 	skew:	randomly distributed entries, but the avg degree of nodes 1:n
 		appears to be a decaying function, from high (node 1) to low
 		(node n)

  Matrices are binary or have values 0,1,-1.  The distribution of +/-1 are
  random.  Entries are in the strictly lower triangular part only.
  The original G* files in ftp://dollar.biz.uiowa.edu/pub/yyye/Gset/
  contain no duplicate entries, and are strictly upper triangular.

  mat	n	nz	type	binary	comments
 -------------------------------------------------------------------------------
  Matrices G1-G10: exactly 3% of the upper tri. entries are nonzero
  G1	800	19176	even	yes	= spones (G6)
  G2	800	19176	even	yes	= spones (G7)
  G3	800	19176	even	yes	= spones (G8)
  G4	800	19176	even	yes	= spones (G9)
  G5	800	19176	even	yes	= spones (G10)
  G6	800	19176	even	no
  G7	800	19176	even	no
  G8	800	19176	even	no
  G9	800	19176	even	no
  G10	800	19176	even	no

 -------------------------------------------------------------------------------
  G11	800	1600	tor	no	8-by-100
  G12	800	1600	tor	no	16-by-50
  G13	800	1600	tor	no	32-by-25

 -------------------------------------------------------------------------------
  G14	800	4694	skew	yes	= spones (G18)
  G15	800	4661	skew	yes	= spones (G19)
  G16	800	4672	skew	yes	= spones (G20)
  G17	800	4667	skew	yes	= spones (G21)
  G18	800	4694	skew	no
  G19	800	4661	skew	no
  G20	800	4672	skew	no
  G21	800	4667	skew	no

 -------------------------------------------------------------------------------
  Matrices G22-G31: exactly 1% of the upper tri. entries are nonzero
  G22	2000	19990	even	yes	= spones (27)
  G23	2000	19990	even	yes	NOT = spones (28), a unique pattern
  G24	2000	19990	even	yes	= spones (29)
  G25	2000	19990	even	yes	= spones (30)
  G26	2000	19990	even	yes	= spones (31)
  G27	2000	19990	even	no
  G28	2000	19990	even	no
  G29	2000	19990	even	no
  G30	2000	19990	even	no
  G31	2000	19990	even	no

 -------------------------------------------------------------------------------
  G32	2000	4000	tor	no	20-by-100
  G33	2000	4000	tor	no	25-by-80
  G34	2000	4000	tor	no	40-by-50

 -------------------------------------------------------------------------------
  G35	2000	11778	skew	yes	= spones (G39)
  G36	2000	11766	skew	yes	= spones (G40)
  G37	2000	11785	skew	yes	= spones (G41)
  G38	2000	11779	skew	yes	= spones (G42)
  G39	2000	11778	skew	no
  G40	2000	11766	skew	no
  G41	2000	11785	skew	no
  G42	2000	11779	skew	no

 -------------------------------------------------------------------------------
  Matrices G43-G47: exactly 1% of the upper tri. entries are nonzero
  G43	1000	9990	even	yes
  G44	1000	9990	even	yes
  G45	1000	9990	even	yes
  G46	1000	9990	even	yes
  G47	1000	9990	even	yes

 -------------------------------------------------------------------------------
  G48	3000	6000	tor	yes	60-by-50
  G49	3000	6000	tor	yes	100-by-30
  G50	3000	6000	tor	yes	120-by-25

 -------------------------------------------------------------------------------
  G51	1000	5909	skew	yes
  G52	1000	5916	skew	yes
  G53	1000	5914	skew	yes
  G54	1000	5916	skew	yes

 -------------------------------------------------------------------------------
  Matrices G55-G56:  approximately 0.05% of the upper tri. entries are nonzero
  (0.05% is 12497.5, which rounds up to 12498)
  G55	5000	12498	even	yes	= spones (56)
  G56	5000	12498	even	no

 -------------------------------------------------------------------------------
  G57	5000	10000	tor	no	50-by-100

 -------------------------------------------------------------------------------
  G58	5000	29570	skew	yes	= spones (58)
  G59	5000	29570	skew	no

 -------------------------------------------------------------------------------
  Matrices G60-G61:  approximately 0.035% of the upper tri. entries are nonzero
  (0.035% is 17147.55, which rounds up to 17148)
  G60	7000	17148	even	yes	= spones (61)
  G61	7000	17148	even	no

 -------------------------------------------------------------------------------
  G62	7000	14000	tor	no	70-by-100

 -------------------------------------------------------------------------------
  G63	7000	41459	skew	yes	= spones (64)
  G64	7000	41459	skew

 -------------------------------------------------------------------------------
  G65	8000	16000	tor	no	80-by-100

 -------------------------------------------------------------------------------
  G66	9000	18000	tor	no	100-by-90

 -------------------------------------------------------------------------------
  G67	10000	20000	tor	no	100-by-100

 -------------------------------------------------------------------------------

',

}

