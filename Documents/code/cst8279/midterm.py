from gfxhat import lcd, backlight
from fractions import Fraction
import math 
import random
import time

def verticalSegmentN(x=0,y=63,h=5):
  i =0 
  while i < h:
    lcd.set_pixel(x,y,1)
    lcd.show()
    if (y==0):
      break
    i+=1
    y-=1


def horizontalSegment(x=128,y=0,w=5):
  for i in range(x,x-w,-1):
    if i ==0:
      break
    lcd.set_pixel(i,y,1)
    lcd.show()

def diagonalSegmentNW(x=127,y=63,l=5):
  for i in range(l):
    if x-i <0 or x-i > 127 or y-i< 0 or y-i >63:
      continue
    lcd.set_pixel(x-i,y-i,1)
    lcd.show()

def diagonalSegmentSW(x=128,y=0,l=5):
  for i in range(l+1):
    if x-i <0 or x-1 >127 or y+i > 63 or y+i < 0:
      continue
    lcd.set_pixel(x-i,y+i,1)
    lcd.show()

def drawDiamond(x=0,y=0,s=5):
  diagonalSegmentSW(x,y,s)
  diagonalSegmentNW(x,y,s)
  diagonalSegmentSW(x-s,y-s,s)
  diagonalSegmentNW(x-s,y+s,s)


myEmail = "cham0421@algonquinlive.com"
listEmail = list(myEmail)
count = 0
for i in listEmail:
  if i == 'a':
    count+=1
print(count)

backlight.set_all(255,255,255)
backlight.show()
verticalSegmentN(20,20,10)
horizontalSegment(20,20,10)
diagonalSegmentNW(20,20,10)
drawDiamond(34,5,10)
