<cfcomponent displayname="orc..." hint="component for orcs">


    <cffunction name="getOrcs" returntype="query"
    hint="Get all orcs">
        <cfquery name="query" datasource="MySQL_cf_db">
            select clan, name, kills
            from orcs
            order by kills desc
            limit 3
        </cfquery>
        <cfreturn query>
    </cffunction>


</cfcomponent>
