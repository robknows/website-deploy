#!/bin/bash
serverfiles=$(cat SERVER_FILES)
remotedir="serverfiles"
./runOnBox.sh "sudo rm -rf /home/www/*" # Clean www home
./copyToBox.sh $serverfiles $remotedir  # Copy the files over
./runOnBox.sh "mv $remotedir/* . && mv $remotedir/.gitignore . && rm -d $remotedir" # Pull out the files
./runOnBox.sh "sudo mv /home/ubuntu/* /home/www/" # Move everything into www's home folder
./runOnBox.sh "sudo chown -R www:www /home/www/*" # Make sure www owns all of the server files
exit 0
