# Given miles driven and gallons used will calculate MPG

miles = float(input("Type in the miles driven > "))
gallons = float(input("Type in the gallons used > "))
mpg = miles / gallons
print("Having travelled " + str(miles) + " miles and used "+str(gallons)+ " gallons, your mpg is: "+ str(mpg))