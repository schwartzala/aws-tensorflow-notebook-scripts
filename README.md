# aws-tensorflow-notebook-scripts
Scripts to setup Tensorflow on AWS Instances.

## Setting up AWS CLI and spinning up an AWS AMI Machine

A lot of this was borrowed from [this](http://max-likelihood.com/2016/06/18/aws-tensorflow-setup/) guide. I have made some adjustments to allow it to make use of the AWS Free-Tier in order to avoid charges. Since we're just trying to get a Tensorflow Notebook up and running, we just use a light machine.

```
# Download the AWS CLI Installation and Machine Setup Script.
wget https://raw.githubusercontent.com/schwartzala/aws-tensorflow-notebook-scripts/master/setup-awscli.sh

# Set Permissions
chmod +777 setup-awscli.sh

# Read the Script and be aware of any manual steps you have to do.
cat ./setup-awscli.sh

# Run the Script
./setup-awscli.sh
```

## Install Tensorflow Noteboook on AWS AMI Machine

```
# Download the RHEL 7 Notebook Script  
wget https://raw.githubusercontent.com/schwartzala/aws-tensorflow-notebook-scripts/master/awsami_nb.sh

# Set Permissions  
chmod +777 awsami_nb.sh

# Run the Script  
./awsami_nb.sh
```

## (Alternative) Install Tensorflow Notebook on RHEL7 Machine

I do not provide a guide to setting up a RHEL7 box, but RHEL7 may be more familiar to you. If it is, use this script.

```
# Download the RHEL 7 Notebook Script  
wget https://raw.githubusercontent.com/schwartzala/aws-tensorflow-notebook-scripts/master/rhel7_nb.sh

# Set Permissions  
chmod +777 rhel7_nb.sh

# Run the Script
./rhel7_nb.sh
```

You should now be able to access your notebook from your browser.
Make sure your port for the notebook is opened up in your AWS Console.
Note: This is pretty insecure. Without setting up some authentication or keys, your machine at this port is completely open. There is some work that can be done to provide better security.
