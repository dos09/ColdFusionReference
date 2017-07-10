<html>
    <body>
        <cfset struct1 = {}>
        <cfset StructInsert(struct1, "Mogka", "some orc(Mogka))")>
        <cfset struct1["ra"] = "another orc(Ra)">
        <!-- All letters are capitalized for Grom -->
        <cfset struct1.Grom = "and again some orc(Grom)">
        <!-- but struct's keys are case insensitive -->
        <cfoutput>
            #struct1["grOM"]#
            <br/>
            #struct1["RA"]#
            <br/>
        </cfoutput>
        <br />
        <p>Dump struct1:</p>
        <cfdump var = "#struct1#">
        <!-- -->
        <cfset struct2 = StructNew()>
        <cfset StructInsert(struct2, "key", "value")>
        <cfset StructInsert(struct2, "key2", "value2")>
        <p>Dump struct2:</p>
        <cfdump var = "#struct2#">
        <!-- -->
        <cfset fruits = {
            "Apple" = "Green",
            "Banana" = "Yellow",
            "Cherry" = "Red"
            } />
        <!-- it seems the variable's names aren't case sensitive -->
        <p>Dump fruits:</p>
        <cfdump var = "#FRUITS#" />
        <p>cfloop:</p>
        <cfloop collection="#fruits#" item="key">
            <cfoutput>#key# : #fruits[key]#</cfoutput><br/>
        </cfloop>
    </body>
</html>
