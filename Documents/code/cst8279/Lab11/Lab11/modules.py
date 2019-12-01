import sqlite3
import base64
import webbrowser

# Gets student data from database with 'sort' order and puts data into a dictionary
def database_to_dict(sort):

  try:
    conn = sqlite3.connect('week10.db')
  except:
    print("Could not connect to database")
    return -1
  cursor = conn.cursor()

  # Retrieves the encoded data
  data = cursor.execute("SELECT * FROM Lab10 where Student IS NOT NULL {}".format(sort)).fetchall()
  listData = list()
  for row in data:
    # converts tuple to list
    tempList = list(row)
    # replaces encoded data with decoded url
    tempList[1] = str(base64.b64decode(tempList[1]))[2:]
    listData.append(tempList)

  lists = []
  # converts list into dictionary
  for j in listData:
    count = 0
    row = {}
    for i in cursor.description:
      row[i[0]] = j[count]
      count += 1
    lists.append(row)
  conn.close()
  return lists

# opens url of row with id = user_id
def openWeb(user_id):
  lists = database_to_dict(" ")
  for element in lists:
    if int(user_id) == int(element["id"]):
      webbrowser.open(element['Link'])