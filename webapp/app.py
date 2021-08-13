from flask import Flask
import datetime
import time
import threading
import os
import random

app = Flask(__name__)

@app.route("/")
def main():
    currentDT = datetime.datetime.now()
    status = 200
    if random.random() > 0.4:
        status = 503
    return "[{}]Welcome user! current time is {} ".format(os.environ['VERSION'],str(currentDT)), status

@app.route("/health")
def health():
    return "OK"

if __name__ == "__main__":
    app.run(host='0.0.0.0')

