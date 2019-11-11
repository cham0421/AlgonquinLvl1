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
  

# Displays an Object based on a matrix of 0's and 1's
# Inputs:  list (list/tuple): The matrix of 0's and 1's
#               startX (int): The starting horizontal position of the object
#               startY (int): The starting vertical position of the object
def objectDisplay(list, startX, startY):
  if startY < 0 :
    startY = 0
  elif startY+ len(list) > 64 :
    startY = 64 - len(list)
  
  if startX < 0:
    startX = 0
  elif startX + len(list[0]) > 128 :
    startX = 128 - len(list[0])

  for i in range(0, len(list)):
    for j in range(0, len(list[i])):
      lcd.set_pixel(startX+j,startY+i,list[i][j])
  lcd.show()
  time.sleep(.1)

# Erases an Object based on a matrix of 0's and 1's
# Inputs:  list (list/tuple): The matrix of 0's and 1's
#               startX (int): The starting horizontal position of the object
#               startY (int): The starting vertical position of the object
def eraseObject(list,startX=0,startY=0):
  for i in range(0, len(list)):
    for j in range(0, len(list[i])):
      lcd.set_pixel(startX+j,startY+i,0)
  lcd.show()

# Displays an Object at startX+newX and startY+newY coordinates and returns the pair
# Inputs:  list (list/tuple): The matrix of 0's and 1's
#               startX (int): The starting horizontal position of the object
#               startY (int): The starting vertical position of the object
#                 newX (int): The horizontal displacement of the object
#                 newY (int): The vertical displacement position of the object
# Outputs: startX+newX (int): The new horizontal position of the object
#          startY+newY (int): The new vertical position of the object
def moveObject(list,startX=0,startY=0,newX=0,newY=0):
  objectDisplay(list, startX+newX, startY+newY)
  return  startX+newX, startY+newY,

# Checks if the list will collide with the boundaries and changes the direction if it will
# Inputs:  list (list/tuple): The matrix of 0's and 1's
#               startX (int): The starting horizontal position of the object
#               startY (int): The starting vertical position of the object
#                 newX (int): The horizontal displacement of the object
#                 newY (int): The vertical displacement position of the object
#                   Sx (int): Screen boundary for Horizontal
#                   Sy (int): Screen boundary for Vertical
# Output:         newX (int): The horizontal displacement of the object
#                 newY (int): The vertical displacement position of the object
def checkCollision(list,startX=0,startY=0,newX=0,newY=0,Sx=128,Sy=64):
  if startY+newY < 0 :
    startY = 0
    newY = newY*-1

  elif startY+newY+ len(list) > Sy :
    startY = Sy - len(list)-1
    newY = newY*-1

  if startX+newX < 0:
    startX = 0
    newX = newX*-1

  elif startX+newX + len(list[0]) > Sx :
    startX = Sx - len(list[0]) -1    
    newX = newX*-1
  return  startX, startY, newX, newY

# Main function to bounce a ball
# Inputs:  list (list/tuple): The matrix of 0's and 1's
#               startX (int): The starting horizontal position of the object
#               startY (int): The starting vertical position of the object
#                 newX (int): The horizontal displacement of the object
#                 newY (int): The vertical displacement position of the object
# Output:       startX (int): The new starting horizontal position of the object
#               startY (int): The new starting vertical position of the object
#                 newX (int): The horizontal displacement of the object (direction might have changed)
#                 newY (int): The vertical displacement of the object (direction might have changed)
def bounceBall(list,startX=0,startY=0,newX=0,newY=0):
  eraseObject(list, startX, startY)
  startX, startY,newX, newY = checkCollision(list, startX, startY, newX, newY)
  startX, startY = moveObject(list,startX,startY,newX,newY)
  return  startX, startY, newX, newY


  
# Reads a text file and writes a csv file
# Inputs:  fInFile: The name of the text file to read
#         fOutFile: The name of the csv file to write(create)
def csvMaker(fInFile,fOutFile):
  try:
    fin = open(fInFile,"r")
    fout = open(fOutFile,"w")
    fout.write('"First Name", "Count" \n')
    for line in fin:
      lineArray = line.split(" ")
      line = '"{}",{}\n'.format(lineArray[0],lineArray[1])
      fout.write(line)
    fin.close()
    fout.close()
  except:
    print("Error with files")

# Reads a csv file and outputs each line to console 
def outputCSV():
  try:
    fileName = input("Type the name of the file: ")
    fin = open(fileName,"r")
    for line in fin:
      print(line)
    fin.close()
  except:
    print("Error with file")

# Reads the fonts3.txt file and creates a dictionary where the key is a character and the value is a 8x8bit representation of said character.
def generateDictionary():
  try:
    fin = open("font3.txt","r")
    hexDic= {}
    for line in fin:
      # Retreives the key from the line
      id=line[-2:-1]
      charList = []
      # Reads every 2 hex digits and converts into binary then puts into a list
      for char in range(2,18,2):
        valueList = list(map(int,bin(int(line[char]+line[char+1],16))[2:].zfill(8)))
        charList.append(valueList)
      # Sets value of dictionary key to list value
      hexDic[id] = charList
    # Prompts for a key value and prints value on the pi lcd
    fin.close()
    charRequest = input("Enter a character: ")
    if charRequest in hexDic:
      turnBacklight()
      objectDisplay(hexDic[charRequest],0,0)
      time.sleep(1)
      eraseObject(hexDic[charRequest],0,0)
      clearBacklight()
    else: 
      print("Character not found")
  except:
    print("Error reading")
