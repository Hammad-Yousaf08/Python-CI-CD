from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/api', methods=['GET'])
def home():
    return jsonify({"message": "Hello,Flask Hafiz Adeel  That's Great ! This is a simple Flask API."})

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=3000)

