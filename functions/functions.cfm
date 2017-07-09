<html>
    <body>

        <cffunction name="greet" returnType="string">
            <cfargument name="userToGreet" required="false" default="Guest"
                type="string">
            <!-- '&' is used just to show concatenation -->
            <!-- can skip specifying the scope (arguments) -->
            <cfset var retVal="Greetings, #arguments.userToGreet#" & " !">
            <cfreturn retVal>
        </cffunction>


        <cffunction name="getOrcs" returntype="string">
            <cfset var orcsQuery="">
            <cfset var res="">
            <cfquery name="orcsQuery" datasource="MySQL_cf_db">
                select clan, name, kills
                from orcs
            </cfquery>
            <!-- generated content is saved in 'res' -->
            <cfsavecontent variable="res">
                <cfoutput query="orcsQuery">
                    #clan#, #name#, #kills#
                    <br/>
                </cfoutput>
            </cfsavecontent>
            <cfreturn res>
        </cffunction>

        <cfoutput>
            <p>
                #greet("Mogka")#
                <br/>
                #greet(userToGreet="Ra")#
                <br/>
                #greet()#
            </p>
            <p>
                #getOrcs()#
            </p>
        </cfoutput>
        <cfinvoke method="greet" returnvariable="greetRes">
            <cfinvokeargument name="userToGreet" value="Stranger">
        </cfinvoke>
        <p>
            <cfoutput>
                #greetRes#
            </cfoutput>
        </p>
    </body>
</html>
