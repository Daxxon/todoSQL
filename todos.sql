DROP TABLE todos;
CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details VARCHAR(511) NULL,
  priority INTEGER NOT NULL DEFAULT '1',
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  completed_at TIMESTAMP
);



-- Write INSERT statements to insert 20 todos into the todos table, with a combination of priorities, created times, and completed times, with not all having a completed time.
-- Write a SELECT statement to find all incomplete todos with priority 3.
-- Write a SELECT statement to find the number of incomplete todos by priority.
-- Write a SELECT statement to find the number of todos by priority created in the last 30 days.
-- Write a SELECT statement to find the next todo you should work on. This is the todo with the highest priority that was created first.
