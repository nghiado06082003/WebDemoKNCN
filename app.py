from chatbot import chatbot
from flask import Flask, render_template, request
import mysql.connector
import json

app = Flask(__name__)
app.static_folder = 'static'

@app.route("/")
def home():
    mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="test"
    )
    mycursor = mydb.cursor()
    sql = "SELECT job, luong FROM tuyen_dung LIMIT 3 "
    mycursor.execute(sql)
    result = mycursor.fetchall()
    return render_template("index.html", result = result)

@app.route("/index.html")
def start():
    mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="test"
    )
    mycursor = mydb.cursor()
    sql = "SELECT job, luong FROM tuyen_dung LIMIT 3 "
    mycursor.execute(sql)
    result = mycursor.fetchall()
    return render_template("index.html", result = result)

@app.route("/about.html")
def about():
    return render_template("about.html")

@app.route("/findjob.html")
def findjob():
    return render_template("findjob.html")

@app.route("/get")
def get_bot_response():
    userText = request.args.get('msg')
    return str(chatbot.get_response(userText))

@app.route("/test")
def get_data():
    mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="test"
    )

    userText = request.args.get('msg').lower()
    mycursor = mydb.cursor()
    if "data" in userText:
        sql = "SELECT job, luong, tencongty, id FROM tuyen_dung WHERE job LIKE '%data%'"
        mycursor.execute(sql)
    elif "designer" in userText:
        sql = "SELECT job, luong, tencongty, id FROM tuyen_dung WHERE job LIKE '%designer%'"
        mycursor.execute(sql)
    elif "software" in userText:
        sql = "SELECT job, luong, tencongty, id FROM tuyen_dung WHERE job LIKE '%software%'"
        mycursor.execute(sql)
    elif "php" in userText:
        sql = "SELECT job, luong, tencongty, id FROM tuyen_dung WHERE job LIKE '%php%'"
        mycursor.execute(sql)
    elif "java" in userText:
        sql = "SELECT job, luong, tencongty, id FROM tuyen_dung WHERE job LIKE '%java%'"
        mycursor.execute(sql)
    else:
        mycursor.execute("SELECT job, luong, tencongty, id FROM tuyen_dung")
    myresult = mycursor.fetchall()
    data = json.dumps(myresult)
    return data

@app.route("/detail.html")
def getDetail():
    jobID = request.args.get('id')
    mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="test"
    )
    mycursor = mydb.cursor()
    sql = "SELECT * FROM tuyen_dung WHERE id = " + jobID
    mycursor.execute(sql)
    result = mycursor.fetchone()
    return render_template("detail.html", result = result)


if __name__ == "__main__":
    app.run()