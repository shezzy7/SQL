-- Select is used to display data from tablle
-- if we want to display data of specific columns of tables the
-- syntax to display specific data:-
-- 			SELECT colName FROM tableName;
-- if we want to get data of all table
-- syntax to display all data:-
-- 			SELECT * FROM tableName;
-- if there are many users with different ages and some of them are with same ages and we want to display only unique ages then then we use DISTINCT with name of variable
--code
CREATE TABLE post(id int,content varchar(50),userid int);
INSERT INTO post VALUES(101,"Hello World",3),(102,"Bye Bye",2),(103,"Hello Delta",1),(102,"Hello Alpha",0);
--get whole table data
SELECT * FROM post;
--get data of specific columns of tabel
SELECT id,content FROM post;
--select distinct(show once if repeated) data of a specific column
SELECT DISTINCT id FROM post;