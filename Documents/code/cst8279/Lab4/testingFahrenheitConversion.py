import lab4
# Tests for conversion of Fahrenheit to Celcius.
print("Testing Fahrenheit to Celcius at 50F") 
print("Expected: 10.0C")
print("Actual:   {}C".format( round(lab4.convertFahrenheitToCelsius(50),2) ))

print("Testing Fahrenheit to Celcius at 40F")
print("Expected: 4.44C")
print("Actual:   {}C".format( round(lab4.convertFahrenheitToCelsius(40),2) ))

print("Testing Fahrenheit to Celcius at 11F")
print("Expected: -11.67C")
print("Actual:   {}C".format( round(lab4.convertFahrenheitToCelsius(11),2) ))
