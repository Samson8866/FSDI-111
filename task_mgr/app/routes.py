from flask import (
    Flask,
    request
)
from app.database import task

app = Flask(__name__)

@app.get("/")
@app.get("/tasks")
def get_all_tasks():
    out = { 
        "task": task.scan(),
        "ok": True
    }
    return out

@app.get("/tasks/<int:pk>")
def get_single_task(pk):
    out = {
        "task": task.select_by_id(pk),
        "ok": True
    }
    return out 

@app.put("/task/<int:pk>")
def update_task(pk):
    task_data = request.json
    task.update_by_id(task_data, pk)
    return "", 204

@app.post("/task")
def post_task():
    task_data = request.json
    task.create_task(task_data)
    return "", 204

@app.delete("/task/<int:pk>")
def delete_task(pk):
    task.delete_by_id(pk)
    return "", 204

