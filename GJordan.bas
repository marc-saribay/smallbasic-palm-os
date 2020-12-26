' GJordan.bas
' 16/01/2003
print "Gauss Jordan (4 Unknowns)"
print "-----"
print "SmallBASIC Version for Palm OS"
print "Developed by: Marc Christian Saribay"
print "Date Created: January 16, 2003"
print "Last Update: May 14, 2003"
print "-----"
n="y"
repeat
?"Equation 1"
input "Enter coefficient of x: ",a1
input "Enter coefficient of y: ",a2
input "Enter coefficient of z: ",a3
?"Equation 2"
input "Enter coefficient of x: ",b1
input "Enter coefficient of y: ",b2
input "Enter coefficient of z: ",b3
?"Equation 3"
input "Enter coefficient of x: ",c1
input "Enter coefficient of y: ",c2
input "Enter coefficient of z: ",c3
?"Solutions"
input "Enter solution of Equation 1: ",k1
input "Enter solution of Equation 2: ",k2
input "Enter solution of Equation 3: ",k3
A =[a1,a2,a3;b1,b2,b3;c1,c2, c3]
B =[k1;k2;k3]
C = LinEqn(A, B)
?"(x,y,z) = "; C
10 print "Enter another set of values?"
input "(y/n) ",n
if len(n)<2
if not(n="y" or n= "n") then
    print "Invalid Input!"
    goto 10
endif
else
  print "Invalid Entry!"
  goto 10
endif
until n="n"