' Gaussian.bas
' 28/07/2003
print "Gaussian Elimination"
print "-----"
print "SmallBASIC Version for Palm OS"
print "Developed by: Marc Christian Saribay"
print "Date Created: July 28, 2003"
print "Last Update: July 29, 2003"
print "-----"
dim m(50,50)
input "Enter number of rows: ",r
input "Enter number of columns: ",c
for i=1 to r
  for j=1 to c
    input "Enter ("+str(i)+","+str(j)+"): ",m(i,j)
  next
next
for i=1 to r
  row=" "
  for j=1 to c
    row=row+str(m(i,j))+" "
  next
  ? row
next
? "---"
for j=1 to c
  ploc=0
  for i=1 to r
    if ploc=0 then
      if m(i,j)<>0 then
        if j>1 then
          ok=0
          for e=1 to j-1
            if m(i,e)=0 then
              ok=ok+0
            else
              ok=ok+1
            endif
          next
        endif
        if ok=0 or j=1 then
          p=m(i,j)
          pr=i
          pc=j
          ploc=1
        endif
      endif
      if ploc=1 then
        for k=pc to c
          m(pr,k)=m(pr,k)/p
        next
        for L=1 to r
          if L<>pr then
            if m(L,pc)<>0 then
              tp=-m(L,pc)
              for n=pc to c
                 m(L,n)=(tp*m(pr,n))+m(L,n)
              next
            endif
          endif
        next
      endif
    endif
  next
next
? "***"
for i=1 to r
  row=" "
  for j=1 to c
    row=row+str(m(i,j))+" "
  next
  ? row
next