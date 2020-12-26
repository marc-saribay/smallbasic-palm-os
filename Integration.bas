' Integration.bas
' 30/01/2002

print "Numerical Integration Calculator"
print "-----"
print "SmallBASIC Version for Palm OS"
print "Developed by: Marc Christian Saribay"
print "Date Created: January 30, 2002"
print "Last Update: May 19, 2003"
print "-----"

n="y"
repeat

'Function of x
func f(x)
'CHANGE THE FUNCTION BELOW
'(NOTE: leave 'f=')
  f=(2^-x)*exp(sin(x))
end func

'Input method to use
10
print "Methods"
print "1: Rectangular"
print "2: Midpoint"
print "3: Trapezoidal"
print "4: Simpsons"
print "What method would you use?"
input "(1,2,3,4) ",method

'Check if input is valid
if len(method)=1 then
  if not(method>=1 and method<=4) then
    print "Invalid Input!"
    goto 10
  endif
else
  print "Invalid Entry!"
  goto 10
endif

sub Checker(value)
'Check the length of string on value
if not(len(value)<=10 and isnumber(value)=1) then
  print "Please enter a numeric value"
  print "that has 10 characters or less"
  go = 0
else
  go = 1
endif
end sub

'Input a, b, and n
go = 0
repeat
input "Enter a: ",a0
Checker a0
until go = 1

go=0
repeat
input "Enter b: ",b0
Checker b0
until go = 1

20
go=0
repeat
input "Enter n: ",n0
Checker n0
until go = 1

'n must be an even number on Simpsons rule 
if method=4 and not(n0 mod 2.0 = 0) then
  repeat
    print "n must be an even number"
    goto 20
  until (n0 mod 2.0=0)
endif

'Main Program
deltax0=(b0 - a0)/n0
xi0=a0
if method = 1 then
  rectangular a0,b0,deltax0,n0,xi0
elif method = 2
  midpoint a0,b0,deltax0,n0,xi0
elif method = 3
  trapezoidal a0,b0,deltax0,n0,xi0
elif method = 4
  simpsons a0,b0,deltax0,n0,xi0
endif

sub rectangular(a,b,deltax,n,xi)
local i,middle
  print "Rectangular Method"
  for i=1 to n
    xi=xi+deltax
    middle=middle+f(xi)
  next
  area=deltax*middle
  ? "Estimated Area = "+str(area)
end sub

sub midpoint(a,b,deltax,n,xi)
local i,xi1,middle
  print "Midpoint Method"
  for i=1 to n
    xi1=xi+deltax
    middle=middle+((f(xi)+f(xi1))/2)
    xi=xi1
  next
  area=deltax*middle
  ? "Estimated Area = "+str(area)
end sub

sub trapezoidal(a,b,deltax,n,xi)
local i,middle
  print "Trapezoidal Rule"
  for i=1 to n-1
    xi=xi+deltax
    middle=middle + (2*f(xi))
  next
  area = (deltax/2)*(f(a)+middle+f(b))
  ? "Estimated Area = "+str(area)
end sub

sub simpsons(a,b,deltax,n,xi)
local i,middle
  print "Simpson's Rule"
  for i=1 to n-1
    xi=xi+deltax
    if i mod 2.0 = 0 then
      middle=middle+(2*f(xi))
    else
      middle=middle+(4*f(xi))
    endif
  next
 area=(deltax/3)*(f(a)+middle+f(b))
  ? "Estimated Area = "+str(area)
end sub

30 print "Enter another set of values?"
input "(y/n) ",n
if len(n)<2
if not(n="y" or n= "n") then
    print "Invalid Input!"
    goto 30
endif
else
  print "Invalid Entry!"
  goto 30
endif
until n="n"