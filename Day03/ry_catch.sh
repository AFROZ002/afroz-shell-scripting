#!/bin/bash

create_Directry() {
	mkdir demo
}



if ! create_Directry; then 
	echo "The code is being exited as the directry already existed"
	exit 1
fi

