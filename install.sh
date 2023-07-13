#!/bin/bash

# Copy all files into their respective directories
cp -r $HOME/GitHub/system_files/scripts/* $HOME/Scripts/

# Check the exit status of the scripts transfer
if [ $? -eq 0 ]; then
    echo "Script files successfully added!"
else
    echo "Script files not moved to folder!"
    exit 1
fi

cp -r $HOME/GitHub/system_files/configs/* $HOME/.config/

# Check the exit status of the configs transfer
if [ $? -eq 0 ]; then
    echo "Config files successfully added!"
else
    echo "Config files not moved to folder!"
    exit 1
fi


# Add system update script to bashrc
if ! grep -Fxq "alias system_update=\"$HOME/Scripts/system_update.sh\"" $HOME/.bashrc ; then
    echo "alias system_update=\"$HOME/Scripts/system_update.sh\"" >> $HOME/.bashrc
    chmod +x $HOME/Scripts/system_update.sh
    echo "Added system update script to bashrc"
else
    echo "System update script already added!"
fi

# Perform a system update and upgrade prior to installing packages
$HOME/Scripts/system_update.sh