<html>
    <!-- index loop -->
    <p>
        <cfloop from=1 to=5 index="i">
            <cfoutput>
                #i#
            </cfoutput>
        </cfloop>
        <br/>
        <cfloop from=5 to=1 index="i" step=-1>
            <cfoutput>
                #i#
            </cfoutput>
        </cfloop>
    </p>
    <!-- conditional loop -->
    <p>
        <cfset num=RandRange(1,10)>
        <cfoutput>
            Initially num = #num#
            <br/>
        </cfoutput>
        <cfloop condition="num lt 13" >
            <cfset num+=1>
            <cfoutput>
                num = #num#
                <br/>
            </cfoutput>
        </cfloop>
        <cfoutput>
            After the loop num = #num#
            <br/>
        </cfoutput>
    </p>
    <!-- list loop -->
    <p>
        <cfloop list="once,upon;a,time" delimiters=",;" index="item">
            <cfoutput>
                #item#
            </cfoutput>
        </cfloop>
    </p>
    <!-- COM Collection/Structure loop -->
    <p>
        <cfset myBooks = StructNew()>
        <cfset myVariable = StructInsert(myBooks,"ColdFusion","CF MX Bible")>
        <cfset myVariable = StructInsert(myBooks,"HTML","HTML Visual QuickStart")>
        <cfset myVariable = StructInsert(myBooks,"XML","Inside XML")>
        <cfloop collection="#myBooks#" item="subject">
            <cfoutput>
                #subject#: #StructFind(myBooks,subject)#
                <br />
            </cfoutput>
        </cfloop>
    </p>
</html>
