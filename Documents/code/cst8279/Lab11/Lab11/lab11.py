from flask import Flask, render_template
import modules
# Create the application.
APP = Flask(__name__)

table_list = modules.database_to_dict(list())
@APP.route('/')
def index():
 
  return render_template('index.html')

@APP.route('/table')
def table():
  
  return render_template('table.html',students = table_list)
@APP.route('/map')

def map():
  
  return render_template('map.html', students = table_list)


if __name__ == '__main__':
  APP.debug=True
  APP.run()