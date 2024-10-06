#!/bin/bash

###############################################################################
# Author: Waseef Tauqueer
# Version: v0.0.1
#
# Description: This script automates the process of listing various resources
# in an AWS account. The script supports multiple AWS services, allowing users
# to specify a region and service to retrieve resource information.
#
# Supported Services:
# 1. EC2 - Elastic Compute Cloud
# 2. RDS - Relational Database Service
# 3. S3 - Simple Storage Service
# 4. CloudFront - Content Delivery Network
# 5. VPC - Virtual Private Cloud
# 6. IAM - Identity and Access Management
# 7. Route53 - DNS Web Service
# 8. CloudWatch - Monitoring and Management Service
# 9. CloudFormation - Infrastructure as Code Service
# 10. Lambda - Serverless Computing Service
# 11. SNS - Simple Notification Service
# 12. SQS - Simple Queue Service
# 13. DynamoDB - NoSQL Database Service
# 14. EBS - Elastic Block Store
#
# Usage:
#   ./aws_resource_list.sh <aws_region> <aws_service>
# Example:
#   ./aws_resource_list.sh us-east-1 ec2
#############################################################################

# Check if the required number of arguments is provided
if [ $# -ne 2 ]; then
    echo "Usage: ./aws_resource_list.sh <aws_region> <aws_service>"
    echo "Example: ./aws_resource_list.sh us-east-1 ec2"
    exit 1
fi

# Assign command-line arguments to variables
aws_region=$1
aws_service=$2

# Check for AWS CLI availability
if ! command -v aws &> /dev/null; then
    echo "Error: AWS CLI is not installed. Please install the AWS CLI and try again."
    exit 1
fi

# Verify if AWS CLI is configured
if [ ! -d ~/.aws ]; then
    echo "Error: AWS CLI is not configured. Please configure the AWS CLI and try again."
    exit 1
fi

# Execute the corresponding AWS CLI command based on the specified service
case $aws_service in
    ec2)
        echo "Listing EC2 Instances in $aws_region..."
        aws ec2 describe-instances --region $aws_region
        ;;
    rds)
        echo "Listing RDS Instances in $aws_region..."
        aws rds describe-db-instances --region $aws_region
        ;;
    s3)
        echo "Listing S3 Buckets..."
        aws s3api list-buckets
        ;;
    cloudfront)
        echo "Listing CloudFront Distributions in $aws_region..."
        aws cloudfront list-distributions --region $aws_region
        ;;
    vpc)
        echo "Listing VPCs in $aws_region..."
        aws ec2 describe-vpcs --region $aws_region
        ;;
    iam)
        echo "Listing IAM Users..."
        aws iam list-users
        ;;
    route53)
        echo "Listing Route53 Hosted Zones..."
        aws route53 list-hosted-zones
        ;;
    cloudwatch)
        echo "Listing CloudWatch Alarms in $aws_region..."
        aws cloudwatch describe-alarms --region $aws_region
        ;;
    cloudformation)
        echo "Listing CloudFormation Stacks in $aws_region..."
        aws cloudformation describe-stacks --region $aws_region
        ;;
    lambda)
        echo "Listing Lambda Functions in $aws_region..."
        aws lambda list-functions --region $aws_region
        ;;
    sns)
        echo "Listing SNS Topics..."
        aws sns list-topics
        ;;
    sqs)
        echo "Listing SQS Queues..."
        aws sqs list-queues
        ;;
    dynamodb)
        echo "Listing DynamoDB Tables in $aws_region..."
        aws dynamodb list-tables --region $aws_region
        ;;
    ebs)
        echo "Listing EBS Volumes in $aws_region..."
        aws ec2 describe-volumes --region $aws_region
        ;;
    *)
        echo "Error: Invalid service '$aws_service'. Please enter a valid service."
        exit 1
        ;;
esac
