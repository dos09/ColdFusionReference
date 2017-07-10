<html>
    <body>
        <cfinvoke component="components/orc" method="getOrcs"
            returnvariable="orcsQuery">
        </cfinvoke>
        <cfdump var="#orcsQuery#">
        <cfscript>
            //obj = CreateObject("Component", "components.Orc"); //also valid
            obj = CreateObject("Component", "components/Orc");
            writeDump(obj.GetOrcs());
            writeDump(obj.orcName);
        </cfscript>
    </body>
</html>
