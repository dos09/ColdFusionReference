<html>
    <body>
        <!--- home
        "http://localhost:8500/ref_cf/component_web_service/orcs_as_xml.cfc?wsdl"
        --->
        <!--- work
        "http://localhost:8500/ColdFusionReference/cf_tags/component_web_service/orcs_as_xml.cfc?wsdl"
        --->
        <cfinvoke method="GetXMLOrcs" returnvariable="rawXMLOrcs"
            webservice="http://localhost:8500/ColdFusionReference/cf_scripts/component_web_service/orcs_as_xml.cfc?wsdl">
        </cfinvoke>
        <cfset xmlOrcs="#XMLParse(rawXMLOrcs)#">
        <cfdump var="#xmlOrcs#">
        <!--- Another way to invoke the web service --->
        <hr/>
        <cfscript>
            obj = CreateObject("webservice",
            "http://localhost:8500/ColdFusionReference/cf_tags/component_web_service/orcs_as_xml.cfc?wsdl");
            xmlRes = #XMLParse(obj.getXMLOrcs())#;
            writeDump(xmlRes);
        </cfscript>
    </body>
</html>
