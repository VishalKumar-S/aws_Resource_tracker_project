#!/bin/bash

############################
#Author : Vishal Kumar. S 
#Date   : 29.08.2023
#Version: v1
#
############################ 
#This script will report the aws resource tracker

set -x
#The resources covered in this script are:
#AWS EC2
#AWS S3
#AWS Lambda
#AWS IAMUsers

#list s3 buckets
echo "Print list of s3 buckets"
aws s3 ls >ResourceTracker

#list EC2 instances
echo "Print list of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' 
 

#list aws Lambda
echo "Print list of lambda functions"
aws lambda list-functions >>ResourceTracker


#list aws IAMUsers
echo "Print list of IAM Users"
aws iam list-users >>ResourceTracker



