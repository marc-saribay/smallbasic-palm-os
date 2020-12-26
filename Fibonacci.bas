‘Fibonacci.bas
‘14/05/2002
input “Enter n: “,n
a=0
b=1
for i=1 to n
t=a
print t
a=b
b=b+t
next
print “The nth term is “ + str(t)