# Node as a service deployment on Windows
Node.JS deployment using batch (.bat) file using nssm

Recentely, I deployed node.js (using express.js, couchbase 4.1) at my workplace on Windows environment. I was looking to host the app
as a service. I stumbled to nssm, which is fantastic tool.

Please go to download nssm from https://nssm.cc/ (32 or 64 bits OS)

For routine deployment, I developed a batch file to automate the build process and you can use deployment.bat to start building 
your auto deployment on Windows (mine was Windows 2012 but it works with previous server versions too).

You can enhance this bat file as per your requirements. The production bat file, I am using it to minify and compress js,css files. 
Copy them to the server using FTP and call other bat file to re-start the service. (without re-start, changes will not be visible)

Any queries, please mail me to grakesh18@gmail.com
