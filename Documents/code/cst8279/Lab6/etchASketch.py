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

def displayText(text,x,y):
  lcd.clear()
  width, height = lcd.dimensions()
  image = Image.new('P', (width, height))
  draw = ImageDraw.Draw(image)
  font = ImageFont.truetype(fonts.AmaticSCBold, 24)
  w, h = font.getsize(text)
  draw.text((x,y), text, 1, font)
  for x1 in range(x,x+w):
    for y1 in range(y,y+h):
      pixel = image.getpixel((x1, y1))
      lcd.set_pixel(x1, y1, pixel)
  lcd.show() 
  time.sleep(5)

def etchASketch():
  c = 'p'
  print("Press s to start")
  while c!= 'q':
    c = getchar()
    if c == 's':
      displayText("ETCH-A-SKETCH",10,10)
      clearScreen()
      x = 63
      y = 31
    elif c == '\x1b[A':
      if y == 0:
        y = 63
      y = (y-1) % 63
    elif c == '\x1b[B':
      y = (y+1) % 63
    elif c == '\x1b[C':
      x = (x+1) % 127
    elif c == '\x1b[D':
      if x==0:
        x = 127
      x = (x-1) % 127
    else:
      print("BAD INPUT")
    lcd.set_pixel(x,y,1)
    lcd.show()
  clearScreen()

turnBacklight()
clearScreen()
etchASketch()
clearBacklight()