Connect to MySQL  

>mysql -h your_mysql_url -u your_user -p  

Show databases  

> mysql show databases;  

Use my_db database  

> mysql use my_db;  


Describes my_table table  

>describe my_table; 


Selects all content from my_table  

> mysql select * from my_table;  


Deletes all content from my_table  

> delete from my_table;  


Dump Database (Backup)

>mysqldump --opt --user=username --password=password --host=yourMySQLHostname dbname > nameofyourbackup.sql  