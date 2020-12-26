' NumGuess.bas
' 30/01/2002

print "Number Guess Program (1 to 100)"
print "-----"
print "SmallBASIC Version for Palm OS"
print "Developed by: Marc Christian Saribay"
print "Date Created: January 30, 2002"
print "Last Update: February 3, 2002"
print "-----"
range = 100
guess = 0
card = 1
initial = 1

10 if initial <= range then
  print "Generating Card "+str(card) + " please wait..."
  n=initial
  c=1
  c2=1
  if card=2 or card=3 then
    strx="   "
  else
    strx=""
  endif
  while range >= n
    if c <= initial then
      strx =strx + " " + str(n)
      n=n+1
      c=c+1
    else
      if c2 <= initial then
        n=n+1
        c2=c2+1
      else
        c=1
        c2=1
      endif
    endif
  wend
  print "[Card " +str(card) +"]"
  print strx
20  print "Is your number in this card?"
  input "(y/n)",x
  if len(x)<2 then
    if x="n" then
     card=card+1
      initial=initial*2
      goto 10
    elif x="y" then
      guess=guess+initial
      card=card+1
      initial=initial*2
      goto 10
    else
      print "Invalid Input!"
      goto 20
    endif
  else
    print "Invalid Entry!"
    goto 20
  endif
else
  if guess<=100 then
    print "The number is " + str(guess)
  else
    print "You are fooling me!"
  endif
endif