' NFDF.bas
' 03/07/2003
print "NFDF Interpolation"
print "-----"
print "SmallBASIC Version for Palm OS"
print "Developed by: Marc Christian Saribay"
print "Date Created: July 3, 2003"
print "Last Update: July 16, 2003"
print "-----"
dim X(50), Y(50), T(50), TF(50)

'Factorial
func fact(x)
   z=1
    if x=0             '0! is given
      fact=1
    elif x<0     '-A! is given
      for i=2 to x step -1
          z=z*i
         fact=z
      next
    else              'A! is given, A is any real no
      for i=2 to x
          z=z*i
         fact=z
      next
    endif
end func

5 input "Enter the number of data points: ", N
if N<2 then
  ? "Please enter a value greater than 1"
  goto 5
endif
for I=1 to N
  ? "Point "+str(I)
  input "Enter x: ", X(I)
  input "Enter f(x): ", Y(I)
  T(I)=Y(I)
next
K=1
?
for I=N-1 to 1 step -1
 ? "LEVEL " +str(K)
  for J=1 to I
' unsolved error below (zero problem)
    ? T(J+1)-T(J)
    if J=1 then
      TF(K)=T(J+1)-T(J)
    endif
    T(J)=T(J+1)-T(J)
  next
  K=K+1
  ?
  input "Press Enter to continue", null
  ?
next
Input "Enter x for approximation: ", x2
  s=(x2-X(1))/(X(2)-X(1))
  approx=Y(1)+s*TF(1)
  for i=2 to N-1
    spart=1
    for j=1 to i-1
      spart=spart*(s-j)
    next
    adtl=adtl+TF(i)*((s*spart)/fact(i))
  next
  approx=approx+adtl
? "f(x) = "+str(approx)
end