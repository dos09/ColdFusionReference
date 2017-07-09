<html>
    <body>
        <cfset arr=ArrayNew(1)>
        <cfset ArrayAppend(arr, "ABC")>
        <cfset ArrayAppend(arr, "DEF")>
        <cfset ArrayAppend(arr, "GHI")>
        <cfoutput>
            Array length: #ArrayLen(arr)#<br/>
        </cfoutput>
        <cfloop from="1" to="#ArrayLen(arr)#" index="i">
            <cfoutput>
                arr[#i#] = #arr[i]#<br/>
            </cfoutput>
        </cfloop>
    </body>
</html>
