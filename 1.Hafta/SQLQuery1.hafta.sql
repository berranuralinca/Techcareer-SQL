CREATE DATABASE EMPLOYEES;

CREATE TABLE USERS (
  id INT IDENTITY(1,1) PRIMARY KEY,  
  user_name NVARCHAR(50),  
  user_lastname NVARCHAR(50),  
  age INT
);

INSERT INTO USERS (user_name,user_lastname,age)
VALUES ('ahmet','yilmaz',35);

INSERT INTO USERS (user_name,user_lastname,age)
VALUES ('veli','kinik',32);

INSERT INTO USERS (user_name,user_lastname,age)
VALUES ('ayse','keskin',21);

SELECT * FROM USERS;

UPDATE USERS
SET age = 33
WHERE user_name = 'veli';

SELECT user_name,age FROM USERS;

DELETE FROM USERS
WHERE id = 3;

SELECT * FROM USERS;