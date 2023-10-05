create table tblemployee (ID int identity , Name nvarchar(30),Gender nvarchar(10),salary int, City varchar(20))

insert into tblemployee values ('tom','M',4000,'London'),('Pam','F',3000,'NewYork'),('John','M',3500,'London'),
('Sam','M',4500,'London'),('Todd','M',2800,'Sydney'),('Ben','M',7000,'NewYork'),('Sara','F',4800,'Sydney'),('Valarie','F',5500,'NewYork'),
('James','M',6500,'London'),('Russell','M',8800,'London')

select*from tblemployee

update tblemployee set Gender = 'Male' where gender ='M'

update tblemployee set Gender= 'Female' where Gender = 'F'

select city,sum(salary) as totalsalary
from tblemployee
group by City

select city,gender,sum(salary) as totalsalary
from tblemployee
group by City,gender

select city,sum(salary) as totalsalary, count(id) as totalemployess
from tblemployee
group by City,Gender


ALTER TABLE TBLEMPLOYEE ALTER COLUMN ID INT  NOT NULL


ALTER TABLE TBLEMPLOYEE ADD CONSTRAINT PK_TBLEMPLOYEE_ID PRIMARY KEY (ID)


CREATE TABLE GENDER (ID INT)

ALTER TABLE GENDER ADD CONSTRAINT FK_GENDER_ID FOREIGN KEY (ID) REFERENCES TBLEMPLOYEE (ID)


ALTER TABLE TBLEMPLOYEE ADD CONSTRAINT DF_TBLEMPLOYEE_GENDER DEFAULT ('M') FOR GENDER

select*from tblemployee


INSERT INTO tblemployee (SALARY) VALUES (7200)

ALTER TABLE TBLEMPLOYEE ADD CONSTRAINT CK_TBLEMPLOYEE_SALARY CHECK(SALARY<10000 AND SALARY>2500)



DELETE FROM tblemployee WHERE ID IN(11,13)


CITY , TOTALSALARYOF EMPLOYEE

SELECT <COLUMNS U NEED> ,(AGGREGATE FUNCTTION) 
FROM TN
GROUP BY <COLUMNS U NEED>

SELECT CITY, SUM(SALARY) AS TOTALSALARYOFEMPLOYEE, COUNT(ID) AS COUNTOFEMPLOYEE
FROM tblemployee
--WHERE City='LONDON'
GROUP BY City
HAVING City='LONDON'



SELECT*FROM tblemployee



