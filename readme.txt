To use the cgpa calculator, the following command must be used:

$ cat grades | perl cgpa_calc.pl

Where grades is the file containing grades in the following format:

ELEC 3509 B
ELEC 3908 A
SYSC 3600 B-

If there is no letter grade in a string aka:
FALL 2018

Then it will be skipped over, so including data to help differentiate terms is allowable

The result should be outputted in the following format:

Total point count: 340
Number of Courses: 33
CGPA: 10.3030303030303

It is also possible to use commands to differentiate averages in courses, such if you want to know your average grade in electrical courses, you could input:

$ grep ELEC grades | perl cgpa_calc.pl

Total point count: 84
Number of Courses: 9
CGPA: 9.33333333333333
