<html>
    <body>
        <cfset arr=ArrayNew(1)>
        <cfset ArrayAppend(arr, "ABC")>
        <cfset ArrayAppend(arr, "DEF")>
        <cfset ARRAYAPPEND(arr, "GHI")>
        <cfoutput>
            Array length: #ArrayLen(arr)#
            <br/>
        </cfoutput>
        <cfloop from="1" to="#ArrayLen(arr)#" index="i">
            <cfoutput>
                arr[#i#] = #arr[i]#
                <br/>
            </cfoutput>
        </cfloop>

        <cfset arr = []>
        <cfset ArrayAppend(arr, 434)>
        <cfdump var = "#arr#">
        <!-- array with gap -->
        <cfset arr = []>
        <cfset arr[1] = "1234">
        <cfset arr[4] = "9994">
        <cfdump var = "#arr#">
    </body>
</html>
