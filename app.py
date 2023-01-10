from flask import Flask
from dotenv import load_dotenv
load_dotenv()

app = Flask(__name__)



@app.route('/')
def hello_world():  # put application's code here
    return 'Hello World! Я тебя запустил!'




if __name__ == '__main__':
    app.run()
