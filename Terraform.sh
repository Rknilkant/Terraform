#!/bin/bash

# Update package list and install required dependencies
echo "Updating package list and installing dependencies..."
sudo apt-get update -y
sudo apt-get install -y gnupg software-properties-common wget curl unzip

# Add the HashiCorp GPG key
echo "Adding HashiCorp GPG key..."
wget -q -O - https://apt.releases.hashicorp.com/gpg | sudo apt-key add -

# Add the HashiCorp Linux repository
echo "Adding HashiCorp Linux repository..."
sudo apt-add-repository "deb https://apt.releases.hashicorp.com $(lsb_release -cs) main"

# Update package list again after adding the new repository
echo "Updating package list..."
sudo apt-get update -y

# Install Terraform
echo "Installing Terraform..."
sudo apt-get install -y terraform

# Verify Terraform installation
echo "Verifying Terraform installation..."
terraform --version

# Final message
echo "Terraform installation completed successfully!"
