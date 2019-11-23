
To copy a folder from A to B logged in B:  

>sudo scp A_username@host.com:/my/path/* /B_/home/ubuntu/  

To copy a file from B to A while logged into B:  

>scp /path/to/file username@a:/path/to/destination

To generate SSH key

>ssh-keygen -t rsa -b 4096 -C "your_email@example.com"  

To Copy the output of id_rsa.pub  

>cat /home/ubuntu/id_rsa.pub  

To create an Alias

>alias dcwp='docker-compose exec --user www-data phpfpm wp'

