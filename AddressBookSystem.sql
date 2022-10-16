-- UC1 create database;
create database addressBook_service;

-- UC2 Create contact table;
use addressBook_service;
create table contact 
(contactId int not null auto_increment primary key,
firstName varchar(250),
lastName varchar(250),
address varchar(250),
city varchar(250),
state varchar(250),
zip int,
phoneNumber int,
email varchar(250)); 

-- UC3 insert new Contacts to AddressBook;
-- Alter the table, modify the column phoneNumber;
ALTER TABLE contact MODIFY phoneNumber BIGINT ;
insert into contact 
(firstName,lastName,address,city,state,zip,phoneNumber,email) values
("Ramesh", "Malli", "Tarapur", "Vijayapur", "Karnataka", 
586202, 8431510221, "rameshmalli857@gmainl.com");
insert into  contact values
(2,"SharanaBasu","Malli","Tarapur","Vijayapur","Karnataka",586202,9685741236,"sbmalli67@gmail.com"),
(3,"Mahendra","Kanaganalli","Anabi","Yadagir","Karnataka",585223,8956471253,"mahi@gmail.com"),
(4,"Jagadish","hagatagi","Anabi","Yadagir","Karnataka",586202,7896541236,"jagu@gmail.com"),
(5,"Bhima","Jangoli","Tavarkeda","Vijayapur","Karnataka",582602,8796541236,"bm@gmail.com"),
(6,"Sada","Chigari","Anabi","Yadagir","Karnataka",585223,9565847596,"sc@gmail.com");
select * from contact;

-- UC 4 eidt contact;
-- Editing existing contact using contactid;
update contact set firstName="raju",
lastName="Power",
Address="Shahapur",
city="Yadgir",
state="Karnataka",
zip=586202,
phoneNumber=9874563217,
email="raj@gmail.com" where contactId=5;

-- UC 5 Delete cotact;
-- Deleting contact using contactid;
delete from contact where contactId=3;

-- UC 6 Search by Contact;
-- Searching Contacts by city and state;
select * from contact where city="Yadagir" or state="Karnataka";

-- UC 7 Size(count) of city and state;
-- Counting number of citys in addressbook;
select count(city or state) from contact;

-- UC 8 Alphabetically Sorting.....;
-- Sorted entry alphabetically by contact fisrtName;
select * from contact ORDER BY firstName;

-- UC 9 Adding type of contacts;
alter table contact add type varchar(250) after lastName;
update contact set type="Family" where contactId=1;
update contact set type="Friends" where contactId=2;
update contact set type="Profession" where contactId=5;

-- UC 10;
-- count by type;
select count(type) from contact;

-- UC 11;
-- Add contact to both Friend and Family;
insert into contact (contactId,firstName,
lastName,type,address,city,state,zip,phoneNumber,email)values
(7,"Nagesh","Rampur","Friend","Anabi","Yadagir",
"Karnataka",582636,949632154,"Nag@gmail.com"),
(8,"Vishwa","Sajjan","Family","Anabi","Yadagir",
"Karnataka",586925,9877898978,"v@gmail.com");