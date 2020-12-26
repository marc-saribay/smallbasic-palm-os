' Lagrange.bas
' 16/07/2003
print "Lagrange Interpolation"
print "-----"
print "SmallBASIC Version for Palm OS"
print "Developed by: Marc Christian Saribay"
print "Date Created: July 16, 2003"
print "Last Update: July 16, 2003"
print "-----"
dim X(50), Y(50)
5 input "Enter the number of data points: ",N
if N<2 then
  ? "Please enter a value greater than 1"
  goto 5
endif
for I=1 to N
  ? "Point "+str(I)
  input "Enter x: ",X(I)
  input "Enter f(x): ",Y(I)
next
input "Enter x for approximation: ",XP
lagrange XP,X,Y,N
end

sub lagrange(XP0,X0,Y0,N0)
  dim L(50)
  for I=1 to N0
    part=1
    for J=1 to N0
      if J<>I then
        part=part*((XP0-X0(J))/(X0(I)-X0(J)))
      endif
    next
    L(I)=part
  next
  approx=0
  for I=1 to N0
    approx=approx+(Y0(I)*L(I))
  next
  ? "f(x) = "+str(approx)
end sub