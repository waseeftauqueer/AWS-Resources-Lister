# AWS Resource Listing Script 🚀

## Description
This Bash script automates the process of listing various resources in an AWS account. It supports multiple AWS services and allows users to specify a region and service to retrieve resource information. 🌐

## Supported Services
The script currently supports the following AWS services:
1. **EC2** - Elastic Compute Cloud ☁️
2. **RDS** - Relational Database Service 🗄️
3. **S3** - Simple Storage Service 📦
4. **CloudFront** - Content Delivery Network 🌍
5. **VPC** - Virtual Private Cloud 🏢
6. **IAM** - Identity and Access Management 🔑
7. **Route53** - DNS Web Service 🌐
8. **CloudWatch** - Monitoring and Management Service 📊
9. **CloudFormation** - Infrastructure as Code Service 🏗️
10. **Lambda** - Serverless Computing Service 🖥️
11. **SNS** - Simple Notification Service 📬
12. **SQS** - Simple Queue Service 📭
13. **DynamoDB** - NoSQL Database Service 🗃️
14. **EBS** - Elastic Block Store 📁

## Usage
To use the script, run the following command in your terminal:

```bash
./aws_resource_list.sh <aws_region> <aws_service>
```

### Example
To list EC2 instances in the `us-east-1` region:

```bash
./aws_resource_list.sh us-east-1 ec2
```

## Prerequisites
- Ensure that the **AWS CLI** is installed on your machine. You can install it by following the [official AWS CLI installation guide](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html). 📥
- The AWS CLI must be configured with your credentials. You can configure it using the command:

```bash
aws configure
```

## Error Handling
- The script checks for the required number of arguments. If not provided, it will display usage instructions. ⚠️
- It verifies whether the AWS CLI is installed and configured before executing any commands. ✔️

## Acknowledgments
- Thank you for using this script! Feel free to contribute or suggest improvements. 🙌

