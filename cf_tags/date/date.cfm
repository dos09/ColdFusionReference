<html>
    <body>
        <cfset dNow = now()>
        <cfset dStart = CreateDate(2017,1,1)>
        <cfset dProgrammer = DateAdd("d", 255, dStart)>
        <p>
            Using cfdump:
        </p>
        <cfdump var = "#dNow#">
        <br/>
        <cfdump var = "#dStart#">
        <br/>
        <cfdump var = "#dProgrammer#">
        <br/>
        <p>
            Using cfoutput + DateFormat:
        </p>
        <cfoutput>
            #DateFormat(dNow, "short")#
        </cfoutput>
        <br/>
        <cfoutput>
            #DateFormat(dNow, "yyyy-mm-dd")#
        </cfoutput>
        <br/>
    </body>
</html>
