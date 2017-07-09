<html>
    <body>
        <cftry>
            <cfoutput>
                #thisDoesntExist#
            </cfoutput>
            <cfcatch type="application">
                Application fail
            </cfcatch>
            <cfcatch type="expression">
                Expression fail
            </cfcatch>
        </cftry>
        <br/>
        <cftry>
            <cfquery name="q" datasource="NoSuchSource">
                select 1 from tbl
            </cfquery>
            <cfcatch type="database">
                Database fail
            </cfcatch>
        </cftry>
    </body>
</html>
