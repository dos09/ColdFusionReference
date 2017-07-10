<html>
    <cfquery name="GetOrcs" datasource="MySQL_cf_db">
        select clan, name, kills
        from orcs
    </cfquery>
    <!-- can skip the quotes -->
    <cfdump var="#GetOrcs#">
    <cfset struct=StructNew()>
    <cfset t = StructInsert(struct, "Mogka", "some orc")>
    <cfset t = StructInsert(struct, "Ra", "another orc")>
    <!-- cfabort will stop page execution and show error -->
    <!--
    <cfabort showerror="Error message from cfabort">
    -->
    <cfdump var="#struct#">
</html>