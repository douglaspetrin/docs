> SET server:name "fido"  

> GET server:name => "fido"

> SET connections 10  

> INCR connections => 11  
> INCR connections => 12  

> DEL connections  

> INCR connections => 1  

> SETNX key value (set key if not exist)  

> SET resource:lock "Redis Demo"  

> EXPIRE resource:lock 120  

> TTL resource:lock => 113  

// after 113s  

> TTL resource:lock => -2  

> TTL something  
=>  -2 (means the key does not exist anymore)  
=>  -1 (never will expire)  

> RPUSH friends "Alice" (puts at the end of list -- to the right)  
> LPUSH friends "Sam" (puts at the begining of list -- to the left)  

> LRANGE friends 0 -1 => 1) "Sam", 2) "Alice", 3) "Bob"  
> LRANGE friends 0 1 => 1) "Sam", 2) "Alice"  
> LRANGE friends 1 2 => 1) "Alice", 2) "Bob"  

> LRANGE friends 0 -1  

> LLEN friends => 3 (returns the current length of the list)  

> LPOP friends => "Sam" (removes the first element from the list)  

> RPOP friends => "Bob" (removes the last element of the list)  

> SADD douglas "name" (Adds value "name" to the set "douglas")  
> SADD douglas "website"  
> SADD douglas "city"  

> SMEMBERS douglas  
1) "website"  
2) "city"  
3) "name"  

> SREM douglas city  
1) "website"  
2) "name"  

> SISMEMBER key member  
> SISMEMBER douglas website => 1 (if element is a member of the set)  
> SISMEMBER douglas city => 0 (if the element is not a member of the set or if the key does not exist)  

> SUNION key1 key2 ... keyN (union result from the keys passed)  

> SMEMBERS douglas  

1) "website"  
2) "name"  

> SMEMBERS maria  

1) "endereco"  
2) "nome"  
3) "telefone"  

> SUNION douglas maria  

1) "endereco"  
2) "nome"  
3) "name"  
4) "website"  
5) "telefone"  

> ZADD key score something (sorted set associated with a score)  

> ZADD hackers 1940 "Alan Kay"  
> ZADD hackers 1906 "Grace Hopper"  
> ZADD hackers 1953 "Richard Stallman"  
> ZADD hackers 1965 "Yukihiro Matsumoto"  
> ZADD hackers 1916 "Claude Shannon"  
> ZADD hackers 1969 "Linus Torvalds"  
> ZADD hackers 1957 "Sophie Wilson"  
> ZADD hackers 1912 "Alan Turing"  

> ZRANGE hackers 0 -1  

1) "Grace Hopper"  
2) "Alan Turing"  
3) "Claude Shannon"  
4) "Alan Kay"  
5) "Richard Stallman"  
6) "Sophie Wilson"  
7) "Yukihiro Matsumoto"  
8) "Linus Torvalds"  

> HSET table:id field value (Hashes are maps btw string fields and string values)   

> HSET user:1000 name "John Smith"  
> HSET user:1000 email "john.smith@example.com"  
> HSET user:1000 password "s3cret"  

> HGET user:1000 name => "John Smith"  

> HGETALL user:1000  
1) "name"  
2) "John Smith"  
3) "email"  
4) "john.smith@example.com"  
5) "password"  
6) "s3cret"  

> HMSET user:1001 name "Mary Jones" password "hidden" email "mjones@example.com" (setting multiple fields at once)  

> HSET user:1000 visits 10  

> HINCRBY user:1000 visits 1 => 11  

> HINCRBY user:1000 visits 10 => 21  

> HDEL user:1000 visits  

> HINCRBY user:1000 visits 1 => 1  