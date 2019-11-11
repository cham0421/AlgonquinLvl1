import sqlite3
import base64
import webbrowser

def Lab10():
  choice = 0
  # Keeps looping until the choice is 1-24 or 'q'
  while (choice < 1 or choice > 24):
    choice = input("Pick a number between 1-24: ")
    if choice == 'q':
      return 0
    try:
      choice = int(choice)
    except:
      choice = 0
      continue
  # Connect to the database
  try:
    conn = sqlite3.connect('week10.db')
  except:
    print("Could not connect to database")
    return -1
  cursor = conn.cursor()
  data = cursor.execute("SELECT Link FROM Lab10 WHERE id={}".format(choice)).fetchall()
  url = base64.b64decode(data[0][0])
  webbrowser.open_new_tab(url)
  city = input("What is the name of the city: ")
  country = input("What is the name of the country: ")
  cursor.execute("UPDATE Lab10 SET City = '{}' , Country = '{}' where id ={}".format(city,country,choice))
  conn.commit()
  conn.close()

Lab10()
