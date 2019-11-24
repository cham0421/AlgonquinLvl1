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
  return render_template('table.html', students=table_list)


@APP.route('/dropdown', methods=['GET', 'POST'])
def dropdown():
  if request.method == "POST":
    user_id = request.form.get("student-dropdown", None)
    modules.openWeb(user_id)
  return render_template('dropdown.html', students=table_list)

if __name__ == '__main__':
    APP.debug = True
    APP.run()
