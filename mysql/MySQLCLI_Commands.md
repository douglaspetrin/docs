>mysql -h your_mysql_url -u your_user -p  

Connects  to MySQL

> mysql show databases;  

Show databases  

> mysql use my_db;  

Use my_db database  

>describe my_table; 

Describes my_table table  

> mysql select * from my_table;  

Selects all content from my_table  

> delete from my_table;  

Deletes all content from my_table  

>mysqldump --opt --user=username --password=password --host=yourMySQLHostname dbname > nameofyourbackup.sql  

Dump Database (Backup)