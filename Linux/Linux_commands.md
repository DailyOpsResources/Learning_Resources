Ultimate list of Linux commands for daily operations<br>

**System Information:**<br>
Check system information: uname -a <br>
Display CPU information: lscpu  <br>
Show memory usage: free -m  <br>
View disk space usage: df -h <br>

**Process Management:**<br>
List running processes: ps -ef  <br>
Search for a specific process: pgrep <process_name>  <br>
Kill a process: kill <PID>  <br>
Check system load: top or htop <br>

**User and Group Management:** <br>
Create a user: sudo adduser <username>  ****
Add user to a group: sudo usermod -aG <groupname> <username> **** 
Change user password: sudo passwd <username>  ****
Grant sudo privileges: sudo visudo  ****

**File Operations:** <br>
List files and directories: ls <br>
Change directory: cd <directory>  <br>
Create a directory: mkdir <directory_name> <br> 
Copy a file or directory: cp <source> <destination>  <br>
Move or rename a file or directory: mv <source> <destination> <br>
Remove a file or directory: rm <file_or_directory>  <br>
View file contents: cat <filename>  <br>
Edit a file: vim <filename>  <br>

**Network Configuration:**<br>
Show IP addresses: ip addr show or ifconfig <br>
Check network connectivity: ping <host><br>
View network routing table: route -n or ip route show <br>
Configure network interfaces: sudo vim /etc/network/interfaces<br>
 
**Package Management:**<br>
Update package lists: sudo apt update or sudo yum update <br>
Install a package: sudo apt install <package_name> or sudo yum install <package_name> <br>
Remove a package: sudo apt remove <package_name> or sudo yum remove <package_name> <br>
Search for a package: apt search <package_name> or yum search <package_name> <br>

**Log Files:**<br>
View system logs: tail -f /var/log/syslog <br>
View authentication logs: tail -f /var/log/auth.log <br>
View kernel logs: dmesg  <br>
View application logs: tail -f /var/log/application.log <br>

**System Updates and Upgrades:**<br>
Update the system: sudo apt upgrade or sudo yum update <br>
Upgrade to a new distribution version: sudo do-release-upgrade or sudo yum upgrade <br>

**Services:** <br>
Start a service: sudo service <service_name> start or sudo systemctl start <service_name> <br>
Stop a service: sudo service <service_name> stop or sudo systemctl stop <service_name>  <br>
Restart a service: sudo service <service_name> restart or sudo systemctl restart <service_name> <br> 
Enable a service at boot: sudo systemctl enable <service_name> <br>
Disable a service at boot: sudo systemctl disable <service_name> <br>
