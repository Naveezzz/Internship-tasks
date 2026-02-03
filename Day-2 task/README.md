# AWS EC2 Deployment - Manual and Terraform

The goal of the task is to understand AWS concepts, launch EC2 instance manually and provision an EC2 instance using Terraform

### AWS (Amazon Web Services):

AWS is a cloud platform that lets you rent computers, storage and services over the internet instead of buying and maintaining physical servers.

AWS is a cloud computing platform that provide on-demand servers, storage and other IT services only over the internet.

You Pay only for what you use.

## 1. AWS Region:

AWS Region is a physical location where AWS has its data centers.

## 2. Availability Zone (AZ):

Availability Zone is like a seperate data center inside a region.
Each region has multiple Availability Zones. If one AZ goes down, others can still work.
This helps application running without any interruption.

## 3. EC2 (Elastic Compute Cloud):

EC2 is a virtual computer that runs in the cloud. Instead of buying a physical machine, AWS gives us a server that we can start, stop and delete whenever we want.
We can use EC2 to run applications, servers or test environments.

## 4. AMI (Amazon Machine Image):

AMI is a ready-made OS used to create an EC2 Instance. It contains the operating system and basic software.

## 5. Instance Type:

Instance Type defines how powerful the EC2 machine is. It decides CPU, memory and network capacity.

## 6. Key pair:

A Key pair is used to securely log in to the EC2 instance. It contains the Public key and Private key.
Public key is stored in AWS.
Private key will be downloaded by us.

Command to create a key-pair:

ssh-keygen -f <file-name>

Run in Git Bash which is the one i recommend.

## 7. SSH (Secure Shell):
SSh is a secure way to connect into your EC2 server from your own computer using the internet. (A safe remote login to another computer).

Command to connect the instance:
ssh -i <private-key> ec2-user@<Public-IP>

## 8. Security Group:

A Security Group works like a firewall for EC2. It controls which traffic is allowed in and out of the instance. 
That in and out we call in techincal terms as Inbound rules and Outbound rules.

## 9. IAM (Identity and Access Management):

IAM controls who can access AWS resources and what actions they can perform.

### Manual Creation of EC2 Instance

1. Login to AWS Console
2. Open EC2
3. Launch a new instance
4. Choose AMI
5. Choose Instance Type
6. Create a Key pair or with out creating a key pair also it works.
7. Configure Security Group
8. Launch the instance
9. Connect the EC2 using ssh

Loom link: https://www.loom.com/share/b6a4eeb35b9046b495c4d801d978b526

---

## VPC (Virtual Private Cloud):
VPC is like your own private network inside AWS.
It controls:
- IP address range
- Networking rules

## Subnet:
A Subnet is a smaller section inside a VPC.
EC2 instances are always launched inside a subnet, not directly in a VPC.
By default, AWS uses a default VPC, but when you create you own will show real-world understanding and you control networking.

### Terraform

Terraform is a tool that lets you create and manage cloud infrastructure using code instead of creating resources manually in the AWS Console.

We also call it as Infrastructure as a code.

## 1. IaC:

Infrastructure as Code means managing cloud resources using configuration files.

## 2. Provider:

Provider tells Terraform which cloud platform to use.

## 3. Resource:

A Resource represents a cloud component that terraform creates, such as ec2 instance, security group, s3 bucket

## 4. Configuration files(.tf):

Terraform uses files with the .tf extension to define infrastructure.

## 5. Terraform State:

Terraform keeps track of created resources using a state file.
This helps terraform understand what already exists and what needs to be changed.

## 6. Terraform Workflow:

Terraform follows a simple workflow:
- Initialize (terraform init)
- Plan (terraform plan)
- Apply (terraform apply)

### 7. EC2 Provisioning Using Terraform

1. Create Project Directory
2. Provider Configuration
3. EC2 Resource Definition
4. Initialize terraform
5. Preview Changes
6. Apply Configuration
7. Verification

Loom link: https://www.loom.com/share/93b88d2218404d269ce16c1cf0ac1968