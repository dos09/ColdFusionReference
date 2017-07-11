<html>
    <body>
        <cfscript>
            public string function func() {
               asd = 444; //visible outside the function
               variables.fff = 522; //this one is visible too
               var bbb = 666; //this is local to the function
               writeOutput("func was called<br/>");
            }
            func();
            writeOutput("#asd#<br/>");
            writeOutput("#fff#<br/>");
            //writeOutput("#bbb#<br/>");
        </cfscript>
        <cfset Session.xx = 1>
        <cfset Session.xx += 1>
        <cfoutput>
            Session counter: #Session.counter#<br/>
            xx: #Session.xx#<br/>
        </cfoutput>
    </body>
</html>
