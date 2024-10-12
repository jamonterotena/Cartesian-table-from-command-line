Sometimes it's useful to create tables with all combinations between given variables by lines. This method uses the `optparse` package in R to do it from the command line.

Running:
```
Rscript mkcartesian.R --col1 file1,file2 --col2 a,b,c,d --col3 1,2
```
would render:
```
# file1 a 1
# file2 a 1
# file1 b 1
# file2 b 1
# file1 c 1
# file2 c 1
# file1 d 1
# file2 d 1
# file1 a 2
# file2 a 2
# file1 b 2
# file2 b 2
# file1 c 2
# file2 c 2
# file1 d 2
# file2 d 2
```
