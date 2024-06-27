from flask import Flask, request, jsonify, send_file
from flask_cors import CORS
from psycopg2 import connect, extras
# en db.py tenemos las variables de coneccion y la coneccion a la db
# la funcion get_connection esta ahi dentro
from static.db import * 

#----------------------------------------------     
# defhome(): #la pagina de arranque
#    return send_file('static/usuarios.html')
#===================================   

#---- CONSULTA MASIVA DE ITEMS--------
def get_Item():
    conn=get_connection()
    cur=conn.cursor(cursor_factory=extras.RealDictCursor)
    cur.execute('SELECT * from items')
    result=cur.fetchall()
  
    return jsonify(result)

#---- CONSULTA MASIVA--------
def get_users():
    conn=get_connection()
    cur=conn.cursor(cursor_factory=extras.RealDictCursor)
    cur.execute('SELECT * from users')
    result=cur.fetchall()
  
    return jsonify(result)

#---- ALTA--------
def create_user():
  
    result=request.get_json()
    username=result['username']
    email=result['email']
    password=result['password']
    #password=Fernet(key).encrypt(bytes(result['password'], 'utf-8'))
    
    conn=get_connection()
    cur=conn.cursor(cursor_factory=extras.RealDictCursor)
    
    #ahora cuando inserta devuelve un diccionario con todos los datos
    cur.execute('insert into users (username, email, password) values (%s, %s, %s) returning *',
                (username, email, password))
    nuevoUsuario = cur.fetchone()
        
    conn.commit()
    cur.close()
    conn.close()
    
    #ahora retorno un json al cliente con los datos insertados en la base
    return jsonify(nuevoUsuario)

 #----- BAJA ------------
#--@app.delete('/api/users/<userId>')
def delete_user(userId):
    conn=get_connection()
    cur=conn.cursor(cursor_factory=extras.RealDictCursor)
    cur.execute('DELETE from users where id=%s RETURNING *', (userId,))
    result=cur.fetchone()
    
    conn.commit()
    cur.close()
    conn.close()
    
    if result is None:
        return jsonify({'message':"Usuario Inexistente"})
    return jsonify(result)

#---------MODIFICACION-----
#@app.put('/api/users/<userId>')
def update_user(userId):
        
    conn=get_connection()
    cur=conn.cursor(cursor_factory=extras.RealDictCursor)
    
    result=request.get_json()
    id=userId
    username=result['username']
    email=result['email']
    password=result['password']
    #password=Fernet(key).encrypt(bytes(result['password'], 'utf-8'))
    
    #ahora cuando inserta devuelve un diccionario con todos los datos
    cur.execute(
        'update users set username = %s, email=  %s, password= %s where id=%s returning *', 
         (username, email, password, id))
      
    updatedUser = cur.fetchone()
     
    conn.commit()
    cur.close()
    conn.close()
  
    if updatedUser is None:
       return jsonify({'message':"Usuario Inexistente"}) 
  
    #ahora retorno un json al cliente con los datos insertados en la base
    return jsonify(updatedUser)

#--------------------------
#--COnsulta de un usuario en particular------
#@app.get('/api/users/<userId>')
def get_user(userId):
    conn=get_connection()
    cur=conn.cursor(cursor_factory=extras.RealDictCursor)
    cur.execute('SELECT * from users where id=%s', (userId,))
    result=cur.fetchone()
    if result is None:
        return jsonify({'message':"Usuario Inexistente"})
    return jsonify(result)

