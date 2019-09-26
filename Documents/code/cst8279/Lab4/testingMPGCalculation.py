import waseemChamaaLibrary
# Testing Calculation of MPG
print("Testing Calculatings MPG with miles = 50, gallon = 33")
print("Expected: mpg = 1.53")
print("Actual:   mpg = {}".format( round(waseemChamaaLibrary.calculateMpg(50 , 33),2) ))

print("Testing Calculatings MPG. Expected: miles = 16, gallon = 3")
print("Expected: mpg = 5.33")
print("Actual:   mpg = {}".format( round(waseemChamaaLibrary.calculateMpg(16 , 3),2 )))

print("Testing Calculatings MPG. Expected: miles = 99, gallon = 102")
print("Expected: mpg = 0.97")
print("Actual:   mpg = {}".format( round(waseemChamaaLibrary.calculateMpg(99 , 102),2 )))
