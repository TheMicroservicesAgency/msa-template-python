from flask import Flask, jsonify, redirect

app = Flask(__name__)


@app.route('/hello-world')
def hello_world():
    data = {'message': 'Hello, World!'}
    response = jsonify(data)
    return response


if __name__ == "__main__":

    #app.run(debug=True, port=8080, threaded=True)
    app.run(port=8080, threaded=True)
