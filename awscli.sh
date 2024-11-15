#!/bin/bash

# Update package lists
echo "Updating package lists..."
sudo apt update -y

# Install required dependencies
echo "Installing required dependencies..."
sudo apt install -y unzip curl

# Download AWS CLI installation package
echo "Downloading AWS CLI..."
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

# Unzip the AWS CLI package
echo "Unzipping AWS CLI package..."
unzip awscliv2.zip

# Install AWS CLI
echo "Installing AWS CLI..."
sudo ./aws/install

# Verify the installation
echo "Verifying AWS CLI installation..."
aws --version

# Cleanup installation files
echo "Cleaning up installation files..."
rm -rf awscliv2.zip aws

echo "AWS CLI installation complete!"
