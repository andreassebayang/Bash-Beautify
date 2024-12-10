# =============
# Customize
# =============
if command -v fortune &> /dev/null
then
    echo -e "Welcome to my server, $(whoami)! \n\n$(fortune)" | boxes -d weave
fi
