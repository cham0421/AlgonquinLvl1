import sqlite3
import base64
def database_to_dict(sort):
  
  try:
    conn = sqlite3.connect('week10.db')
  except:
    print("Could not connect to database")
    return -1
  cursor = conn.cursor()

  # Retrieves the encoded data
  data = cursor.execute("SELECT * FROM Lab10 {}".format(sort)).fetchall()
  listData = list()
  for row in data:
    tempList = list(row)
    tempList[1] = str(base64.b64decode( tempList[1] ))[2:]
    listData.append(tempList)

  lists = []
  for j in listData:
    count = 0
    row = {}
    for i in cursor.description:
      row[i[0]] = j[count]
      count+=1
    lists.append(row)
  conn.close()
  return lists
