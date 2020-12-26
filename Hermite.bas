' Hermite.bas
' 07/08/2003
print "Hermite Interpolation"
print "-----"
print "SmallBASIC Version for Palm OS"
print "Developed by: Marc Christian Saribay"
print "Date Created: August 7, 2003"
print "Last Update: August 9, 2003"
print "-----"
dim X(50), Y(50), T(50),TD(50), FP(50)

func rm(i,j)
  if i=1 and j=2 then
    rm=1
  else
    rm=i-(j*int(i/j))
  endif
end func

5 input "Enter the number of data points: ",N
if N<2 then
  ? "Please enter a value greater than 1"
  goto 5
endif
for I=1 to N
  ? "Point "+str(I)
  input "Enter x: ",X((2*I)-1)
  X(2*I)=X((2*I)-1)
  input "Enter f(x): ",Y((2*I)-1)
  T((2*I)-1)=Y((2*I)-1)
  Y(2*I)=Y((2*I)-1)
  T(2*I)=Y((2*I)-1)
  input "Enter f'(x): ",FP(I)
next
K=1
L=1
?
z=(2*N)-1
for I=z to 1 step -1
  L=K+1
  M=1
  ? "LEVEL " +str(K)
  if k=1 then
    ctr=1
    for J=1 to I
      if rm(J,2)=0 then
        ?(T(J+1)-T(J))/(X(L)-X(M))
        T(J)=(T(J+1)-T(J))/(X(L)-X(M))
      else
        ? FP(ctr)
        if J=1 then
          TD(K)=FP(ctr)
          T(J)=FP(ctr)
          ctr=ctr+1
        else
          T(J)=FP(ctr)
          ctr=ctr+1
        endif
      endif
      L=L+1
      M=M+1
    next
    K=K+1
    ?
    input "Press Enter to continue", null
    ?
  else
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
  endif
next
20 input "Enter x for approximation: ",XA
if xa<x(1) or xa>x(2*N) then
  ? "Out of Bounds"
  goto 20
else
  nddf XA,X,Y,N,TD
  ?
  input "Do you want to approximate another value? (1-Yes, 2-No): ",ulit
  if ulit=1 then
    goto 20
  else
    ? "Thanks for using my program"
  endif
endif
end

sub nddf(xa0,x0,y0,n0,td0)
10  input "Enter the degree: ",order
  approx=y0(1)
  adtl=0
  if order>=1 and order<(2*n0) then
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