import os
from flask import Flask, jsonify


app = Flask(__name__)


@app.route("/")
def root():
    return jsonify({"health": True})


@app.route("/vendor_data")
def vendor_data():
    # This should never be called
    return jsonify({"vendor_data": "vendor_data"})


@app.route("/user_data")
def user_data():
    return jsonify({"user_data": "user_data"})


if __name__ == "__main__":
    app.run(host="0.0.0.0", port="5000")
