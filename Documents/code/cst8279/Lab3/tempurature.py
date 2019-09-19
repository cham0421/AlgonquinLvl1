# Given a tempurature in Fahrenheit will calculate tempurature in Celsius 

fahrenheit = float(input("Type in tempurature in Fahrenheit > "))
celsius = (fahrenheit - 32) * (5/9)
print("With a tempurature of: " + str(fahrenheit) + " degrees Fahrenheit, the tempurature would be: "+ str(celsius)+ " degrees Celsius")