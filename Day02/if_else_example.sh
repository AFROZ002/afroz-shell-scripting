#!/bin/bash

#This is  example of the  if else 


echo "Enter the Age: "
 read Age

 if [ $Age -ge 18 ]
 then
	 echo " You are eligible for vote "
 else
	 echo "you are not eligible for vote "
 fi

