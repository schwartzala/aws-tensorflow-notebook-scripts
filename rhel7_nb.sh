# Create a RHEL7 Box in the AWS Console
# Open up Port 8888 to have access to the Notebook's default port
# Run as Super User: sudo su
# Make this script executable: chmod +777 ./rhel7_nb.sh
# Execute the script: ./rhel7_nb.sh

# Update yum
sudo yum update

# Install some required packages
sudo yum install -y yum-utils device-mapper-persistent-data lvm2

# Remove any old Docker Installations
sudo yum remove docker docker-common docker-selinux docker-engine

# Add the Docker Repo to yum
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Install the latest version of Selinux for RHEL 7
sudo yum install -y http://mirror.centos.org/centos/7/extras/x86_64/Packages/container-selinux-2.21-1.el7.noarch.rpm

# Install Docker Community Edition
sudo yum install docker-ce.x86_64

# Check your Docker installation was successful
docker
# Above should be a list of possible Docker commands

# Start Docker service
dockerd

# Get the Tenserflow Notebook Docker Image
docker pull jupyter/tensorflow-notebook

# Run the Docker image 
docker run -it --rm -p 8888:8888 jupyter/tensorflow-notebook
