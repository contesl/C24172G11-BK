#el objeto request trae los datos dde el requerimiento
#send_file permite devolver html al cliente
#extras formatea las respuestas en modo diccionario
#luego con jasonify lo podemos convertir a jason para mandarlo al cliente
from flask import Flask, request, jsonify, send_file
from flask_cors import CORS
from psycopg2 import connect, extras

#cryptography es para guardar la pwd encriptada en la base
#lo probamos, funciono pero luego ya no lo usamos
#   from cryptography.fernet import Fernet

# en views.py estan las funciones que permiten controlar el CRUD
from static.views import *

app=Flask(__name__)
#app.route('/', methods=['GET'])(home)

#---------consulta masiva de item
app.route('/api/Item', methods=['GET'])(get_allItem)

#---------consulta de un item de itemes de una categoria
app.route('/api/Item/<categoria>', methods=['GET'])(get_catItem)

#---------pagina de arranque
app.route('/api/users', methods=['GET'])(get_users)

#----- ALTA ----------------
app.route('/api/users', methods=['POST'])(create_user)

#----- BAJA ------------
app.route('/api/users/<userId>', methods=['DELETE'])(delete_user)

#---------MODIFICACION-----
app.route('/api/users/<userId>', methods=['PUT'])(update_user)

#--COnsulta de un usuario en particular------
app.route('/api/users/<userId>', methods=['GET'])(get_user)


CORS(app)

if __name__ == '__main__':
    app.run(debug=True)
