import waseemChamaaLibrary
# Tests for Distance between 2 points
print("Testing Distance between points (10,30) and (5,88)") 
print("Expected: distance = 58.22") 
print("Actual:   distance = {}".format( round(waseemChamaaLibrary.calculateDistanceBetweenPoints(10,30,5,88),2) ))

print("Testing Distance between points (10,-30) and (5,88)")  
print("Expected: distance = 118.11 ")
print("Actual:   distance = {}".format( round(waseemChamaaLibrary.calculateDistanceBetweenPoints(10,-30,5,88),2) ))

print("Testing Distance between points (10,-30) and (-5,88)") 
print("Expected: distance = 118.95")
print("Actual:   distance = {}".format( round(waseemChamaaLibrary.calculateDistanceBetweenPoints(10,-30,-5,88),2) ))
