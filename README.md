# AWS Resources Tracker Script

## 📌 **Description**
This Bash script is used to track AWS resources such as **S3 buckets, EC2 instance IDs, Lambda functions, and IAM users**. The script retrieves these details using AWS CLI commands and displays the output while also saving some data to a file.

---

## 📋 **Prerequisites**
Before running this script, ensure that you have the following setup:

### ✅ **1. Install AWS CLI**
If AWS CLI is not installed on your system, install it using the following steps:

#### **For Ubuntu/Linux:**
```bash
sudo apt update
sudo apt install awscli -y
```

#### **For Amazon Linux:**
```bash
sudo yum install aws-cli -y
```

#### **For Windows:**
Download and install from the official AWS website: [AWS CLI Installation Guide](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)

### ✅ **2. Configure AWS CLI**
After installing AWS CLI, you need to configure it with your AWS account credentials. Run the following command:

```bash
aws configure
```
You will be prompted to enter:
- AWS Access Key ID
- AWS Secret Access Key
- Default AWS Region (e.g., `us-east-1`)
- Default Output Format (JSON, Table, or Text)

### ✅ **3. Verify AWS CLI Connection**
To check if AWS CLI is correctly configured, run:
```bash
aws s3 ls
```
If configured correctly, it should return a list of your S3 buckets. If you encounter any permission errors, ensure your IAM user has the necessary permissions.

---

## 🚀 **How to Run the Script**

1. **Make the script executable:**
```bash
chmod +x aws_resources_tracker.sh
```

2. **Run the script normally:**
```bash
./aws_resources_tracker.sh
```

3. **Run the script in debug mode (to troubleshoot issues):**
```bash
bash -x ./aws_resources_tracker.sh
```



---

## 📜 **What This Script Does**

This script retrieves and displays the following AWS resources:

### 🔹 **S3 Buckets**
- Lists all the S3 buckets in your AWS account.
- Saves the output in `output.txt`.

### 🔹 **EC2 Instances**
- Lists all running EC2 instances along with their instance IDs.

### 🔹 **Lambda Functions**
- Lists all deployed AWS Lambda functions.

### 🔹 **IAM Users**
- Lists all IAM users in your AWS account.

---

## 🛠 **Troubleshooting**

### ❌ **Command Not Found Error (`aws: command not found`)**
- Ensure AWS CLI is installed (`aws --version` should return a valid version).
- If not installed, reinstall AWS CLI as mentioned in prerequisites.

### ❌ **Access Denied Error (`An error occurred (AccessDenied)`)**
- Check your IAM permissions.
- Ensure your AWS credentials are correct (`aws configure`).
- Verify you have the necessary policies attached (e.g., `AmazonS3ReadOnlyAccess`, `AmazonEC2ReadOnlyAccess`, etc.).

### ❌ **No Output from EC2 Command**
- Ensure you have running EC2 instances.
- Run `aws ec2 describe-instances --region YOUR_REGION` to check manually.

---




