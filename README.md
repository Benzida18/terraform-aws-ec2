# 🚀 Terraform AWS EC2 Project

To first begin creating the instances you must create an IAM key which will allow you to then export it to your local computer, giving Terraform access to AWS.

Also make sure you have all of these steps completed so that it can facilitate the process:

- Know the AWS provider (eu-north-1).
- Make sure you have a **security group** to allow SSH (22) + HTTP (80).
- When selecting to create an instance you will be given an AMI key for the Linux version (ami-005019f47c98b4abd).
- Must know which instance type you are creating, such as t3.small or other options given.
- Use an existing key pair or create a new one if needed (myfirst-keypair) for SSH access.
- Know the number of instances you want to create, for example **5 instances**.
- Add an output block to display all public IPs.

To create an instance on Terraform so you can skip the AWS GUI, you first have to set up the AWS credentials locally by exporting the keys that you gathered on AWS:


Once you’ve done that, you then create a folder and cd into it. That’s where you will be placing your main script:

mkdir aws-terraform-instance
cd aws-terraform-instance


Once inside the folder, create your main.tf. Using nano is fine as it allows you to edit and create the file at once without needing to use touch first.

nano main.tf

This is the base script to change depending on what type of instances you want to create:

🎯 What to Replace Each Time
	•	REGION_HERE → AWS region (e.g., eu-north-1).
	•	YOUR_IP_HERE → your current public IP (use curl ifconfig.me).
	•	NUMBER_OF_INSTANCES_HERE → how many servers to launch.
	•	AMI_ID_HERE → AMI of your OS in that region (Amazon Linux, RHEL, Ubuntu, etc.).
	•	INSTANCE_TYPE_HERE → instance size (t3.micro, t3.small, etc.).
	•	KEYPAIR_NAME_HERE → name of your AWS key pair (without .pem).



terraform init     # set up project
terraform plan     # preview changes
terraform apply    # create resources (type yes)
terraform destroy  # delete resources (type yes)






