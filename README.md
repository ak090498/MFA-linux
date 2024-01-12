# Simulated-MFA-linux
This script uses Linux's built in 'shuf' command to generate a key and prompts the user to enter it in 3 tries. If the key is correct the user is allowed to proceed further. normal. This process is continued until 3 tries, after that the user will be exited from the login shell automatically. I have also additionally a trap and stty commands which disallow the user to press 'ctrl+c', 'ctrl+z', 'ctrl+d' to exit from the shell.
## Usage
In order to use the script login as a root user and simply place the script inside /etc/profile.d/ directory. 

