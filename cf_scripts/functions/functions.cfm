<html>
    <body>
        <cfscript>
            public string function greet(string userToGreet = "Guest") {
                return "Greetings, #arguments.userToGreet# !";
            }
            //invoke function 1
            writeOutput(greet("Mogka") & "<br/>");
            writeOutput(greet(userToGreet="Ra") & "<br/>");
            writeOutput(greet() & "<br/>");
        </cfscript>
        <!--- invoke function 2 --->
        <cfinvoke method="greet" returnvariable="greetRes">
            <cfinvokeargument name="userToGreet" value="Stranger">
        </cfinvoke>
        <cfoutput>
            #greetRes#<br/>
        </cfoutput>
        <!--- invoke function 3 --->
        <cfoutput>
            #greet("Orc")#<br/>
        </cfoutput>
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
    </body>
</html>
