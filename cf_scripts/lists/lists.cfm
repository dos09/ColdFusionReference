<html>
    <body>
        <cfscript>
            numbers = "1,2,3,4";
            numbers = ListAppend(numbers, 1293);
            for(item in ListToArray(numbers, ",")) {
               writeOutput("#item# ");
            }
        </cfscript>
    </body>
</html>