# Lab3 - Dropbox


/MYSQL database
spring.jpa.hibernate.ddl-auto=create
spring.datasource.url=jdbc:mysql://localhost:3306/sys
spring.datasource.username=root
spring.datasource.password=kayak
server.port=3456
spring.http.multipart.max-file-size=4096KB
spring.http.multipart.max-request-size=4096KB
//
table -- import.sql
insert into USER (password,firstname,lastname,username) values ('a','a','a','a');
----
### MySQL
Execute the following queries in the MySQL database:
1. create table user(firstname varchar(25), lastname varchar(25), username varchar(25), password varchar(25));

2. create table sharedFolders(id varchar(25), folderName varchar(50), email varchar(50), isStarred boolean, isDeleted boolean);

3. Change the password of the database in the mysql file of nodelogin routes to your password so that it will successfully connect to the database at runtime.


### Spring Boot
1. Open the project 'back-end' in the IDE
2. Build the project
3. Run the project


### Front-end
Go to 'front-end' folder in command prompt and execute following command:
1. npm install
2. npm start
