DELETE FROM todos WHERE priority > 0;
INSERT INTO todos (title, details, priority, created_at, completed_at)
  VALUES
    ('feed the trash', 'put the compost in the garbage disposal', 5, '2017-08-29 10:44:49.565052', '2017-08-29 10:44:49.565052'),
    ('take out the cats', 'Lather, Rinse, Repeat', 3, '2017-08-29 10:44:49.565052', NULL),
    ('go to the store', 'they said, it will be fine, they said', 2, '2017-08-29 10:44:49.565052', '2017-08-29 10:44:49.565052'),
    ('finish this assignment', 'is this too meta?', 9000, '2017-08-29 10:44:49.565052', NULL),
    ('flush the landry', 'put the lye in the choconauts', 1, '2017-08-29 10:44:49.565052', '2017-08-29 10:44:49.565052'),
    ('kill the wabbit', 'put bugs bunny on the mantle', 4, '2017-08-29 10:44:49.565052', NULL),
    ('test the eggs', 'you know, do stuff to make sure they"re whatever', 3, '2017-08-29 10:44:49.565052', '2017-08-29 10:44:49.565052'),
    ('do stuff', 'also do things', 1, '2017-08-28 10:44:49.565052', '2017-08-29 10:44:49.565052'),
    ('write 11 more todos', '11 after this one; 12 counting this one', 5, '2013-07-21 10:44:49.565052', NULL),
    ('write 10 more todos', '11 after this one; 12 counting this one', 2, '2015-9-14 10:44:49.565052', '2017-08-29 10:44:49.565052'),
    ('write 9 more todos', '11 after this one; 12 counting this one', 3, '2014-10-7 10:44:49.565052', NULL),
    ('write 8 more todos', '11 after this one; 12 counting this one', 3, '2015-11-21 10:44:49.565052', '2017-08-29 10:44:49.565052'),
    ('write 7 more todos', '11 after this one; 12 counting this one', 4, '2014-2-2 10:44:49.565052', NULL),
    ('write 6 more todos', '11 after this one; 12 counting this one', 4, '2016-12-13 10:44:49.565052', '2017-08-29 10:44:49.565052'),
    ('write 5 more todos', '11 after this one; 12 counting this one', 6, '2014-04-24 10:44:49.565052', NULL),
    ('write 4 more todos', '11 after this one; 12 counting this one', 2, '2015-1-19 10:44:49.565052', '2017-08-29 10:44:49.565052'),
    ('write 3 more todos', '11 after this one; 12 counting this one', 1, '2015-08-9 10:44:49.565052', NULL),
    ('write 2 more todos', '11 after this one; 12 counting this one', 3, '2015-06-21 10:44:49.565052', '2017-08-29 10:44:49.565052'),
    ('write 1 more todos', '11 after this one; 12 counting this one', 3, '2017-08-19 10:44:49.565052', NULL),
    ('write NO more todos', 'NONE after this one; NONE counting this one', 6, '2016-08-28 10:44:49.565052', '2017-08-29 10:44:49.565052');

SELECT *
  FROM todos
  WHERE completed_at IS NULL AND priority = 3;

SELECT priority, COUNT(priority)
  FROM todos
  WHERE completed_at IS NULL
  GROUP BY priority
  ORDER BY priority ASC;

SELECT priority, COUNT(priority)
  FROM todos
  WHERE age(created_at) < '0 years 30 days'
  GROUP BY priority
  ORDER BY priority ASC;

SELECT title, MIN(created_at), priority
  FROM todos
  GROUP BY title, priority
  ORDER BY MIN(priority), MAX(created_at)
  ASC LIMIT 1;
