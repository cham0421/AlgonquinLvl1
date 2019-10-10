from gfxhat import lcd, backlight, fonts
from PIL import Image, ImageFont, ImageDraw
from click import getchar
import math 
import random
import time
import os

# Sets the backlight to white
def turnBacklight():
  backlight.set_all(255,255,255)
  backlight.show()

# Resets backlight color.
def clearBacklight():
  backlight.set_all(0,0,0)
  backlight.show()

# Clears the lcd screen
def clearScreen():
  lcd.clear()
  lcd.show()

def objectDisplay(list, startX, startY):
  clearScreen()
  if startY < 0:
    startY = 0
  if startX < 0:
    startX = 0
  print(startY + len(list))
  print(startX + len(list[0]))
  for i in range(0, len(list)):
    for j in range(0, len(list[0])):
      lcd.set_pixel(startX+j,startY+i,list[i][j])
      lcd.show()
  time.sleep(5)





test1 =  [
[1,1,1,1,1,1,1,1],
[1,1,1,1,1,1,1,1],
[0,1,1,1,1,1,1,0],
[1,0,1,1,1,1,0,1],
[1,0,0,1,1,0,0,1],
[1,0,0,1,1,0,0,1],
[0,0,0,1,1,0,0,0],
[0,0,0,0,0,0,0,0]
]

test2 = [
[0,0,0,1,1,1,1,1,0,0,0],
[0,0,1,1,1,1,1,1,1,0,0],
[0,1,1,1,1,1,1,1,1,1,0],
[1,1,1,1,1,1,1,1,0,0,0],
[1,1,1,1,1,1,1,0,0,0,0],
[1,1,1,1,1,1,0,0,0,0,0],
[1,1,1,1,1,1,0,0,0,0,0],
[1,1,1,1,1,1,1,0,0,0,0],
[1,1,1,1,1,1,1,1,0,0,0],
[0,1,1,1,1,1,1,1,1,1,0],
[0,0,1,1,1,1,1,1,1,0,0],
[0,0,0,1,1,1,1,1,0,0,0]
]

test3 = [
[1,1,1,1,1,1,1,1,1,1,1],
[1,1,1,1,1,1,1,1,1,1,1],
[1,1,1,1,0,0,0,0,1,1,1],
[1,1,1,1,0,0,0,0,1,1,1],
[1,1,1,1,0,0,0,0,1,1,1],
[1,1,1,1,0,0,0,0,1,1,1],
[1,1,1,1,1,1,1,1,1,1,1],
[1,1,1,1,1,1,1,1,1,1,1],
[1,1,1,1,1,1,1,1,1,1,1],
[1,1,1,1,0,0,0,0,0,0,0],
[1,1,1,1,0,0,0,0,0,0,0],
[1,1,1,1,0,0,0,0,0,0,0],
[1,1,1,1,0,0,0,0,0,0,0],
[1,1,1,1,0,0,0,0,0,0,0],
[1,1,1,1,0,0,0,0,0,0,0],
[1,1,1,1,0,0,0,0,0,0,0],
]

turnBacklight()
objectDisplay(test1,0,0)
objectDisplay(test2,0,0)
objectDisplay(test3,0,0)
clearBacklight()
