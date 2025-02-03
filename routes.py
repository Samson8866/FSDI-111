from flask import Flask

app = Flask(__name__)

@app.get("/")
def index():
    me = {
        "first_name": "Samson",
        "last_name": "Hill",
        "is_online": True,
        "hobbies": "Basketball"
    }
    return me

