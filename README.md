# MFA-linux
This script uses a basic personalized Question and answer format as Multi Factor Authentication.It creates a file in the user's home directory with user generated question and answer and prompts it additionally during authentication while logging in via shell/SSH.When a new user is created/when the MFA file is not created, the script also prompts the user to generate the question and answer which creates the file which is then stored in the user's home directory, from next time onwards the user will have to provide the proper answer before logging in.Additionally a trap and stty commands are added which disallow the user to press 'ctrl+c', 'ctrl+z', 'ctrl+d' to exit from the shell.
## Dependencies
toilet (sudo apt-get install toilet). This is for printing the banner. 

## Usage
In order to use the script login as a root user and simply place the script inside /etc/profile.d/ directory. 

## ALERT
Please note that this project is still in progress as it uses plain text Q and A. I am aware of this issue and working on resolving this.

