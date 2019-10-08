import cham0421Library

choice = -1
cham0421Library.turnBacklight()
while (choice != 0):
  cham0421Library.printMenu()
  choice = int(input("Pick a option (0-5):"))
  if choice == 1:
    cham0421Library.cleanScreen()
    yChoice = int(input("Choose what spot to have the line(0-63):"))
    cham0421Library. horizontalLine(yChoice)
  elif choice == 2:
    cham0421Library.cleanScreen()
    xChoice = int(input("Choose what spot to have the line(0-127):"))
    cham0421Library.verticalLine(xChoice)
  elif choice == 3:
    cham0421Library.cleanScreen()
    xChoice = int(input("Choose the starting point x(0-127):"))
    yChoice = int(input("Choose the starting point y(0-63):"))
    wChoice = int(input("Choose the width of the step( right/positive & left/negative ):"))
    hChoice = int(input("Choose the height of the step( down/positive & up/negative ):"))
    cham0421Library.staircase(wChoice,hChoice,xChoice,yChoice)
  elif choice == 4:
    cham0421Library.cleanScreen()
    timeChoice = int(input("Choose how long to to run the code in seconds:"))
    cham0421Library.randomPixel(timeChoice)
  elif choice == 5:
    cham0421Library.cleanScreen()
    cham0421Library.clearBacklight()
cham0421Library.cleanScreen()
cham0421Library.clearBacklight()