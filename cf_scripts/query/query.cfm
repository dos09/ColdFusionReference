<html>
    <body>
        <cfscript>
            q = new Query();
            q.setSQL("select clan, name, kills " &
                    "from orcs " &
                    "where kills > :killsNum " &
                    "order by kills desc " &
                    "limit 100");
            q.setDatasource("MySQL_cf_db");
            q.addParam(name="killsNum", value="0");
            res = q.execute();
            dataSet = res.getResult();
            writeDump(res);
            writeDump(dataSet);
            writeOutput("Columns: #res.getPrefix().columnList#<br/>");
            writeOutput("Rows: #res.getPrefix().recordCount#<br/>");
            writeOutput("#dataSet.recordCount# records found<br/>");
            for(row in dataSet) {
               writeOutput("row #dataSet.currentRow#: " &
                           "#row.clan#, #row.name#, #row.kills#<br/>");
            }
        </cfscript>
        <cfquery name="qOrcs" datasource="MySQL_cf_db" timeout="30">
            select id, name, clan, kills
            from orcs
        </cfquery>
        <cfscript>
            for(i = 1; i < qOrcs.recordCount; i++) {
                writeOutput("<b>id</b> : #qOrcs['id'][i]#<br/>");
                writeOutput("<b>clan</b> : #qOrcs['clan'][i]#<br/>");
                writeOutput("<b>name</b> : #qOrcs['name'][i]#<br/>");
                writeOutput("<b>kills</b> : #qOrcs['kills'][i]#<br/>");
            }
        </cfscript>
    </body>
</html>
