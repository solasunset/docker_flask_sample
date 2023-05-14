from flask import Flask, redirect, url_for

app = Flask(__name__)

@app.route('/')
def index():
    return '''<h3> Hello, World! </h3>'''

if __name__ == "__main__": 
    app.run(host='0.0.0.0',port=80,debug=True)
