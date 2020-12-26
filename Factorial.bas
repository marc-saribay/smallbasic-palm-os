' Factorial.bas
' 03/07/2003
print "Factorial Program"
print "-----"
print "SmallBASIC Version for Palm OS"
print "Developed by: Marc Christian Saribay"
print "Date Created: July 3, 2003"
print "Last Update: July 16, 2003"
print "-----"
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

input "Enter number: ", x
? str(x)+"! = "+str(fact(x))
end