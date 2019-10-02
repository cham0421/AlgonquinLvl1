from gfxhat import lcd
import random
import time
#Create a function that displays a vertical line at a given x coordinate on the gfx hat.
def verticalLine(x,start=0,end=63):
  if end> 63:
    end = 63
  elif end< 0:
    end =0
  for i in range(63):
    lcd.set_pixel(x,i,1)

#Create a function that displays a horizontal line at a given y coordinate.
def horizontalLine(y,start=0,end=127):
  if end> 127:
    end =127
  elif end< 0:
    end =0
  for i in range(start, end):
    lcd.set_pixel(i,y,1)
 
#Create a function that creates a staircase starting at a specific coordinate. One stair has a width of w and a height of h.
def staircase(w,h,x,y):
  startX=x
  endX = startX + (w)
  startY = y
  endY = startY + (h)
  while (endY < 63 and endY > 0 and endX < 127 and endY > 0):
    horizontalLine(startY,startX,endX)
    startX = endX
    endX = startX+w
    verticalLine(startX,startY,endY)
    startY= endY
    endY = startY+h
#Create a function that displays random pixel on the screen for a given period of time specifies in seconds.
def randomPixel(executeTime):
  endTime = time.time() + executeTime
  while(time.time() < endTime):
    x=random.randint(0,127)
    y=random.randint(0,63)
    lcd.set_pixel(x,y,1)

#Create a function clearBacklight() that resets the backlight color.
def clearBacklight():
  return 
