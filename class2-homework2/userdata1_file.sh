#!/bin/bash
sudo yum install httpd -y 
sudo yum install telnet -y 
sudo yum install mail -y 
systemctl start httpd
systemctl enable httpd 
