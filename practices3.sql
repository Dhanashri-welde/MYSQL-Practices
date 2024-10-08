CREATE TABLE Employee (id mediumint(8) unsigned NOT NULL auto_increment,
  EmpId mediumint,
  EmpName varchar(255) default NULL,
  EmpBOD varchar(255),
  EmpJoiningDate varchar(255),
  PrevExperience mediumint default NULL,
  Salary mediumint default NULL,
  Address varchar(255) default NULL,
  PRIMARY KEY (id)
) AUTO_INCREMENT=1;
select *from Employee;

INSERT INTO Employee (EmpId, EmpName, EmpBOD, EmpJoiningDate, PrevExperience, Salary, Address) VALUES
(1001, 'Alice Johnson', '1985-07-12', '2010-03-15', 5, 50000, '123 Maple Street, Springfield'),
(1002, 'Bob Smith', '1979-11-30', '2008-07-22', 8, 65000, '456 Oak Avenue, Lincoln'),
(1003, 'Charlie Davis', '1990-01-10', '2012-04-18', 2, 48000, '789 Pine Road, Centerville'),
(1004, 'Diana Evans', '1983-05-21', '2009-11-12', 6, 54000, '101 Walnut Lane, Greenwood'),
(1005, 'Ethan Harris', '1988-09-14', '2011-08-09', 3, 52000, '202 Birch Boulevard, Brookville'),
(1006, 'Fiona Johnson', '1984-12-25', '2013-06-17', 4, 57000, '303 Cedar Circle, Lakeside'),
(1007, 'George King', '1977-08-05', '2006-01-24', 10, 72000, '404 Elm Drive, Riverside'),
(1008, 'Hannah Lewis', '1992-03-08', '2014-02-10', 1, 46000, '505 Willow Way, Plainsboro'),
(1009, 'Ian Miller', '1981-06-19', '2007-05-16', 7, 63000, '606 Ash Street, Forestville'),
(1010, 'Jackie Nelson', '1987-10-23', '2011-11-03', 4, 55000, '707 Fir Avenue, Hilltown'),
(1011, 'Kevin O’Brien', '1980-04-27', '2008-02-14', 9, 68000, '808 Poplar Place, Midtown'),
(1012, 'Liam Parker', '1991-02-12', '2013-09-05', 2, 49000, '909 Spruce Street, Valleytown'),
(1013, 'Mia Quinn', '1986-07-22', '2010-06-21', 5, 53000, '111 Maple Street, Springfield'),
(1014, 'Nathan Rogers', '1989-11-01', '2012-12-02', 3, 51000, '112 Oak Avenue, Lincoln'),
(1015, 'Olivia Scott', '1978-03-14', '2006-08-23', 10, 75000, '113 Pine Road, Centerville'),
(1016, 'Paul Turner', '1990-05-18', '2011-04-29', 4, 56000, '114 Walnut Lane, Greenwood'),
(1017, 'Quinn Upton', '1985-09-26', '2009-10-17', 6, 59000, '115 Birch Boulevard, Brookville'),
(1018, 'Rachel Vance', '1983-12-19', '2008-03-25', 7, 61000, '116 Cedar Circle, Lakeside'),
(1019, 'Sam White', '1992-02-20', '2014-11-12', 1, 47000, '117 Elm Drive, Riverside'),
(1020, 'Tina Xu', '1984-05-30', '2010-07-16', 5, 54000, '118 Willow Way, Plainsboro'),
(1021, 'Uma Yang', '1987-08-29', '2011-09-20', 4, 56000, '119 Ash Street, Forestville'),
(1022, 'Victor Zhang', '1981-11-11', '2007-12-11', 7, 62000, '120 Fir Avenue, Hilltown'),
(1023, 'Wendy Allen', '1989-01-15', '2012-01-05', 3, 50000, '121 Poplar Place, Midtown'),
(1024, 'Xander Bell', '1986-03-25', '2010-02-18', 5, 53000, '122 Spruce Street, Valleytown'),
(1025, 'Yara Collins', '1991-07-07', '2013-10-22', 2, 49000, '123 Maple Street, Springfield'),
(1026, 'Zachary Diaz', '1988-11-03', '2011-05-09', 4, 55000, '124 Oak Avenue, Lincoln'),
(1027, 'Amanda Edwards', '1979-06-17', '2006-04-15', 10, 70000, '125 Pine Road, Centerville'),
(1028, 'Brian Foster', '1980-09-21', '2008-06-19', 9, 67000, '126 Walnut Lane, Greenwood'),
(1029, 'Catherine Green', '1990-11-08', '2011-01-25', 3, 51000, '127 Birch Boulevard, Brookville'),
(1030, 'David Harris', '1987-02-14', '2009-09-27', 6, 58000, '128 Cedar Circle, Lakeside'),
(1031, 'Emma Jackson', '1984-04-05', '2010-11-30', 5, 55000, '129 Elm Drive, Riverside'),
(1032, 'Frank Knight', '1991-08-03', '2013-03-18', 2, 48000, '130 Willow Way, Plainsboro'),
(1033, 'Grace Lee', '1982-11-20', '2007-10-05', 7, 62000, '131 Ash Street, Forestville'),
(1034, 'Henry Martin', '1985-01-30', '2009-12-22', 5, 54000, '132 Fir Avenue, Hilltown'),
(1035, 'Ivy Nelson', '1988-06-13', '2011-08-11', 4, 56000, '133 Poplar Place, Midtown'),
(1036, 'Jack Olson', '1977-03-27', '2006-11-19', 10, 73000, '134 Spruce Street, Valleytown'),
(1037, 'Karen Perez', '1990-10-10', '2012-04-02', 3, 51000, '135 Maple Street, Springfield'),
(1038, 'Leo Quinn', '1983-07-18', '2008-01-29', 7, 61000, '136 Oak Avenue, Lincoln'),
(1039, 'Megan Rivera', '1989-05-24', '2011-03-30', 4, 55000, '137 Pine Road, Centerville'),
(1040, 'Nathan Scott', '1981-09-12', '2007-08-15', 8, 64000, '138 Walnut Lane, Greenwood'),
(1041, 'Olivia Taylor', '1992-12-14', '2014-05-27', 1, 46000, '139 Birch Boulevard, Brookville'),
(1042, 'Patrick Underwood', '1984-03-16', '2009-07-09', 6, 59000, '140 Cedar Circle, Lakeside'),
(1043, 'Quinn Vang', '1979-11-19', '2006-02-26', 9, 67000, '141 Elm Drive, Riverside'),
(1044, 'Rachel Wright', '1991-02-25', '2013-07-18', 2, 49000, '142 Willow Way, Plainsboro'),
(1045, 'Sam Young', '1986-10-06', '2010-06-14', 5, 52000, '143 Ash Street, Forestville'),
(1046, 'Tina Zane', '1980-08-30', '2008-09-22', 8, 65000, '144 Fir Avenue, Hilltown'),
(1047, 'Uma Adams', '1988-01-17', '2011-02-07', 4, 56000, '145 Poplar Place, Midtown'),
(1048, 'Victor Brooks', '1983-06-23', '2008-05-04', 7, 61000, '146 Spruce Street, Valleytown'),
(1049, 'Wendy Carter', '1985-09-04', '2009-08-11', 6, 58000, '147 Maple Street, Springfield'),
(1050, 'Xander Davis', '1978-12-26', '2006-07-18', 10, 73000, '148 Oak Avenue, Lincoln'),
(1051, 'Yara Evans', '1991-03-19', '2013-11-07', 2, 49000, '149 Pine Road, Centerville'),
(1052, 'Zachary Foster', '1987-11-02', '2010-12-06', 5, 54000, '150 Walnut Lane, Greenwood'),
(1053, 'Alice Gonzalez', '1980-05-14', '2008-01-03', 9, 68000, '151 Birch Boulevard, Brookville'),
(1054, 'Bob Howard', '1990-06-21', '2012-09-04', 3, 50000, '152 Cedar Circle, Lakeside'),
(1055, 'Charlie James', '1986-02-11', '2010-02-17', 5, 52000, '153 Elm Drive, Riverside'),
(1056, 'Diana Kim', '1988-08-12', '2011-11-14', 4, 55000, '154 Willow Way, Plainsboro'),
(1057, 'Ethan Lee', '1984-07-26', '2009-06-01', 6, 59000, '155 Ash Street, Forestville'),
(1058, 'Fiona Martin', '1979-03-09', '2006-03-14', 9, 67000, '156 Fir Avenue, Hilltown'),
(1059, 'George Nelson', '1992-09-30', '2014-02-13', 1, 47000, '157 Poplar Place, Midtown'),
(1060, 'Hannah Owens', '1985-12-21', '2010-05-19', 5, 54000, '158 Spruce Street, Valleytown'),
(1061, 'Ian Perez', '1981-10-16', '2007-11-20', 7, 62000, '159 Maple Street, Springfield'),
(1062, 'Jackie Quinn', '1989-02-22', '2012-04-30', 3, 50000, '160 Oak Avenue, Lincoln'),
(1063, 'Kevin Roberts', '1983-06-29', '2008-12-05', 7, 61000, '161 Pine Road, Centerville'),
(1064, 'Liam Scott', '1988-05-05', '2011-07-25', 4, 55000, '162 Walnut Lane, Greenwood'),
(1065, 'Mia Thompson', '1990-10-21', '2013-09-12', 2, 49000, '163 Birch Boulevard, Brookville'),
(1066, 'Nathaniel Underwood', '1977-04-06', '2006-09-07', 10, 72000, '164 Cedar Circle, Lakeside'),
(1067, 'Olivia Vargas', '1991-08-28', '2014-12-18', 1, 46000, '165 Elm Drive, Riverside'),
(1068, 'Paul White', '1984-11-09', '2009-11-21', 6, 58000, '166 Willow Way, Plainsboro'),
(1069, 'Quinn Xiong', '1979-07-18', '2006-05-11', 9, 67000, '167 Ash Street, Forestville'),
(1070, 'Rachel Young', '1992-05-11', '2013-03-07', 2, 47000, '168 Fir Avenue, Hilltown'),
(1071, 'Sam Zane', '1987-06-22', '2010-01-04', 5, 52000, '169 Poplar Place, Midtown'),
(1072, 'Tina Adams', '1980-01-24', '2008-08-26', 8, 65000, '170 Spruce Street, Valleytown'),
(1073, 'Uma Brown', '1986-09-15', '2011-12-12', 4, 56000, '171 Maple Street, Springfield'),
(1074, 'Victor Chen', '1983-02-10', '2008-11-09', 7, 61000, '172 Oak Avenue, Lincoln'),
(1075, 'Wendy Diaz', '1989-04-04', '2011-06-28', 4, 55000, '173 Pine Road, Centerville'),
(1076, 'Xander Edwards', '1981-07-27', '2007-10-14', 7, 63000, '174 Walnut Lane, Greenwood'),
(1077, 'Yara Fisher', '1992-03-17', '2014-08-25', 1, 46000, '175 Birch Boulevard, Brookville'),
(1078, 'Zachary Garcia', '1988-12-15', '2011-04-08', 4, 54000, '176 Cedar Circle, Lakeside'),
(1079, 'Alice Harris', '1979-05-16', '2006-07-13', 9, 68000, '177 Elm Drive, Riverside'),
(1080, 'Bob Johnson', '1990-08-31', '2012-11-15', 3, 51000, '178 Willow Way, Plainsboro'),
(1081, 'Charlie King', '1986-06-20', '2010-03-22', 5, 53000, '179 Ash Street, Forestville'),
(1082, 'Diana Lee', '1984-10-29', '2009-05-10', 6, 58000, '180 Fir Avenue, Hilltown'),
(1083, 'Ethan Martin', '1980-12-11', '2008-10-30', 8, 65000, '181 Poplar Place, Midtown'),
(1084, 'Fiona Nelson', '1983-04-02', '2008-02-27', 7, 62000, '182 Spruce Street, Valleytown'),
(1085, 'George Owens', '1989-09-23', '2011-09-06', 4, 55000, '183 Maple Street, Springfield'),
(1086, 'Hannah Parker', '1991-07-19', '2013-05-16', 2, 48000, '184 Oak Avenue, Lincoln'),
(1087, 'Ian Quinn', '1987-11-28', '2010-08-30', 5, 54000, '185 Pine Road, Centerville'),
(1088, 'Jackie Roberts', '1978-03-21', '2006-12-08', 10, 73000, '186 Walnut Lane, Greenwood'),
(1089, 'Kevin Smith', '1985-01-02', '2009-10-23', 5, 56000, '187 Birch Boulevard, Brookville'),
(1090, 'Liam Thompson', '1992-11-04', '2014-07-21', 1, 46000, '188 Cedar Circle, Lakeside'),
(1091, 'Mia Underwood', '1981-06-30', '2007-09-25', 7, 61000, '189 Elm Drive, Riverside'),
(1092, 'Nathan Vargas', '1988-02-15', '2011-01-18', 4, 52000, '190 Willow Way, Plainsboro'),
(1093, 'Olivia White', '1985-08-24', '2010-11-17', 5, 54000, '191 Ash Street, Forestville'),
(1094, 'Paul Xu', '1983-10-03', '2008-06-06', 7, 63000, '192 Fir Avenue, Hilltown'),
(1095, 'Quinn Young', '1979-12-13', '2006-11-29', 9, 68000, '193 Poplar Place, Midtown'),
(1096, 'Rachel Zane', '1990-05-27', '2012-12-27', 3, 50000, '194 Spruce Street, Valleytown'),
(1097, 'Sam Adams', '1986-07-09', '2010-04-26', 5, 52000, '195 Maple Street, Springfield'),
(1098, 'Tina Brown', '1980-11-15', '2008-08-03', 8, 65000, '196 Oak Avenue, Lincoln'),
(1099, 'Uma Chen', '1988-03-07', '2011-05-02', 4, 55000, '197 Pine Road, Centerville'),
(1100, 'Victor Davis', '1984-09-28', '2009-12-24', 6, 59000, '198 Walnut Lane, Greenwood');

