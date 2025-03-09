#!/bin/bash

# Download and install Quarto
QUARTO_VERSION="1.3.450"
wget https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_VERSION}/quarto-${QUARTO_VERSION}-linux-amd64.tar.gz
tar -xvzf quarto-${QUARTO_VERSION}-linux-amd64.tar.gz

# Create directory and move only necessary files
sudo mkdir -p /opt/quarto
sudo mv quarto-${QUARTO_VERSION}/bin/quarto /opt/quarto/
sudo mv quarto-${QUARTO_VERSION}/bin/tools /opt/quarto/
sudo ln -s /opt/quarto/quarto /usr/local/bin/quarto

# Clean up
rm -rf quarto-${QUARTO_VERSION}
rm quarto-${QUARTO_VERSION}-linux-amd64.tar.gz

# Verify installation
quarto --version
