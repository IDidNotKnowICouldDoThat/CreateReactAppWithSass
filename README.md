# CreateReactAppWithSass
Included is a zshell/bash shell script for creating a template workspace for building Progressive Web Apps (PWAs) using Facebook's React components with a SASS CSS pre-processor.

# Requirements
This script was written for execution in a linux environment, running on bash in a oh-my-zshell terminal. It may not work without zsh and bash as the if statements and syntax were designed for that combination specifically. Feel free to provide different versions for different terminal, operating system environments, and scripting languages.  

This program requires that you have Node.js and npm installed and working globally. For more info on getting those up and running on your system see their respective repositories/websites. 

# Usage
place CreateReactAppWithSass.sh in your projects folder. By running the command, a new project folder will be created with the same name as you give to the application.
```
bash CreateReactAppWithSass.sh sitename
```

This will create a new project folder called sitename/ which will be auto-populated with the directory structure and files needed to develop a React web application with SASS. From there you can
```
cd sitename
```
to start editing the App.js file, add your own React components to the src/components/ directory, and make adjustments to the SASS styling in the src/scss/ directory. 

# Contact 
Feel free to send any commits, problems/bugs/issues, praise and beer money to ididnotknowicoulddothat@gmail.com

Happy hacking!