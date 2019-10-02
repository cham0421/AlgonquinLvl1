from gfxhat import lcd, backlight
import random
import time
import os
#Create a function that displays a vertical line at a given x coordinate on the gfx hat.
def verticalLine(x,start=0,end=63):
  if end > 63:
    end = 63
  elif end < 0:
    end = 0
  for i in range(start,end) if start < end else range(start,end,-1):
    lcd.set_pixel(x,i,1)

#Create a function that displays a horizontal line at a given y coordinate.
def horizontalLine(y,start=0,end=127):
  if end > 127:
    end = 127
  elif end < 0:
    end = 0
  for i in range(start,end) if start < end else range(start,end,-1):
    lcd.set_pixel(i,y,1)
 
#Create a function that creates a staircase starting at a specific coordinate. One stair has a width of w and a height of h.
def staircase(w,h,x,y):
  endX = x + w
  endY = y + h
  while (y < 63 and y > 0 and x < 127 and x > 0):
    horizontalLine(y,x,endX)
    x = endX
    verticalLine(x,y,endY)
    y= endY
    endX = x+w
    endY = y+h
    print(x,y)
    lcd.show()
#Create a function that displays random pixel on the screen for a given period of time specifies in seconds.
def randomPixel(executeTime):
  print(time.time())
  endTime = time.time() + executeTime
  print(endTime)
  while(time.time() < endTime):
    print("current Time:",time.time())
    x=random.randint(0,127)
    y=random.randint(0,63)
    lcd.set_pixel(x,y,1)
    lcd.show()

#Create a function clearBacklight() that resets the backlight color.
def clearBacklight():
  return 
def printMenu():
  os.system('cls||clear')
  print("*************************************")
  print("*                                   *")
  print("*      Welcome to LCD screen        *")
  print("*      1-Create a horizonal line    *")
  print("*      2-Create a vertical line     *")
  print("*      3-Create a stairway          *")
  print("*      4-Random pixel               *")
  print("*      5-Clear Backlight            *")
  print("*      0-Exit                       *")
  print("*                                   *")
  print("*************************************")

choice = -1
while (choice != 0):
  lcd.clear()
  printMenu()
  choice = int(input("Pick a option (0-4):"))
  if choice == 1:
    yChoice = int(input("Choose what spot to have the line(0-63):"))
    horizontalLine(yChoice)
  elif choice == 2:
    xChoice = int(input("Choose what spot to have the line(0-127):"))
    verticalLine(xChoice)
  elif choice == 3:
    xChoice = int(input("Choose the starting point x(0-127):"))
    yChoice = int(input("Choose the starting point y(0-63):"))
    wChoice = int(input("Choose the width of the step:"))
    hChoice = int(input("Choose the height of the step:"))
    staircase(wChoice,hChoice,xChoice,yChoice)
  elif choice == 4:
    timeChoice = int(input("Choose how long to to run the code in seconds:"))
    randomPixel(timeChoice)
  elif choice == 5:
    clearBacklight()
  lcd.show()