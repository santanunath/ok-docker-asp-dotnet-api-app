this api Application name is MyApi

this application was created with below command.

    
> $ dotnet new webapi -n MyApi

Syntax:    
> $ dotnet new template-name - n project-folder-name

[-n or --name]

(for API application,template-name is 'webapi')
--

#### Clone this repo from GitHub.com
$ git clone repo-url.git

--

To run the application use
> $ sudo docker-compose up -d
$ sudo docker ps

run Adminer

Open browser and enter
http://192.168.0.102:8080

you will see the Adminer login screen..
enter below details to login to MS SQL server..
    
Adminer login:   
> System: MS SQL  
Server: ms-sql-server    
Username: sa     
Password: ronit@1992   
  
(Note: these details should match with 
the info in the file ‘docker-compose.yml’)
--
After login to Adminer tool, we will create below items,  
Database: productdb  
Table:  Products   
   
Fields:   
Id (int)  
Name (string, varchar 50)  
Price (decimal)  
  
After u login using ‘adminer' tool,
click on ‘create database’ 
Database name: productdb
Click on ‘save’ 
Now click on ‘create table’  
Table name: Products  
Enter below details.. 
   
Column.name: Id   
Type: int   
Length:    
    
Column.name: Name    
Type: varchar    
Length: 50    
    
Column.name: Price     
Type: decimal     
Length:     

Click on ‘save’ button beside the table name. 
Now click on ‘new item’ to create a new record    
Id: 1    
Name: coca cola    
Price: 20    
Click ‘save’   
A new record is created    
--

now run the API application using Nginx rProxy.

> Open browser and enter
> http://192.168.0.102/api/products
(or)
run the API application without using Nginx rProxy.
> http://192.168.0.102:8090/api/products 
--