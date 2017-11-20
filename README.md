# Website-deploy

I'm using Amazon EC2 to practice doing web-things I should have learnt already. The point of this is not to have a nice website, it's just about the
tools for bringing a web server up and down and deploying any changes as quickly as possible. In the case that you actually want to see the website,
here it is: http://www.robmoore.london

## Config files

- KEY_PATH:     contains the path for the private key you use to gain access to the box.
- PUBLIC_DNS:   contains the public DNS of the box you are using.
- SERVER_FILES: contains the path to a folder containing the files to be put in the home directory of the box.

## Scripts: Mostly self explanatory.

- ./connect.sh    => Ssh into your instance using the key at KEY_PATH, going to the server at PUBLIC_DNS.
- ./cloneToBox.sh => Copy and extract the contents of SERVER_FILES to the box.
- ./setupBox.sh   => Create the appropriate environment variables, aliases and install the appropriate libraries. It is intended to be ran on the box itself (not using runOnBox.sh)

NB. Todo:

## "my-boring-website" stuff

- ./up.sh <port> => Bring up the server to a particular port (I use non-80 ports when trying stuff out locally)
- ./down.sh      => Bring down the server, regardless of which port it's on, as long as you're the same user you were when you called ./up.sh

## Todo

### Fixes
- ./cloneToBox.sh does not work as I want it to. I currently have to ./connect.sh onto the box, then run rm -rf ./* to clean it out, but I
don't want that, I want ./cloneToBox.sh to "just sort it out" without me having to do this shit.
- ./cloneToBox.sh should `tar -cxvf ...` before sending to save my network usage.
- ./runOfBox.sh doesn't do what it's meant to >:(

### New
- Assume the presence of a `./up.sh <port> <log-file>` and `./down.sh` API within the serverfiles (my-boring-website) to further decrease turnover
time for deploying changes to the site.
- HTTPS