select * from employee;

  # Q1 create a new column called email_id to this existing employee table
Alter table employee 
add Email varchar(30);

insert into employee (Email) values ('alice.jones@example.com'),
('bob.smith@example.com'),
('carol.davis@example.com'),
(null),
('eve.wilson@example.com'),
('frank.moore@example.com'),
('grace.taylor@example.com'),
(null),
('iris.johnson@example.com'),
('jackie.brown@example.com'),
('karen.james@example.com'),
(null),
('mona.harris@example.com'),
('nina.clark@example.com'),
('oliver.walker@example.com'),
(null),
('quincy.bell@example.com'),
('rachel.garcia@example.com'),
('samuel.lee@example.com'),
(null),
('ursula.allen@example.com'),
('victor.young@example.com'),
('wendy.king@example.com'),
('xander.scott@example.com'),
('yara.adams@example.com'),
('zane.baker@example.com'),
('aaron.carter@example.com'),
('beth.baker@example.com'),
(null),
('daniel.collins@example.com'),
('emily.cooper@example.com'),
('fiona.patel@example.com'),
(null),
('hannah.cox@example.com'),
('ian.graham@example.com'),
('julia.bennett@example.com'),
(null),
('lisa.morris@example.com'),
('matthew.price@example.com'),
('nancy.morgan@example.com'),
(null),
('peter.long@example.com'),
('quinn.ramirez@example.com'),
('riley.murphy@example.com'),
(null),
('tyler.bell@example.com'),
('uma.wood@example.com'),
('vicky.hughes@example.com'),
(null),
('xena.foster@example.com'),
('yvette.martin@example.com'),
('zachary.cox@example.com'),
(null),
('brianna.brown@example.com'),
('chris.ross@example.com'),
('diana.martin@example.com'),
('elijah.reed@example.com'),
('felicity.hughes@example.com'),
('george.lane@example.com'),
(null),
('ian.foster@example.com'),
('jason.wright@example.com'),
('kaitlyn.smith@example.com'),
('leo.morris@example.com'),
('mila.bennett@example.com'),
('noah.kelly@example.com'),
('olivia.adams@example.com'),
('paul.nelson@example.com'),
(null),
('ryan.ross@example.com'),
('sara.jenkins@example.com'),
('tyler.young@example.com'),
('utah.jones@example.com'),
('vera.cox@example.com'),
('willow.davis@example.com'),
(null),
('yasmine.harris@example.com'),
('zane.clark@example.com'),
('amanda.baker@example.com'),
('benjamin.lee@example.com'),
('charlotte.johnson@example.com'),
('daniel.miller@example.com'),
('ella.moore@example.com'),
('finn.walker@example.com'),
('grace.morgan@example.com'),
('harrison.adams@example.com'),
('isabelle.cooper@example.com'),
('jack.rodriquez@example.com'),
(null),
('luca.harris@example.com'),
('madison.foster@example.com'),
('nathan.cox@example.com'),
('olivia.turner@example.com'),
('peter.lee@example.com'),
('quinn.smith@example.com'),
('rachel.jones@example.com'),
('simon.davis@example.com'),
(null),
('ursula.brown@example.com'),
('vincent.hall@example.com'),
('winston.baker@example.com'),
('xena.lee@example.com'),
(null),
('zach.ross@example.com');
select * from employee;

  # Q3 write sql query to extract null value from email column
select * from employee where Email Is null;

  # Q4 add primary key for the column to your table
  describe employee;
alter table employee 
add primary key (id);

  # Q5 list of 10 employee of highest salary
  Select * from employee;
  select Empid,empname,salary from employee order by salary desc limit 10; 
  
    # Q6 all those employee whose experience is greater than 2 yrs
select * from employee;
select Empid,empname from employee where prevExperience >2;

  # Q7 list all those people whose has join in the year 2009
select * from employee where empjoiningDate = 2009;

select * from Employee;
