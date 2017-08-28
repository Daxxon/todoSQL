DELETE FROM todos WHERE priority > 0;
INSERT INTO todos (title, details, priority)
  VALUES
    ('feed the trash', 'put the compost in the garbage disposal', 5),
    ('take out the cats', 'Lather, Rinse, Repeat', 6),
    ('go to the store', 'they said, it will be fine, they said', 2),
    ('finish this assignment', 'is this too meta?', 9000),
    ('flush the landry', 'put the lye in the choconauts', 1);

SELECT FROM todos WHERE completed_at IS NULL;

SELECT FROM todos WHERE priority > 1;

UPDATE todos SET completed_at = NOW() WHERE id = 4;

DELETE FROM todos WHERE completed_at IS NOT NULL;
