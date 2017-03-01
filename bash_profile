# added by Anaconda 2.0.1 installer
#export PATH="/Users/jamie/anaconda/bin:$PATH"

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH


##Decrypting TLS Browser Traffic With Wireshark -- Save Session Keys - https://jimshaver.net/2015/02/11/decrypting-tls-browser-traffic-with-wireshark-the-easy-way/
export SSLKEYLOGFILE="/Users/jamie/Downloads/sslkeylog.log"

##
# Your previous /Users/jamie/.bash_profile file was backed up as /Users/jamie/.bash_profile.macports-saved_2014-10-13_at_01:53:17
##

# MacPorts Installer addition on 2014-10-13_at_01:53:17: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


# added by Anaconda 2.1.0 installer
export PATH="/Users/jamie/anaconda/bin:$PATH"

# Go settings
export GOPATH=/Users/jamie/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/Users/jamie/go/bin

# Most of the time you don’t want to maintain two separate config files for login and non-login shells 
# — when you set a PATH, you want it to apply to both. You can fix this by sourcing .bashrc from your 
# .bash_profile file, then putting PATH and common settings in .bashrc.
# Now when you login to your machine from a console .bashrc will be called.
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# Bash command history log - https://spin.atomicobject.com/2016/05/28/log-bash-history/
export PROMPT_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(history 1)" >> ~/.logs/bash-history-$(date "+%Y-%m-%d").log; fi'

# added by Anaconda2 4.0.0 installer
#export PATH="/Users/jamie/anaconda/bin:$PATH"
