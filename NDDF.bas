' NDDF.bas
' 03/07/2003
print "NDDF Interpolation"
print "-----"
print "SmallBASIC Version for Palm OS"
print "Developed by: Marc Christian Saribay"
print "Date Created: July 3, 2003"
print "Last Update: July 16, 2003"
print "-----"
dim X(50), Y(50), T(50),TD(50)
5 input "Enter the number of data points: ",N
if N<2 then
  ? "Please enter a value greater than 1"
  goto 5
endif
for I=1 to N
  ? "Point "+str(I)
  input "Enter x: ",X(I)
  input "Enter f(x): ",Y(I)
  T(I)=Y(I)
next
K=1
L=1
?
for I=N-1 to 1 step -1
  ? "LEVEL " +str(K)
  L=K+1
  M=1
  for J=1 to I
    ?(T(J+1)-T(J))/(X(L)-X(M))
    if j=1 then
      TD(K)=(T(J+1)-T(J))/(X(L)-X(M))
    endif
    T(J)=(T(J+1)-T(J))/(X(L)-X(M))
    L=L+1
    M=M+1
  next
  K=K+1
  ?
  input "Press Enter to continue", null
  ?
next
input "Enter x for approximation: ",XA
nddf XA,X,Y,N,TD
end

sub nddf(xa0,x0,y0,n0,td0)
10  input "Enter the degree: ",order
  approx=y0(1)
  adtl=0
  if order>=1 and order<n0 then
    for i=1 to order
      part=1
      for j=1 to i
        part=part*(xa0-x0(j))
      next
      adtl=adtl+(td0(i)*part)
    next
    approx=approx+adtl
    ? "f(x) = "+str(approx)
  else
    ? "Invalid entry"
    goto 10
  endif
end sub