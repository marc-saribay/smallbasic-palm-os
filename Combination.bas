' Combination.bas
' 04/09/2003
dim c(50,50)
input "Enter n: ", n
input "Enter r: ", r
c(0,0)=1
? c(0,0)
? "***"
c(1,0)=1
? c(1,0)
c(1,1)=1
? c(1,1)
? "***"
ctr=2
for i=2 to r
  for j=0 to ctr
    c(i,j)=c(i-1,j-1)+c(i-1,j)
    ? c(i,j)
  next
  ctr=ctr+1
  input "***", null
next