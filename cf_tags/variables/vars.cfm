<html>
    <body>
        <cfinclude template="header.cfm">
        <cfset orc_name="Mogka">
        <cfparam name="orc_name" default="Def">
        <p>
            The orc's name is
            <cfoutput>
                #orc_name#
            </cfoutput>
        </p>
        <!-- check if variable exists -->
        <cfif IsDefined("orc_name")>
            The "orc_name" variable is defined.
        <cfelse>
            The "orc_name" variable is not defined.
        </cfif>
        <!-- two variables with same names, but different scopes -->
        <cfset Request.banana="Request banana">
        <cfset Session.banana="Session banana">
        <p>
            <cfoutput>
                #Request.banana#
            </cfoutput>
            <cfoutput>
                #Session.banana#
            </cfoutput>
        </p>
        <cfinclude template="footer.cfm">
    </body>
</html>
