<html>
    <body>
        <cferror exception="any" template="show_err_msg.cfm" type="exception">
        <!-- if unhandled exception occurs,
        the show_err_msg page will be invoked -->
        <cfoutput>#thisWillGiveError#</cfoutput>
    </body>
</html>