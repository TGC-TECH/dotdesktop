echo 'welcome to the .desktop creator tool by T.Cowles (TGC-TECH), released under GPL v3'
echo 'Hello, what would you like to call this desktop shortcut?'
read varname #asks user for name of of shortcut
echo [Desktop Entry] > $varname.desktop #creates a blank desktop entry file with the name of shortcut
echo Name=$varname >> $varname.desktop #adds name to the file 
echo 'What command would you like me to run (enter a command or path to an app image)'
read varcommand #asks user for command
echo Exec=$varcommand >> $varname.desktop #adds command to the desktop file
echo 'enter the path to the icon for this shortcut (drag image into terminal'
read varicon #asks user for the path to icon
echo Icon=$varicon >> $varname.desktop #adds the icon to the desktop file
echo Type=Application >> $varname.desktop #declares the file an application
echo 'what catogory do you want this application to be in'
read varcatogory #asks user the catogory of file
echo Categories=$varcatogory >> $varname.desktop #adds catogory info the desktop file
mv $varname.desktop /usr/share/applications/ #moves file to application dir (root acess required)
echo 'Done! your shorcut should now be available in the application menu. If it is not make sure you run this script as root by using the command sudo'


