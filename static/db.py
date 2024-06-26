#extras formatea las respuestas en modo diccionario
#luego con jasonify lo podemos convertir a jason para mandarlo al cliente
from flask import Flask, request, jsonify, send_file
from psycopg2 import connect, extras
from cryptography.fernet import Fernet
from dotenv import load_dotenv
from os import environ

load_dotenv
app=Flask(__name__)

#carga las variables y se conecta
host=environ.get('dbHost')
port=environ.get('dbPort')
dbname=environ.get('dbName')
user=environ.get('dbUser')
password=environ.get('dbPwd')

def get_connection():
    conn = connect(host=host,port=port,dbname=dbname,user=user,password=password)
    return conn