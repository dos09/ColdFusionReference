<cfcomponent>


    <cffunction name="getXMLOrcs" access="remote" returntype="string">
        <cfset var res="">
        <cfset var orcsQuery="">
        <cfquery name="orcsQuery" datasource="MySQL_cf_db">
            select id, clan, name, kills
            from orcs
        </cfquery>
        <!-- generated content is saved in 'res' -->
        <cfsavecontent variable="res">
            <orcs>
            <cfoutput query="orcsQuery">
                <orc id="#id#">
                    <clan>#XMLFormat(clan)#</clan>
                    <name>#XMLFormat(name)#</name>
                    <kills>#XMLFormat(kills)#</kills>
                </orc>
            </cfoutput>
            </orcs>
        </cfsavecontent>
        <cfreturn res>
    </cffunction>


</cfcomponent>
