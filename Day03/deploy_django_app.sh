#!/bin/bash

 # Deploy   a Django app and handle the code for errors task

set -e
 #  Delete if already exists
code_clone() {
	    echo "Cloning the Django app..."

	        
		     if [ -d "django-notes-app" ]; then
		             echo "Directory already exists. Removing it..."
		                     rm -rf django-notes-app
		                         fi
		
		                            git clone https://github.com/LondheShubham153/django-notes-app.git
	                             }
		
   install_requirments() {
 	   echo "Installing dependencies"
	   sudo apt-get update
	    sudo apt-get install docker.io nginx -y

   }
   required_restarts() {
	  sudo chown $USER /var/run/docker.sock
	  sudo systemctl enable docker
	      sudo systemctl start docker
   	          sudo systemctl enable nginx
		      sudo systemctl start nginx
		     sudo  systemctl restart docker 

   }
   deploy() {
	    echo "Building and running Docker container..."
	     cd django-notes-app || exit 1
 	    docker build -t notes-app .
	    docker run -d -p 8000:8000 notes-app:latest
}

echo "****************** Deploy Ho rha h wait karo bhai abhi thora "
code_clone
install_requirments
if ! required_restarts; then 
	echo "System fault identified "
	exit 1 
fi
deploy

echo "Deployment Done Bro "



	    


 
