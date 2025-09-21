
#!bin/bash

echo "All values passed to scritp is: $@ "
echo "All values passed to scritp is: $* "
echo "Scritp name is: $0"
echo "Present working dir name is: $PWD"
echo "User name is: $USER"
echo "Home dir of the user is: $HOME"
echo "PID is: $$"
sleep 20
echo "PID Of last command  is: $!"

