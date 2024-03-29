LIBNAME MHA504'/home/u49592336/sasuser.v94';

DATA MHA504.evan;
INPUT ID time status group CHR;
DATALINES;
1 12.3 0 1 0
2 5.4 1 1 0
3 8.2 1 1 0
4 12.2 0 1 0
5 11.7 1 1 0
6 10 1 1 0
7 5.7 1 1 0
8 9.8 1 1 0
9 2.6 1 1 0
10 11 1 1 0
11 9.2 1 1 0
12 12.1 0 1 0
13 6.6 1 1 0
14 2.2 1 1 0
15 1.8 1 1 0
16 10.2 1 1 0
17 10.7 1 1 0
18 11.1 1 1 0
19 5.3 1 1 0
20 3.5 1 1 0
21 9.2 1 1 0
22 2.5 1 1 0
23 8.7 1 1 0
24 3.8 1 1 0
25 3 1 1 0
26 5.8 1 2 1
27 2.9 1 2 1
28 8.4 1 2 1
29 8.3 1 2 1
30 9.1 1 2 1
31 4.2 1 2 1
32 4.1 1 2 1
33 1.8 1 2 1
34 3.1 1 2 1
35 11.4 1 2 1
36 2.4 1 2 1
37 1.4 1 2 1
38 5.9 1 2 1
39 1.6 1 2 1
40 2.8 1 2 1
41 4.9 1 2 1
42 3.5 1 2 1
43 6.5 1 2 1
44 9.9 1 2 1
45 3.6 1 2 1
46 5.2 1 2 1
47 8.8 1 2 1
48 7.8 1 2 1
49 4.7 1 2 1
50 3.9 1 2 1
;
run;

PROC SORT DATA = MHA504.evan;
BY group;
RUN;

ODS GRAPHICS ON;

PROC LIFETEST DATA = MHA504.evan PLOTS = S (CL TEST);
	TIME time*group(0);
	STRATA GROUP;
RUN;

ODS GRAPHICS OFF;

