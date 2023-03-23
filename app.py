from chatbot import chatbot
from flask import Flask, render_template, request
import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="",
  database="shop"
)

mycursor = mydb.cursor()
mycursor.execute("SELECT name, image FROM products")
myresult = mycursor.fetchall()

app = Flask(__name__)
app.static_folder = 'static'

@app.route("/")
def home():
    return render_template("index.html")

@app.route("/get")
def get_bot_response():
    userText = request.args.get('msg')
    return str(chatbot.get_response(userText))

@app.route("/test")
def test_func():
    data = ""
    for x in myresult:
        data += '<div class="row">'
        data = data + '<div class="col-auto"><img src="' + str(x[1]) + '" alt="Picture from MySQL DB" height="200" width="300"></div>'
        data = data + '<div class="col"><h4>' + str(x[0]) + '<h4></div>'
        data += '</div>'
    return data

if __name__ == "__main__":
    app.run()