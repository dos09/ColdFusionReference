<html>
    <body>
        <cfscript>
            try {
               thisDoesntExist += 1;
            } catch (application a) {
               writeOutput("Application fail");
            } catch(expression e) {
               writeOutput("Expression fail");
            } finally {
               writeOutput("<br/>finally");
            }
        </cfscript>
    </body>
</html>