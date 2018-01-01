# aws-tensorflow-notebook-scripts
Scripts to setup Tensorflow on AWS Instances.

## Install Tensorflow Notebook on RHEL7 Machine

Install "wget" 
```sudo yum install wget```

Download the RHEL 7 Notebook Script
```wget https://raw.githubusercontent.com/schwartzala/aws-tensorflow-notebook-scripts/master/rhel7_nb.sh```

Set Permissions
```chmod +777 rhel7_nb.sh```

Run the Script
```./rhel7_nb.sh```

## Install Tensorflow Noteboook on AWS AMI Machine

Install "wget" 
```sudo yum install wget```

Download the RHEL 7 Notebook Script
```wget https://raw.githubusercontent.com/schwartzala/aws-tensorflow-notebook-scripts/master/awsami_nb.sh```

Set Permissions
```chmod +777 awsami_nb.sh```

Run the Script
```./awsami_nb.sh```

You should now be able to access your notebook from your browser.
Make sure your port for the notebook is opened up in your AWS Console.
Note: This is pretty insecure. Without setting up some authentication or keys, your machine at this port is completely open. There is some work that can be done to provide better security.
