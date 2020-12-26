' SP.bas
' 23/12/2002
print "Recursive Difference Analysis"
print "-----"
print "SmallBASIC Version for Palm OS"
print "Developed by: Marc Christian Saribay"
print "Date Created: December 23, 2002"
print "Last Update: December 23, 2002"
print "-----"
dim x(100)
n=1
print "Enter value for x0"
input x(n-1)
print "Enter value for x1"
input x(n)
print "Enter value for k"
input k
repeat
  print "Enter the limit"
  print "This will generate the values up to the chosen limit value"
  input limit
until (limit>=2 and limit<=100)
For n=1 to limit-1
  x(n+1)=max(x(n),x(n-1))/(k*x(n))
  print "x"+str(n+1)+"="+str(x(n+1))
Next