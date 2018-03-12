#!/bin/bash

update_system()
{
	echo "Updating Operating System"
	apt-get upgrade -y
}

install_java()
{
    echo "Installing Java"
    apt-get install -y default-jre
}

install_tomcat()
{
    echo "Installing Tomcat"
    apt-get install -y tomcat8
}

update_system
install_java
install_tomcat

echo "Install complete"