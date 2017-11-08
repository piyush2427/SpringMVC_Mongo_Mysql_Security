# SpringMVC_Mongo_Mysql_Security
Integration of following tech stack:
# 0)SpringMVC + RestController (Seperate and simultaneosly working for both JSON and XML Types)
# 1)Spring security
# 2)Maven
# 3)MySQL
# 4)MongoDB

# Pre-requisites to successfull setup
-- Prior knowledge of setting up mongodb in windows and playing around with it.
-- Prior knowledge of MySQL setup.
-- Understanding of SpringMVC, Spring Security, Maven and REST API's

# Instructions to run the application

-- Download mongoDB
-- Run the mongo instance
-- create a database "GDG" in mongo
-- create a collection "messages" {username,message}
-- Download Mysql
-- Run the Mysql instance
-- create table 3 tables Employee, tbl_users and tbl_user_role in the database "test"
-- Insert data in 2 tables tbl_users and tbl_user_role(insert with rolename 'ROLE_USER')
-- Download Tomcat server
-- mvn clean install from eclipse or console.
-- copy the .war file from the target folder and paste it in the tomcat's webapp directory
-- hit URL : http://localhost:8080/piyushApp
-- Login from the username, password inserted in table in the mysql "test" database
-- To access the REST API hit URL : 
 For XML response : http://localhost:8080/piyushApp/message/getMessage/ 
 For JSON response : http://localhost:8080/piyushApp/message/getMessage/.json  


