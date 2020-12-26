' Quadcalc.bas
' 27/01/2002
print "Quadratic Equation Calculator"
print "-----"
print "SmallBASIC Version for Palm OS"
print "Developed by: Marc Christian Saribay"
print "Date Created: January 27, 2002"
print "Last Update: May 19, 2003"
print "-----"
n="y"
repeat
5 input "Enter a: ",a
input "Enter b: ",b
input "Enter c: ",c
if len(a) < 10 and len(b) < 10 and len(c) <10 then
if isnumber(a) = true and isnumber(b)= true and isnumber(c)= true then
if a=0 then
  if b=0 then
    print "Invalid Equation"
  else
    if c<>0 then
      x=-b/c
      print "Linear Equation"
      print "x= "+ str(x)
    else
      print "Invalid Equation"
    endif
  endif
else
  disc=((b^2)-(4*a*c))
  if disc=0 then
    x=(-b)/(2*a)
    print "Quadratic Equation"
    print "(One real root)"
    print "x= " +str(x)
  elif disc>0
    x1=((-b)+sqr(disc))/(2*a)
    x2=((-b)-sqr(disc))/(2*a)
    print "Quadratic Equation"
    print "(Two real roots)"
    print "x= " + str(x1)
    print "x= "+ str(x2)
  else
    x1=(-b)/(2*a)
    x2=(sqr(abs(disc)))/(2*a)
    print "Quadratic Equation"
    print "(Two imaginary roots)"
    print "x= "+str(x1) +" + "+ str(x2) +" i"
    print "x= "+str(x1) +" - "+ str(x2) +" i"
  endif
endif
else
  print "Please enter numeric values!"
  goto 5
endif
else
  print "Value too large!"
endif
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