#Install Application
*N/A Application installed by default with Ubuntu*

# Add Symbolic Links
```bash
ln -s ~/Install/bash/.bash_aliases ~/.bash_aliases

# Reference ~/.bashrc
rm ~/.bashrc
ln -s ~/Install/bash/.bashrc ~/.bashrc

# Refresh Bash
source ~/.bashrc

# Set Auto CD
shopt -s autocd
```
