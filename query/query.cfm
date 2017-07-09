<html>
    <body>
        <cfquery name="getOrcs" datasource="MySQL_cf_db" timeout="30">
            select id, name, clan, kills
            from orcs
        </cfquery>
        <table cellpadding="10" border="1">
            <tr>
                <th>Clan</th>
                <th>Name</th>
                <th>Kills</th>
            </tr>
            <cfloop query="getOrcs">
                <cfoutput>
                    <tr>
                        <td>#clan#</td>
                        <td>#name#</td>
                        <td>#kills#</td>
                    </tr>
                </cfoutput>
            </cfloop>
        </table>
    </body>
</html>
