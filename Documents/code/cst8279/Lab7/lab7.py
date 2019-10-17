import cham0421Library
  # Test data 
ball =  [
[0,0,0,1,1,0,0,0],
[0,0,1,1,1,1,0,0],
[0,1,1,1,1,1,1,0],
[0,1,1,1,1,1,1,0],
[0,1,1,1,1,1,1,0],
[0,1,1,1,1,1,1,0],
[0,0,1,1,1,1,0,0],
[0,0,0,1,1,0,0,0]
]
x=5
y=5
mx =5
my = 5
i =0
x = int(input("Where should I start the ball(x)"))
y = int(input("Where should I start the ball(y)"))
mx = int(input("How fast should it go ball(x)"))
my = int(input("How fast should it go ball(y)"))
cham0421Library.turnBacklight()
cham0421Library.objectDisplay(ball,x,y)
while (i!=1):
  x,y,mx,my = cham0421Library.moveObject(ball,x,y,mx,my)