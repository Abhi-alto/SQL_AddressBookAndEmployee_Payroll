Create database AddressbookService
Use AddressbookService
CREATE table AddressBook(
		ID int Not Null Primary Key Identity(1,1),
		FirstName varchar(250),
		SecondName varchar(250),
		Address varchar(500),
		City varchar(100),
		State varchar(100),
		Zip float,
		PhoneNum float,
		Email varchar(300)
		)
select * from AddressBook
Insert into AddressBook([FirstName],
						[SecondName],
						[Address],
						[City],
						[State],
						[Zip],
						[PhoneNum],
						[Email])
values('Abhishek','Srivastava','34/32,Bairahna','Prayagraj','U.P',211003,8907653789,'abhisheksrivastva9719@gmail.com'),
	   ('Kaustubh','Patil','eafaeffe','Bombay','Maharashtra',455683,89076537223,'kaustubh324@gmail.com'),
	   ('Amit','Srivastava','abcsd','Prayagraj','U.P',211045,8907223789,'abc9719@gmail.com'),
	   ('Rohani','Bhatnagar','Vijaynagar','Guna','M.P',266597,9707653789,'rohani9719@gmail.com'),
	   ('Ajitesh','Sinha','Near SunBeam','Varanasi','U.P',223345,8869153789,'ajitesh89@gmail.com'),
	   ('Rakesh','Pandey','Khokan','Bhuntar','H.P',175125,89076236786,'rakesh24@gmail.com'),
	   ('Palak','Rayezaada','CivilLines','Prayagraj','U.P',211003,8907223345,'PalakRaye19@gmail.com'),
	   ('Geeta','Bhatnagar','Shastri Nagar','Jammu','J&K',366784,9702673789,'Geeta3902@gmail.com'),
	   ('Faizal','Quereshi','Kareli','Prayagraj','U.P',223345,9869153789,'Qhureshi98@gmail.com');

UPDATE AddressBook
set Address='Kydganj'
	  where FirstName='Amit'and SecondName='Srivastava' 

Select * from AddressBook
	  where City='Prayagraj'

Delete from AddressBook
		where FirstName='Kaustubh'


SELECT COUNT(City) FROM AddressBook
SELECT COUNT(State) FROM AddressBook

SELECT *FROM AddressBook
	WHERE City = 'Prayagraj'
	ORDER BY FirstName;

sp_rename 'AddressBook' , 'AddressBook1'

Select * From AddressBook1
CREATE table AddressBook2(
		ID int Not Null Primary Key Identity(1,1),
		FirstName varchar(250),
		SecondName varchar(250),
		Address varchar(500),
		City varchar(100),
		State varchar(100),
		Zip float,
		PhoneNum float,
		Email varchar(300)
		)
select * from AddressBook2
Insert into AddressBook2(
						[FirstName],
						[SecondName],
						[Address],
						[City],
						[State],
						[Zip],
						[PhoneNum],
						[Email])
values('Jitesh','Sinha','Near MaryLucas School','Varanasi','U.P',223354,8869169789,'ajitesh89@gmail.com'),
	   ('Rohan','Pandey','Rajendra Nagar','manali','H.P',175129,90876236786,'rohan4@gmail.com'),
	   ('Palavi','Rayezaada','Civil Lines','Prayagraj','U.P',211012,6307223345,'PalaviRaye19@gmail.com'),
	   ('Geetanjali','Bhatnagar','Gandhi Nagar','Jammu','J&K',366784,8702673789,'Geetaanjali02@gmail.com');

Select * from INFORMATION_SCHEMA.TABLES

Alter table AddressBook1
Add Type varchar (100)

Alter table AddressBook2
Add Type varchar (100)

Update AddressBook1
set Type='Friend'
Update AddressBook1
set Type='Family'
	where FirstName='Abhishek' or FirstName='Amit' or FirstName='Palak' or FirstName='Geeta'

Update AddressBook2
set Type='Friend'

Update AddressBook2
set Type='Family'
	where FirstName='Jitesh' or FirstName='Palavi' 


SELECT COUNT(Type) FROM AddressBook1
		where Type='Family'

Select * from INFORMATION_SCHEMA.TABLES
