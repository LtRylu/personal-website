#!/bin/bash

# Download and install Quarto
QUARTO_VERSION="1.3.450"
wget https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_VERSION}/quarto-${QUARTO_VERSION}-linux-amd64.tar.gz
tar -xvzf quarto-${QUARTO_VERSION}-linux-amd64.tar.gz
sudo mv quarto-${QUARTO_VERSION} /opt/quarto
sudo ln -s /opt/quarto/bin/quarto /usr/local/bin/quarto
rm quarto-${QUARTO_VERSION}-linux-amd64.tar.gz

# Verify installation
quarto --version
