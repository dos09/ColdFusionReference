<html>
    <body>
        <cfscript>
            orc_name = "Mogka";
            writeOutput("The orc's name is #orc_name#<br/>");
            //check if variable exists
            if( isDefined("orc_name") ) {
               writeOutput("The 'orc_name' variable is defined.");
            } else {
               writeOutput("The 'orc_name' variable is not defined.");
            }
            //two variables with same names, but different scopes
            request.banana = "Request banana";
            session.banana = "Session banana";
            writeOutput("<p>#request.banana#<br/>#session.banana#</p>");
        </cfscript>
    </body>
</html>