--For inserting values in table we use following synatx->		INSERT INTO tableName(colName1,colName2....) VALUES(value1,value2...);
--code
CREATE TABLE post(id int,content varchar(50),userid int);
--there are three ways of putting data in the table
--for adding valus only into specific columns
INSERT INTO post(id,content) VALUES(101,"Hello World"),(102,"Bye Bye"),(103,"Hello Delta"),(102,"Hello Alpha");
SELECT * FROM post;
--for adding valus into columns according to their defining order and adding values for muliple tupeles in single command separating them by a comma
INSERT INTO post VALUES(52,"Hi Shezzy",20),(60,"Shezzy jam",80);
--for adding valus into columns according to their defining order and adding values for one tupele in one command 
SELECT * FROM post;
INSERT INTO post VALUES(100,"Shezzy jam",60);
INSERT INTO post VALUES(200,"jawad",13);
SELECT * FROM post;