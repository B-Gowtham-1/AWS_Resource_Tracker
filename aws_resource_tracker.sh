#!/bin/bash
######################
#Author:Gowtham
#Date : 26/03/25
# This Script will Track The Aws Resources (S3 buckets,Ec2 InstancesId,Lambda Functions,IAM users)
#####################
#Use This Command to run this script in debug mode 
#set -x "Enables Debug Mode"
#List of s# Buckets
echo "S3 Buckets" | tee output.txt 
aws s3 ls | tee -s out.txt

#List of Ec2 Instances
echo "EC2 Instances"
aws ec2 describe-instances

#List Of lambda Functions
echo "Lambda Functions "
aws lambda list-functions

#List of IAM users
echo "IAM users"
aws iam list-users
