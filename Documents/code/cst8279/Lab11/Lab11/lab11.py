from flask import Flask, render_template, request
import modules
# Create the application.
APP = Flask(__name__)

table_list = modules.database_to_dict("")
@APP.route('/')
def index():
 
  return render_template('index.html')

@APP.route('/table/<sort>')
def table(sort):
  table_list = modules.database_to_dict(sort)
  return render_template('table.html',students = table_list)

@APP.route('/dropdown')
def dropdown():  
  return render_template('dropdown.html', students = table_list)

@APP.route('/map', methods=['GET', 'POST'])
def map():  
  if request.method == "POST":
    car_brand = request.form.get("student-dropdown", None)
    if car_brand!=None:
      for student in table_list:
        if str(student['id']) == str(car_brand):
          return render_template("map.html", data = student)
    return render_template("map.html", data = " ")
  return render_template("map.html", data = " ")


if __name__ == '__main__':
  APP.debug=True
  APP.run()