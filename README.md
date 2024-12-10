# Bash-Beautify
The repository will contain instructions on how to modify the terminal appearance to make it more attractive and enjoyable.


![image](https://github.com/user-attachments/assets/9ac4c539-1f94-46d3-a017-8f55a8360aef)

### **If you want to create a fun and random welcoming banner to greet everyone who logs in, then you're in the right place! 😄**

## 1. **Prerequisites and Dependencies**
- Fortune
- Boxes

## 2. **Configuration and Setup**
### a. **Keep your system and dependencies up to date**
Run the following commands to ensure everything is updated:
```bash
sudo apt update && sudo apt upgrade
```

### b. **Install Fortune**
Install the `fortune` package to show random quotes and messages
```bash
sudo apt install fortune
```

### c. **Install Boxes**
Install the  `boxes` package to add cool ASCII boxes around your messages:
```bash
sudo apt install boxes
```

### d. **Edit .bashrc**
Make changes to your `.bashrc` file to add the banner with fortune and boxes:
>**Notes:** Always make sure to backup your file before making any changes!

Add the following line at the end of the file to display a fun, random messgae wrapped in an ASCII box with a static welcome message:
```bash

if command -v fortune &> /dev/null
then
    echo -e "Welcome to my server, $(whoami)! \n\n$(fortune)" | boxes -d weave
fi

```

## 3. **Validation and Testing**
once you've edited your `.bahsrc` file don't forget to apply changes by running:
```bash
source ~/.bashrc
```

# **Linux Alias Magic**
To create a shortcut, we use the alias command followed by the shortcut name and the full command. Let’s try it out with a few useful examples!

## 1. **Step by Step Process**
### a. **Open your `.bahsrc` file:
First, you need to open the .bashrc file in your favorite text editor. This file holds all your terminal configurations, including your aliases.
```bash
sudo nano ~/.bashrc
```
> **Pro Tip:** Always back up your .bashrc before making changes!

### b. **Add Your Aliases:**
Now, let's create some common and useful aliases. Add these lines at the end of the file:

```bash
# Alias for pinging Google DNS
alias ping8='ping 8.8.8.8'

# Alias for listing files with detailed information
alias ll='ls -l'

# Alias for updating your system
alias update='sudo apt update && sudo apt upgrade'
```
### c.**Save and Exit:**
After adding your aliases, save the file and exit the editor. For `nano`, press `CTRL` + `X`, then press `Y` to confirm saving.

## 2. **Activate Your New Aliases:**
Now that you’ve saved your .bashrc file, you need to reload it so the new aliases take effect. Run this command:
```bash
source ~/.bashrc
```
## 3. **Testing Your Aliases:**
Try out your new aliases by typing the alias name in the terminal:
- `ping8` will ping Google’s DNS.
- `ll` will list files in the current directory with detailed info.
- `update` will update your system.

## 4. **Bonus Tips:**
"More Alias Ideas"
Once you're comfortable with basic aliases, you can create more advanced ones. Here are a few suggestions:

Alias for clearing the screen:
```bash
alias cls='clear'
```

Alias for quickly navigating to a project folder:
```bash
alias proj='cd ~/Documents/Projects'
```

Alias for checking disk space usage:
```bash
alias df='df -h'
```

Alias for Restart a service in a Specific Directory
```bash
alias restartmyapp='cd /opt/myapp && sudo systemctl restart myapp.service && echo "Service myapp restarted!"'
```
or with error Handling
```bash
alias restartmyapp='cd /opt/myapp && sudo systemctl restart myapp.service && if [ $? -eq 0 ]; then echo "Service myapp restarted successfully!"; else echo "Failed to restart myapp service."; fi'
```
Additional Explanation:
- $?: This represents the exit status of the last command (in this case, systemctl restart). It will be 0 if the command was successful, or a non-zero value if it failed.
- if [ $? -eq 0 ]: This checks if the previous command was successful. If it was, it will show a success message. If it wasn't, it will show an error message.

The possibilities are endless!
