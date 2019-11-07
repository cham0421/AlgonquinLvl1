
import cham0421Library 
import time

def CSVMaker(fInFile,fOutFile):
  fin = open(fInFile,"r")
  fout = open(fOutFile,"w")
  fout.write('"First Name", "Count" \n')
  for line in fin:
    lineArray = line.split(" ")
    line = ('"' + lineArray[0] + '",'  + lineArray[1])
    fout.write(line)
  fin.close()
  fout.close()


def Task1():
  CSVMaker("2000_BoysNames.txt","2000_BoysNames.csv")
  CSVMaker("2000_GirlsNames.txt","2000_GirlsNames.csv")
def Task2():
  fileName = input("Type the name of the file: ")
  fin = open(fileName,"r")
  for line in fin:
    print(line)

def Task3():
  fin = open("font3.txt","r")
  hexDic= {}
  for line in fin:
    id=line[-2:-1]
    charList = []
    for char in range(2,18,2):
      valueList = list(map(int,bin(int(line[char]+line[char+1],16))[2:].zfill(8)))
      charList.append(valueList)
    hexDic[id] = charList
  charRequest = input("Enter a character: ")
  if charRequest in hexDic:
    cham0421Library.turnBacklight()
    cham0421Library.objectDisplay(hexDic[charRequest],0,0)
    time.sleep(1)
    cham0421Library.eraseObject(hexDic[charRequest],0,0)
    cham0421Library.clearBacklight()
  else: 
    print("Character not found")

Task1()

Task2()

Task3()