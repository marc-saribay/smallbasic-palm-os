' Stirling2.bas
' 04/09/2003
dim s(50,50)
input "Enter n: ", n
input "Enter r: ", r
s(0,0)=1
? s(0,0)
? "***"
s(1,0)=0
? s(1,0)
s(1,1)=1
? s(1,1)
? "***"
ctr=2
for i=2 to r
  for j=0 to ctr
    s(i,j)=s(i-1,j-1)+(j*s(i-1,j))
    ? s(i,j)
  next
  ctr=ctr+1
  input "***", null
next