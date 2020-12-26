' CProduct.bas
' 22/01/2003
print "Cross Product (2 Vectors)"
print "-----"
print "SmallBASIC Version for Palm OS"
print "Developed by: Marc Christian Saribay"
print "Date Created: January 22, 2003"
print "Last Update: May 14, 2003"
print "-----"
n="y"
repeat
? "First Vector"
input "1st Element: ", a
input "2nd Element: ", b
input "3rd Element: ", c
? "Second Vector"
input "1st Element: ", x
input "2nd Element: ", y
input "3rd Element: ", z
? "CROSS PRODUCT"
? "1st Element: ", (b*z-c*y)
? "2nd Element: ", (c*x-a*z)
? "3rd Element: ", (a*y-b*x)
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