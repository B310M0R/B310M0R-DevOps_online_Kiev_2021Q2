# Task 3

## 1
Processes in linux may have next states:  
* Running
* Sleeping
* Uninterruptable sleep
* Stopped
* Zombie  

## 3
proc file system exists because files can't gain information directly from linux kernel.  
So this special directory generates info about system kernel each time, when files need it  
As I understood, this directory doesn't exists "in real time" and information generates "on air" every time, when this directory is accessed  

## 6
When we use ps aux command, kernel processes are in [] brackets and user's processes are not

## 7
On screen 7 we can see such states of processes:
* S (sleeping) - process is not active and waiting for smth to be finished or activated
* R (running) - active process
* I - idle processes, they are uninterruptable and they don't contribute a load, so they could be ignored

## 9 
With ps flags we can examine to whom processes are belonging (-G and U) and from what terminal they are working (-t). Also we can examine how CPU and RAM are loaded

## 10
top command display process with it's PID, priority, how memory, RAM and CPU are loaded, also we can see time that process took to work, user, which started this process and command of this process

## 12
* shfit + n - sort by PID
* shift + p - sort by CPU load
* shift + m - sort by RAM usage
* shift + t - sort by time
* shift + f - edit number of columns
* shift + z - change color scheme
* c - show command's full path
* k - kill process
* r - renice some process

## 14
Priority defines which process would be runned first and how much resources should be used for one ore another process  
Linux processes' priorities could have number from -20 to + 19. And priority of -20 processes is higher then + 19 ones
To start process with specific priority 'nice' command is used and to change some process' priority - renice


## 15
With top we can change processes; priorities with printing r. This interactive command will work like renice command

## 17
jobs command shows current background and foreground tasks  
fg puts background task to foreground executing  
bg makes some task to work in background  
nohup command gives a user to execute command without losing connection to tty even if tty is closed  


