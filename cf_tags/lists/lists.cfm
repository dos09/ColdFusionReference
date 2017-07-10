<html>
    <body>
        <cfset numbers="1,2,3,4">
        <cfset numbers=ListAppend(numbers, 1293)>
        <cfloop list=#numbers# delimiters="," index="item">
            <cfoutput>#item#</cfoutput>
        </cfloop>
    </body>
</html>
