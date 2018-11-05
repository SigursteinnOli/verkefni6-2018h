#Sigursteinn Óli Þorsteinsson
#19/09/18
#Verkefni 4

from sys import argv
from bottle import *
from beaker.middleware import SessionMiddleware
import os

session_opts = {
    "session.type":"file",
    "session.data_dir":"/data",
    "session.cookie_expires":300,
    'session.auto': True
}

app = SessionMiddleware(app(), session_opts)

vara = [{"name":"Jakki","price":"25000"},
        {"name":"Peysa","price":"15000"},
        {"name":"Kjóll","price":"30000"},
        {"name":"Naríur","price":"5000"},
        {"name":"Samfestingur","price":"35000"},
        {"name":"Jakkaföt","price":"40000"}]

@route("/")
def index():
    return template ("index.tpl")

@route("/chart/<id>")
def add(id):
    bs = request.environ.get('beaker.session')
    bs[id] = "check"
    bs.save()
    redirect("/")

@route("/chart")
def chart():
    bs = request.environ.get("beaker.session")
    return template("chart", val = vara)

@route("/del/<id>")
def eyda(id):
    bs = request.environ.get('beaker.session')
    bs[id] = None
    redirect("/chart")


@route("/delall")
def eyda():
    bs = request.environ.get('beaker.session')
    bs.delete()
    bs.save()
    redirect("/chart")




@route("/static/<skra>")
def static_skra(skra):
    return static_file(skra, root="./static")

@error(404)
def villa(error):
    return "<h1 style = color:red>Þessi síða finnst ekki</h1>"


#run(host="localhost", port =8080, reloader=True, debug=True, app = app)
run(host='0.0.0.0', port=os.environ.get('PORT'), app=app)


