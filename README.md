# Website-deploy

I'm using Amazon EC2 to practice doing web-things I should have learnt already.

## General stuff

### Config files

- KEY_PATH:     contains the path for the private key you use to gain access to the box.
- PUBLIC_DNS:   contains the public DNS of the box you are using.
- SERVER_FILES: contains the path to a folder containing the files to be put in the home directory of the box.

### Scripts: Mostly self explanatory.

- ./connect.sh    => ssh into your instance using the key at KEY_PATH, going to the server at PUBLIC_DNS.
- ./cloneToBox.sh => copy the contents of SERVER_FILES to the box.
- ./setupBox.sh   => create the appropriate environment variables, aliases and install the appropriate libraries. 
It is intended to be ran on the box itself (not using runOnBox.sh)

## my-boring-website stuff

- ./up.sh <port> => Bring up the server to a particular port (I use non-80 ports when trying stuff out locally)
- ./down.sh      => Bring down the server, regardless of which port it's on, as long as you're the same user you were when you called ./up.sh

## How it works

- Q serves HTTP GET requests using .z.ph and POST requests using .z.pp.
- When you press a link on the currently served page (i.e. an <a href="uri"> tag), a GET request is made for the page "www.whatever.com/uri".

