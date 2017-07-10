<html>
    <body>
        <!--- home
        "http://localhost:8500/ref_cf/component_web_service/orcs_as_xml.cfc?wsdl"
        --->
        <!--- work
        "http://localhost:8500/ColdFusionReference/cf_tags/component_web_service/orcs_as_xml.cfc?wsdl"
        --->
        <cfinvoke method="getXMLOrcs" returnvariable="rawXMLOrcs"
            webservice="http://localhost:8500/ColdFusionReference/cf_tags/component_web_service/orcs_as_xml.cfc?wsdl">
        </cfinvoke>
        <cfset xmlOrcs="#XMLParse(rawXMLOrcs)#">
        <cfdump var="#xmlOrcs#">
    </body>
</html>
