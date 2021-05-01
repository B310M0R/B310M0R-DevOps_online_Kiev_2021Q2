
#Task 5.2

##1  
On 1 screen we can see users with /nologin at the end of string. They are pseudo-users  
At all in this file we have next info: username:password:uid:gid:uid comments:directory:shell  
At file /etc/group we can see next info: group-name:password:gid:list-of-users  

##2
uid 0 - root  
uid 1-999 - pseudo-users, daemons, system and reserved users  
uid 1000+ - "normal" users  
To set UID we can use command usermod with -u flag  
UID is unique user identificator number  

##3
GID is a unique group identificator number  
To change it we can use usermod -g command  

##4
To see to which group user is belonging, we can check user's gid by /etc/passwd file with | grep 'username' and then check this gid in /etc/group  
For example:  
cat /etc/passwd | grep belomor  
4th value is gid, then:  
cat /etc/group | grep 'gid'  
1th value is group name  

##5  
To add user we use sudo useradd 'username'  
We don't need any flags, because when we use this command, new user apeears in /etc/passwd  
Of course we can add flags, such as -g (gid), -u (uid), -p (password) and other  

##6
To change username we use sudo usermod -l new-name old-name  

##7
skel_dir (/etc/skel/) is a "skeleton" directory, which initiates home directory of a new created user  
Structure of this directory you can see on screen 7.png  

##8
userdel user_name

##9
to lock - sudo passwd -l username, to unlock - sudo passwd -u username  

##10

sudo passwd -d username

##11
(screen 11): 1 row - total amount of disk space, used by dir, 1 column - privileges, 2 - number of hard links to this file, 3 - user, 4 - group, 5 - size, then date of the last modification and filename 

##12
access rights are r (read), w (write) and x (execute). They are exist for three groups - user (owner), group (of that owner) and other users  
So, rwxrwxrwx means that owner of file, users of his group and all other users can read, change and execute file

##13
We need to define access availabilities of users to file. So we need to use chmod u/g/o +/- r/w/x. Also if it's important file that must be saved, we can add a sticky bit (chmod +t) or chattr + a/i  
Also we can change user or group which has access to this file by chown and chgrp commands  

##14
chmod, chown, chgrp

##15
777 - rwxrwxrwx, 1755 - swxrw-rw-  
umask is a command that changes default access priviliges on a new created files  
if we want to change mask to the whole file system, we can edit /etc/profile file  

##16
Sticky bit is the special access mechanis that prohibits to change certain file to other users  
There are examples of sticky bit files on screen 16, also we can find many of such files with find -perm /1000  
Also there are SUID and GUID permissions. They give root privileges on certain file to user or group of users.  
Such files could be find by find -perm /4000 (for SUID) and find -perm /2000 (for GID)

##17
I didn't understand what exactly I must answer on this questions, but main file attributes, which could be applied with help of chattr command are immutable (i) and apend (a)  
chattr +i makes file unchangeble, also it can't be deleted by any user, until this attribute exists  
chattr +a makes file to become undeleteble
