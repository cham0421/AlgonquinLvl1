from math import pi

def printInstructions():
  print("Hello")
  print("These are the instructions")

def circumferenceOfCircle(radius):
  return 2 * radius * pi

print("Hello World")
printInstructions()
r = float(input("Type a radius for a circle >"))
c = circumferenceOfCircle(r)
print("The circumference of a circle with radius {}, is {}".format(r,c))
