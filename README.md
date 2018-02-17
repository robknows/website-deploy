# Website-deploy

I'm using Amazon EC2 to practice doing web-things I should have learnt already. The point of this is not to have a nice website, it's just about the
tools for bringing a web server up and down and deploying any changes as quickly as possible. In the case that you actually want to see the website,
here it is: http://www.robmoore.london

## Config files

- KEY_PATH:     contains the path for the private key you use to gain access to the box.
- PUBLIC_DNS:   contains the public DNS of the box you are using.
- SERVER_FILES: contains the path to a folder containing the files to be put in the home directory of the box.
- WWW_PASSWD:   contains the password assigned to the www user who runs the actual server.

## Scripts: Mostly self explanatory.

- ./connect.sh     => Ssh into your instance using the key at KEY_PATH, going to the server at PUBLIC_DNS.
- ./cloneToBox.sh  => Copy and extract the contents of SERVER_FILES to the box.
- ./setupBox.sh    => Create the appropriate environment variables, aliases and install the appropriate libraries. It is intended to be ran on the box itself (not using runOnBox.sh)
- ./copyToBox.sh   => Copies a file to the box (to within /home/ubuntu)
- ./copyFromBox.sh => Copies a file from the box (from within /home/ubuntu)
- ./runOnBox.sh    => Runs a command on the box.

## Assumed API of website files

- ./up.sh <port> <logfile> => Bring up the server to a particular port. Yeah, log file, sure.
- ./down.sh                => Bring down the server, regardless of which port it's on, as long as you're the same user you were when you called ./up.sh

## Todo

### New
- HTTPS
- Compression for sending things over the network
- Time how long it takes to get the website up and running on a virgin machine
