cbsatesting
===========

The contents of this repo is an Eclipse Enterprise Edition "Dynamic Web Project".
A DWP is basically an Eclipse project that contains a web application designed to run on Apache Tomcat.
They are usually made up of HTML, Java, JavaScript, and JSPs.
DWPs integrate really nicely into Eclipse--you can even let Eclipse automatically synchronize the web project with the Tomcat installation of your specification, with the added benefit of being able to use Eclipse's built-in debugger to debug runtime issues.
To use this functionality, you will need Tomcat, preferably version 7.
In order to import the project into Eclipse and set up the Tomcat server after pulling from the repo, refer to the instructions below.


Working with git and github
===========
All of you need to fork the project on github.
That way, everyone's account has their own cbsatesting repo.
Please install git, if you haven't.
What follows is a quick primer on how to use git.
If you have any further questions, let me know.

After forking cbsatesting into your own github account and repo, please 'git clone https://github.com/[your github name]/cbsatesting.git'
Now you have cbsatesting on your hard drive, ready to load into Eclipse.

After you make changes to the local project on your computer, you can 'git commit' the changes, document the changes via commit comments, then 'git push' them back to your github repo.
From there, others can 'git pull' those changes from your github repo into theirs, and you from theirs.
Git commands are a little bit more complicated than what I've just said, but not by much.
Invalid git commands result in pretty generous and enlightening hints; git it also pretty well documented on the web because it is really popular.
If all else fails, you can always bother me.


Importing into Eclipse
===========
At this point, you should have a folder called 'cbsatesting', containing two folers 'src' and 'WebContent' on your hard drive.
For some reason, Eclipse does not like it when you use the Import utility to import DWPs, so you'll have to create a new Dynamic Web Project.
You must call the new project 'cbsatesting' because the project name dictates the root URL of the web app.
Some of the files in the project are dependent on the root URL being 'cbsatesting', so using a different name for the project WILL break the app.
Before you finalize the project creating in the New Project window, make sure you create a new Target Runtime, one that points to your Tomcat installation.
After you create the project, just copy/paste the 'src' and 'WebContent' folders you have got from the repo over the newly created ones in the new DWP, overwriting any existing files.
Congrats, it's all imported into Eclipse!
All you need to do now is to associate the new DWP with the Tomcat runtime you have just created.
On the 'Servers' view in Eclipse, right click on the Tomcat server you wish to use (likely there is only one), then 'Add and Remove'.
Move 'cbsatesting' from 'Available' to 'Configured', then Publish and Start the server.
After the server starts, you can point your browser to http://localhost:8080/cbsatesting to see CBSA in action.

Chris Cook
cucook@gmail.com