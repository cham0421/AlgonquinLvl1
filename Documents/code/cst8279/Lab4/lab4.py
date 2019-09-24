import math 

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