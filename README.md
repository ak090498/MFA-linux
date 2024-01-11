# MFA-linux
A simple login shell script which adds an additional layer of security using Linux's built in RANDOM variable. This prompts the logged in user to enter the key shown. If the entered key is correct user may proceed further, else this process is continued. Also this script traps ctrl+c and ctrl+z until the proper input is given by user.

## Usage
In order to use the script login as a root user and simply place the script inside /etc/profile.d/ directory. 

