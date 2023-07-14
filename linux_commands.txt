Ultimate list of Linux commands for daily operations

System Information:
Check system information: uname -a 
Display CPU information: lscpu  
Show memory usage: free -m  
View disk space usage: df -h 

Process Management:
List running processes: ps -ef  
Search for a specific process: pgrep <process_name>  
Kill a process: kill <PID>  
Check system load: top or htop 

User and Group Management:
Create a user: sudo adduser <username>  
Add user to a group: sudo usermod -aG <groupname> <username>  
Change user password: sudo passwd <username>  
Grant sudo privileges: sudo visudo  

File Operations:
List files and directories: ls 
Change directory: cd <directory>  
Create a directory: mkdir <directory_name>  
Copy a file or directory: cp <source> <destination>  
Move or rename a file or directory: mv <source> <destination> 
Remove a file or directory: rm <file_or_directory>  
View file contents: cat <filename>  
Edit a file: vim <filename>  

Network Configuration:
Show IP addresses: ip addr show or ifconfig 
Check network connectivity: ping <host>
View network routing table: route -n or ip route show 
Configure network interfaces: sudo vim /etc/network/interfaces
 
Package Management:
Update package lists: sudo apt update or sudo yum update 
Install a package: sudo apt install <package_name> or sudo yum install <package_name> 
Remove a package: sudo apt remove <package_name> or sudo yum remove <package_name> 
Search for a package: apt search <package_name> or yum search <package_name> 

Log Files:
View system logs: tail -f /var/log/syslog 
View authentication logs: tail -f /var/log/auth.log 
View kernel logs: dmesg  
View application logs: tail -f /var/log/application.log 

System Updates and Upgrades:
Update the system: sudo apt upgrade or sudo yum update 
Upgrade to a new distribution version: sudo do-release-upgrade or sudo yum upgrade 

Services:
Start a service: sudo service <service_name> start or sudo systemctl start <service_name> 
Stop a service: sudo service <service_name> stop or sudo systemctl stop <service_name>
Restart a service: sudo service <service_name> restart or sudo systemctl restart <service_name> 
Enable a service at boot: sudo systemctl enable <service_name> 
Disable a service at boot: sudo systemctl disable <service_name> 
