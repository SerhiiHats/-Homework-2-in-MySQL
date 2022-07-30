CREATE DATABASE Sklad;

USE Sklad;

CREATE TABLE Employees (
id_emp INT AUTO_INCREMENT NOT NULL,
name_emp VARCHAR(50) NOT NULL,
gender_emp VARCHAR(5) NOT NULL,
birthday_emp DATE NOT NULL,
passport_emp CHAR(10) NOT NULL UNIQUE,
rnokpp_emp CHAR(10) NOT NULL UNIQUE,
address_emp VARCHAR (50) NOT NULL,
phone_emp CHAR(13) NOT NULL UNIQUE,
email_emp VARCHAR(50) NOT NULL UNIQUE,
job_title_emp VARCHAR(30) NOT NULL DEFAULT 'trenee',
married_emp VARCHAR(12),
child_emp VARCHAR(12),
iban_emp CHAR(29) NOT NULL DEFAULT 'Unknown',
salary_emp DOUBLE NOT NULL DEFAULT '0',
date_of_job_emp DATE NOT NULL,
PRIMARY KEY (id_emp)
);

drop TABLE Employees;

CREATE TABLE Clients (
id_cl INT AUTO_INCREMENT NOT NULL,
name_cl VARCHAR(50) NOT NULL,
address_cl VARCHAR (50) NOT NULL DEFAULT 'Unknown',
phone_cl CHAR(12) NOT NULL DEFAULT 'Unknown',
email_cl VARCHAR(50) NOT NULL DEFAULT 'Unknown',
iban_cl VARCHAR(26) NOT NULL DEFAULT 'Unknown',
age_cl INT NOT NULL DEFAULT '0',
PRIMARY KEY (id_cl)
);

CREATE TABLE distributor (
id_dist INT AUTO_INCREMENT NOT NULL,
name_dist VARCHAR(50) NOT NULL,
edrpou_dist CHAR(10) NOT NULL DEFAULT 'Unknown',
address_dist VARCHAR (50) NOT NULL DEFAULT 'Unknown',
phone_dist CHAR(12) NOT NULL DEFAULT 'Unknown',
email_dist VARCHAR(50) NOT NULL DEFAULT 'Unknown',
iban_dist VARCHAR(26) NOT NULL DEFAULT 'Unknown',
group_tovar_dist VARCHAR(26) NOT NULL,
agent_name_dist VARCHAR(50) NOT NULL,
PRIMARY KEY (id_dist)
);

INSERT INTO Sklad.Employees (name_emp, gender_emp, birthday_emp, passport_emp, rnokpp_emp, address_emp, phone_emp, email_emp, job_title_emp, married_emp, child_emp, iban_emp, salary_emp, date_of_job_emp) 
VALUES 
('Буюклі Людмила Миколаївна', 'women', '1997-11-27', 'KM781187', '3245425874', 'Odessa, Tinistaya str, 25', '+380678745535', 'luda1997@gmail.com', 'sales', 'no married', 'no children', 'UA253843240002541125425146231', 10597.5, NOW()),
('Даниленко Денис Іванович', 'male', '1988-07-15', 'KE158477', '2924577711', 'Odessa, Bolsha Arnautskaya str, 17', '+380634526514', 'danilrer_denis@gmail.com', 'accountant', 'married', '1 child', 'UA17384324000257325425142517', 12777.0, NOW()),
('Чекан Оксана Володимирівеа', 'women', '1980-02-10', 'KM754365', '2758425654', 'Odessa, Srednefantanskaya str, 112', '+380677542536', 'zipochka_deth@ukr.net', 'lawyer', 'married', '2 child', 'UA343843240000000117772514642', 12595.0, NOW()),
('Антоненко Іван Анатолійович', 'male', '1995-03-14', 'МК157785', '3155421511', 'Odessa, Tiraspolskaya str, 15/74', '+380979654165', 'anton_firer@gmail.com', 'sales', 'married', '1 child', 'UA253843240002654321425175211', 14101.0, NOW()),
('Балева Наталя Олегывна', 'women', '1990-06-10', 'KM451365', '3154852741', 'Odessa, Ekaterininskaya str, 84', '+380677859565', 'natali_sales1990@gmail.com', 'director', 'married', '1 child', 'UA25384324000251225425177777', 17500.0, NOW());
