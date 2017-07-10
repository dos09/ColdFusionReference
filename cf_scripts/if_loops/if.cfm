<html>
    <body>
        <cfscript>
            a = 5;
            if(a lt 0) {
               res = "a is less than 0";
            } else if (a eq 0){
                res = "a equals 0";
            } else {
               res = "a is greater than zero";
            }
        </cfscript>
        <cfoutput>
            a = #a#<br/>
            #res#<br/>
        </cfoutput>
    </body>
</html>