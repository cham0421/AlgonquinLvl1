from gfxhat import lcd, backlight
import math 
import random
import time
import os

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

# Sets the backlight to white
def turnBacklight():
  backlight.set_all(255,255,255)
  backlight.show()

# Resets backlight color.
def clearBacklight():
  backlight.set_all(0,0,0)
  backlight.show()

# Clears the lcd screen
def cleanScreen():
  lcd.clear()
  lcd.show()
    
# Create a function that displays a vertical line at a given x coordinate on the gfx hat.
# Input: x    (int): The x-coordinate in which to create the vertical line
#        start(int): Optional parameter allowing starting y-coordinate of vertical line
#        end  (int): Optional parameter allowing ending y-coordinate of vertical line
def verticalLine(x,start=0,end=63):
  if end > 63:
    end = 63
  elif end < 0:
    end = 0
  for i in range(start,end) if start < end else range(start,end,-1):
    lcd.set_pixel(x,i,1)
    lcd.show()

# Create a function that displays a horizontal line at a given y coordinate.
# Input: y    (int): The y-coordinate in which to create the horizonal line
#        start(int): Optional parameter allowing starting x-coordinate of horizontal line
#        end  (int): Optional parameter allowing ending x-coordinate of horizontal line  
def horizontalLine(y,start=0,end=127):
  if end > 127:
    end = 127
  elif end < 0:
    end = 0
  for i in range(start,end) if start < end else range(start,end,-1):
    lcd.set_pixel(i,y,1)
    lcd.show()

# Create a function that creates a staircase starting at a specific coordinate.
# Input: x(int): The x-coordinate in which to create the staircase 
#        y(int): The y-coordinate in which to create the staricase 
#        w(int): Width of each 'step' on the horizontal axis
#        h(int): Height of each 'step' on the vertical axis
def staircase(w,h,x,y):
  endX = x + w
  endY = y + h
  while (y <= 63 and y >= 0 and x <= 127 and x >= 0):
    horizontalLine(y,x,endX)
    x = endX
    verticalLine(x,y,endY)
    y= endY
    endX = x+w
    endY = y+h

# Displays random pixel on the screen for a given period of time specifies in seconds.
# Input: executeTime: amount of time to generate pixels on the screen
def randomPixel(executeTime):
  endTime = time.time() + executeTime
  while(time.time() < endTime):
    x=random.randint(0,127)
    y=random.randint(0,63)
    lcd.set_pixel(x,y,1)
    lcd.show()
 
# Calculates Area of a Circle
# Input:  radius(float): Radius of the circle
# Output: Area  (float): Area of the circle
def calculateAreaOfCircle(radius):
  return math.pi * (radius**2)

# Calculates miles per gallon
# Input:  miles  (float): miles travelled  
#         gallons(float): gallons consumed
# Output: miles per gallon (float)
def calculateMpg(miles,gallons):
  return miles / gallons

# Convert Fahrenheit to Celsius 
# Input:  Fahrenheit(float): Tempurature in Fahrenheit
# Output: Celsius   (float): Tempurature in Celsius
def convertFahrenheitToCelsius(fahrenheit):
  return (fahrenheit - 32) * (5/9)

# Calculates Distance between 2 points
# Input: x  : x-corrdinate for point 1
#        y  : y-corrdinate for point 1
#        x1 : x-corrdinate for point 2
#        y1 : y-corrdinate for point 2
# Output: Distance (float): distance between the 2 points 
def calculateDistanceBetweenPoints(x,y,x1,y1):
  return math.sqrt(((x1-x)**2)+((y1-y)**2))