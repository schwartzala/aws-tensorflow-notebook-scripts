# Create a RHEL7 Box in the AWS Console
# Open up Port 8888 to have access to the Notebook's default port
# Run as Super User: sudo su
# Make this script executable: chmod +777 ./awsami_nb.sh
# Execute the script: ./awsami_nb.sh

# Update yum
sudo yum -y update

# Remove any old Docker Installations
sudo yum -y remove docker docker-common docker-selinux docker-engine

# Add the Docker Repo to yum
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Install Docker Community Edition
sudo yum -y install docker

# Check your Docker installation was successful
docker
# Above should be a list of possible Docker commands

# Start Docker service
sudo service docker start

# Get the Tenserflow Notebook Docker Image
sudo docker pull jupyter/tensorflow-notebook

# Run the Docker image 
sudo docker run -it --rm -p 8888:8888 jupyter/tensorflow-notebook
