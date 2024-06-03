from flask import Flask, render_template

app = Flask(__name__)

cert_path = '/etc/ssl/certs/ssl-cert-snakeoil.pem'
key_path = '/etc/ssl/private/ssl-cert-snakeoil.key'

@app.route('/', methods=['GET'])
def index():
    return render_template('index.html')

@app.route('/fotos', methods=['GET'])
def fotos():
    return render_template('fotos.html')

@app.route('/videos', methods=['GET'])
def videos():
    return render_template('videos.html')

@app.route('/sobre_nos', methods=['GET'])
def sobre_nos():
    return render_template('sobre_nos.html')

@app.route('/formulario', methods=['GET'])
def formulario():
    return render_template('formulario.html')

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080, debug=True, use_debugger=True, use_reloader=True) #ssl_context=(cert_path, key_path)""")
