#FAILED ATTEMPT
def clearList(array):
  print("Screen Cleared")
  array = [ [0] * 10 for _ in range(11)]
  printList(array)
  return array

def printList(array):
  print("------------------------------")
  for i in range(len(array)):
    print(array[i]) 
  print("------------------------------")


#Create a function that displays a vertical line at a given x coordinate on the gfx hat.
def verticalLine(array,y,start=0,end=10):
  if (end>len(array) or start<0):
    return array
  for i in range(start, end):
    array[i][y] = 1
  return array

#Create a function that displays a horizontal line at a given y coordinate.
def horizontalLine(array,x,start=0,end=11):
  if (end>len(array[0]) or start<0):
    return array
  else:
    for i in range(start, end):
      array[x][i] = 1
  return array
 
#Create a function that creates a staircase starting at a specific coordinate. One stair has a width of w and a height of h.
def staircase(array,w,h,x,y):
  startX=x
  endX = startX+w
  startY=y
  endY = startY+h
  print(startX)
  print(startY)
  print(endX)
  print(endY)
  while (endX != len(array[0]) or endY != len(array)):
    array= horizontalLine(array,startY,startX,endX)
    startX = endX
    endX = startX+w
    array = verticalLine(array,startX,startY,endY)
    startY= endY
    endY = startY+h
    printList(array)


#Create a function that displays random pixel on the screen for a given period of time specifies in seconds.
#Create a function clearBacklight() that resets the backlight color.
zeros = [[1,2,3],[1]] 
zeros = clearList(zeros)
printList(zeros)
zeros = verticalLine(zeros,3)
printList(zeros)
zeros = clearList(zeros)
zeros = horizontalLine(zeros,3)
printList(zeros)
zeros = clearList(zeros)
staircase(zeros,2,-2,1,1)
printList(zeros)
