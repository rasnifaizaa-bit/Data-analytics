use rasni;
CREATE TABLE Employee2 ( Employee_id int AUTO_INCREMENT PRIMARY KEY, First_name VARCHAR(50), Last_name VARCHAR(50), Salary int, Joining_date Date, Departement  VARCHAR(50)  );

CREATE TABLE reward ( Employee_ref_id int, date_reward Date, amount int, FOREIGN KEY (Employee_ref_id) REFERENCES Employee2(Employee_id));


 INSERT INTO Employee2 (Employee_id, First_name, Last_name, Salary, Joining_date, Departement)
 VALUES (1, 'Bob', 'Kinto', 1000000, "2019-01-20", "Finance"); 
 INSERT INTO Employee2 (Employee_id, First_name, Last_name, Salary, Joining_date, Departement)
 VALUES (2, 'Jerry', 'Kansxo', 6000000, "2019-01-15", "IT");
 INSERT INTO Employee2 (Employee_id, First_name, Last_name, Salary, Joining_date, Departement) 
 VALUES (3, 'Philip', 'Jose', 8900000, "2019-02-05", "Banking");
 INSERT INTO Employee2 (Employee_id, First_name, Last_name, Salary, Joining_date, Departement) 
 VALUES (4, 'John', 'Abraham', 2000000, "2019-02-25", "Insurance");
 INSERT INTO Employee2 (Employee_id, First_name, Last_name, Salary, Joining_date, Departement)
 VALUES (5, 'Michael', 'Mathew', 2200000, "2019-02-28", "Finance"); 
 INSERT INTO Employee2 (Employee_id, First_name, Last_name, Salary, Joining_date, Departement) 
 VALUES (6, 'Alex', 'chreketo', 4000000, "2019-05-10", "IT"); 
 INSERT INTO Employee2 (Employee_id, First_name, Last_name, Salary, Joining_date, Departement)
 VALUES (7, 'Yohan', 'Soso', 1230000, "2019-06-20", "Banking");
 
 
 INSERT INTO reward (Employee_ref_id, date_reward, amount)
 VALUES (1, '2019-05-11', '1000');
 INSERT INTO reward (Employee_ref_id, date_reward, amount)
 VALUES (2, '2019-02-15', '5000'); 
 INSERT INTO reward (Employee_ref_id, date_reward, amount) 
 VALUES (3, '2019-04-22', '2000');
 INSERT INTO reward (Employee_ref_id, date_reward, amount)
 VALUES (1, '2019-06-20', '8000');
 
 select * from employee2;
 
 select * from reward;
 
 #Q1
 select first_name,length(first_name) as name_length from employee2;
 
 #Q2
 select first_name,replace(first_name,"o","#") as new_name from employee2;
 
 #Q3
 select concat(first_name,'_',last_name) as full_name from employee2;
 
 #Q4
 select joining_date,year(joining_date) as year,month(joining_date) as month,day(joining_date) as day from employee2;
 
 #Q5
 select * from employee2 order by first_name asc;
 
 #Q6
 select * from employee2 order by first_name desc;
 
 #Q7
 select * from employee2 order by first_name asc,salary desc;
 
 #Q8
 select * from employee2 where first_name="Bob";
 
 #Q9
 select * from employee2 where first_name in ("bob","alex");
 
 #Q10
 select * from employee2 where first_name not in ("bob","alex");
 
 #Q11
 select * from employee2 where first_name like "B%";
 
 #Q12
 select * from employee2 where first_name like "%o%";
 
 #Q13
 select * from employee2 where first_name like "%n";

 #Q14
select * from employee2 where first_name like "___n";
 
#Q15
select * from employee2 where first_name like "j___";
  
#Q16
select * from employee2 where salary>3000000;

#Q17
select * from employee2 where salary<3000000;

#Q18
select * from employee2 where salary between 2000000 and 5000000;

#Q19
select * from employee2 where first_name in ("bob","alex");

#Q20
select * from employee2 where year(joining_date)=2019;

#Q21
select * from employee2 where month (joining_date)=1;

#Q22
select * from employee2 where joining_date<'2019-03-01';

#Q23
select * from employee2 where joining_date>'2019-03-31';

#Q27
select now();

#Q28
select first_name from employee2 where first_name like '%\%%';

#Q29
select replace(last_name,'_','')as last_name from employee2;

#Q30
select departement, sum(salary)as total_salary from employee2 group by departement; 

