
--How to drop tables:
--DROP TABLE task;

--Create our table:
CREATE TABLE IF NOT EXISTS task (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(64),
    summary VARCHAR(128),
    description TEXT,
    is_done BOOLEAN DEFAULT 0
);

--Dummy data
INSERT INTO task (
    name,
    summary,
    description
) VALUES
(
    "Walk the dog",
    "Take Sy out for a stroll",
    "Do three laps around the park"
),
(
    "wash dishes",
    "All the dishes must be washed before 10pm",
    "Make sure to use the fancy new dish soap"
),
(
    "Buy groceries",
    "Go to the supermarket and buy groceries",
    "We need: eggs, bacon and tomatoes"
);