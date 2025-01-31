from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/api', methods=['GET'])
def home():
    return jsonify({"message": "Hello, That's Great ! This is a simple Flask API."})

if __name__ == '__main__':
    app.run()

