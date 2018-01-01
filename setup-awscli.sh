# Install AWS CLI
sudo pip install awscli

# Verify AWS CLI Installation
aws

# Create a new AWS account at https://console.aws.amazon.com/iam/home?#users
# Download the Credentials CSV file

# Run the AWS Configuration
aws configure

# Follow this stack overflow in order to grant administrator policy to the user: https://stackoverflow.com/questions/28222445/aws-cli-client-unauthorizedoperation-even-when-keys-are-set/31323864#31323864

# Test Installation
aws ec2 describe-instances --output table

# Create a Securty Group
aws ec2 create-security-group --group-name my-sg --description "My Security Group"

# Enable SSH access through port 22 from any IP Address
aws ec2 authorize-security-group-ingress --group-name my-sg --protocol tcp --port 22 --cidr 0.0.0.0/0

# Enable access to Jupyter Notebook through port 8888 from any IP Address
aws ec2 authorize-security-group-ingress --group-name my-sg --protocol tcp --port 8888 --cidr 0.0.0.0/0

# Create an access key
aws ec2 create-key-pair --key-name my_aws_key --query 'KeyMaterial' --output text > ~/.aws/my_aws_key.pem
chmod 400 ~/.aws/my_aws_key.pem

# Create an EC2 Instance
aws ec2 run-instances --image-id ami-55ef662f \
	--count 1 --instance-type t2.micro \
	--key-name my_aws_key \
	--security-groups my-sg

# SSH to Node
# ssh -i ~/.aws/my_aws_key.pem ec2-user@<instance IP>

# Follow my other guide now.
