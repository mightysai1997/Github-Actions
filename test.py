import sqlite3

def authenticate_user(username, password):
    conn = sqlite3.connect('example.db')
    cursor = conn.cursor()

    # Vulnerable SQL query that uses string concatenation
    query = "SELECT * FROM users WHERE username = '{}' AND password = '{}'".format(username, password)

    cursor.execute(query)
    result = cursor.fetchone()

    if result:
        print("Authentication successful")
    else:
        print("Invalid username or password")
        

    conn.close()
