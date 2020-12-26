' Sort.bas
' 16/07/2003
print "Sort Program"
print "-----"
print "SmallBASIC Version for Palm OS"
print "Developed by: Marc Christian Saribay"
print "Date Created: July 16, 2003"
print "Last Update: July 16, 2003"
print "-----"
dim x0(50)
5 input "Enter the number of elements: ",n0
if n0>=1 and n0<=50 then
  for i=1 to n0
     input "Enter element "+str(i)+": ",x0(i)
  next
else
  ? "Invalid entry"
  goto 5
endif
10 ? "Select method"
input "(1-increasing, 2-decreasing): ",method
if method=1
  inc n0,x0
elif method=2
  dec n0,x0
else
  ? "Invalid entry"
  goto 10
endif
end

sub inc(n,x)
  for i=1 to n-1
    for j=i to n-1
      if x(i)>x(j+1) then
        t=x(i)
        x(i)=x(j+1)
        x(j+1)=t
      endif
    next
  next
  for i=1 to n
    ? x(i)
  next
end sub

sub dec(n,x)
  for i=1 to n-1
    for j=i to n-1
      if x(i)<x(j+1) then
        t=x(i)
        x(i)=x(j+1)
        x(j+1)=t
      endif
    next
  next
  for i=1 to n
    ? x(i)
  next
end sub