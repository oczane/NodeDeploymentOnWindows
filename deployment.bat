@echo OFF
echo '=====minifying css files====='
call minify --output c:\nodeapp\minify-batch\Site.min.css c:\nodeapp\minify-batch\css\Site.css
copy c:\nodeapp\minify-batch\Site.min.css c:\nodeapp\minify-batch\css\Site.min.css
del c:\nodeapp\minify-batch\Site.min.css

echo '=====minifying js files====='
call minify --output c:\nodeapp\minify-batch\MenuStandards.min.js c:\nodeapp\minify-batch\js\MenuStandards.js
copy c:\nodeapp\minify-batch\MenuStandards.min.js c:\nodeapp\minify-batch\js\MenuStandards.min.js
del c:\nodeapp\minify-batch\MenuStandards.min.js

echo '=====starting deployment====='

rem=========CODE TO STOP A SERVICE USING NSSM========
rem nssm stop JetBookWorker

rem=========CODE TO REMOVE A SERVICE USING NSSM========
rem nssm remove JetBookWorker confirm

rem=========CODE TO INSTALL A SERVICE USING NSSM========
rem nssm install JetBookWorker "C:\Program Files\nodejs\node.exe" "c:\nodeapp\couchbase\server.js"

rem=========CODE TO RE-STRAT A SERVICE USING NSSM========
nssm restart JetBookWorker

echo '=====app is live====='
@echo ON