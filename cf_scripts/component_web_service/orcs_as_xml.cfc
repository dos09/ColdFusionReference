component {

    remote string function GetXMLOrcs() {
        var q = new Query();
        q.setSQL("select id, clan, name, kills from orcs");
        q.setDatasource("MySQL_cf_db");
        var dataSet = q.execute().getResult();
        //just for the test
        var xmlRes = "<orcs>";
        for(row in dataSet) {
            xmlRes = xmlRes &
                    "<orc id='#row.id#'>" &
                    "<clan>#XMLFormat(row.clan)#</clan>" &
                    "<name>#XMLFormat(row.name)#</name>" &
                    "<kills>#XMLFormat(row.kills)#</kills>" &
                    "</orc>";
        }
        xmlRes = xmlRes & "</orcs>";
        return xmlRes;
    }

}