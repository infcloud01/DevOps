#Descriptipon
#This script takes a parameteer on the command line of the file name you want to validate and validates the puppet file. If nothing returns, then the file syntax is correct. 
puppet parser validate $1
