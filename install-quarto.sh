#!/bin/bash

# Download and install Quarto
QUARTO_VERSION="1.3.450"
wget https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_VERSION}/quarto-${QUARTO_VERSION}-linux-amd64.tar.gz
tar -xvzf quarto-${QUARTO_VERSION}-linux-amd64.tar.gz

# Create directory and move only necessary files
mkdir -p $HOME/.local/bin
mkdir -p $HOME/.local/opt/quarto
mv quarto-${QUARTO_VERSION}/bin/quarto $HOME/.local/opt/quarto/
mv quarto-${QUARTO_VERSION}/bin/tools $HOME/.local/opt/quarto/
ln -s $HOME/.local/opt/quarto/quarto $HOME/.local/bin/quarto

# Add to PATH
export PATH="$HOME/.local/bin:$PATH"

# Clean up
rm -rf quarto-${QUARTO_VERSION}
rm quarto-${QUARTO_VERSION}-linux-amd64.tar.gz

# Verify installation
quarto --version
