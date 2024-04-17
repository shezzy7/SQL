-- Constraints:- These are rules for data in table.These are written after the type of variable when initialising a variable.
-- Synatx->	varName dataType contraint
-- Types->These are many constraints which can be used in SQL but mostly used are following:
-- 	1-NOT NULL:- It is used when we want that any declared atribute/column should never be empty.It must contain some value like userName ont instagram etc.
-- 			Syntax-> varName dataType NOT NULL 
-- 			eg. Let we want to create a table employee in which we create a attribute email and want that email of everyOne in the company must give a email 
 --DROP TABLE employee3;
--DROP TABLE employee4;
 --DROP TABLE employee6;



			CREATE TABLE employe1(email varchar(50) NOT NULL);
			--if  any entry for email is empty then it will show error
	-- 2-UNIQUES :- It is used when we want that the every value in this column sholud be unique/different.Like email must be different for every user. 
	-- 		Syntax-> varName dataType UNIQUE
	-- 		eg. Let We want to create a table employee in which we create a attribute email and want that email of everyEntry must be different 
			CREATE TABLE employe2(email varchar(50) UNIQUE);
			--if  any entry become equall to any previous entry then it will show error		
	-- 3-DEFAULT :- It is used when we want to set some attribute values by default.Mean if later while inputting the value of that variable infront of which default value  is not given then the value which was setted as bydeault will be assigned to it
	-- 		Syntax-> varName dataType DEFAULT value
	-- 		eg. Let we want to create a table employee in which we create a attribute name and want that if anyone does provide its name then bydefault its value should be 'XYZ' 
				CREATE TABLE employe3(name varchar(50) DEFAULT 'XYZ');
			
	-- 4-CHECK   :- It is used to set the limits of values to be stored in that particular column.If the user enter value exceeding that limit then error will be given and any data for that whole entry will not be saved
			
	-- 		Syntax-> CONSTRAINTS constraintName(optional) CHECK (columnName( which is to be checked) condition(like >= or something else) );
	-- 			Here constraint name is optional and we can give any name to it.We can also add  multiple conditions separated by word AND between them
	-- 		eg.Let suppose we want to create a table employee and we want that age of every employee in our company must be greater then 18
	-- 		now if any employe provide its data but his age is samller then 18.In this case his values will not be accepted and a error will be generated
							
			CREATE TABLE employe4(name varchar(30),age int,CONSTRAINT check_age CHECK(age>=18));
			--Always remember that constraint will be writeen at ending of varibales initlizatin
			-- now if any employe provide its data but his age is samller then 18.In this case his all values will not be accepted and a error will be generated
			-- exp with code:-
			CREATE TABLE employe5(name varchar(30),age int,ID int UNIQUE,CONSTRAINT age_check CHECK(age>=18));
 			INSERT INTO employe5 VALUES("Shahzad",20,1),("Huzaifa",20,2);
 			SELECT * FROM employe5;
			--2nd emaple with 2 conditions:-
 			CREATE TABLE employe6(name varchar(30),age int,ID int UNIQUE,CONSTRAINT age_check CHECK(age>=18 AND age<=30));
 			INSERT INTO employe6 VALUES("Shahzad",30,1),("Huzaifa",20,2),("Jawad",18,3);	
 			SELECT * FROM 	employe6;