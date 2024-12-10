# =============
# Customize
# =============
if command -v fortune &> /dev/null
then
    echo -e "Welcome to my server, $(whoami)! \n\n$(fortune)" | boxes -d weave
fi


# ======
# Alias
# ======
# Alias for pinging Google DNS
alias ping8='ping 8.8.8.8'

# Alias for listing files with detailed information
alias ll='ls -l'

# Alias for updating your system
alias update='sudo apt update && sudo apt upgrade'

alias cls='clear'

alias proj='cd ~/Documents/Projects'

alias df='df -h'


# for advanced
alias restartmyapp='cd /opt/myapp && sudo systemctl restart myapp.service && echo "Service myapp restarted!"'
# or with error handling
alias restartmyapp='cd /opt/myapp && sudo systemctl restart myapp.service && if [ $? -eq 0 ]; then echo "Service myapp restarted successfully!"; else echo "Failed to restart myapp service."; fi'

