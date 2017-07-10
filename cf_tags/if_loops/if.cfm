<html>
    <cfset a=5>
    <!-- if elseif else -->
    <p>
        a =
        <cfoutput>
            #a#
        </cfoutput>
        <br/>
        <cfif a lt 0>
            a is less than 0
        <cfelseif a eq 0>
            a equals 0
        <cfelse>
            a is greater than zero
        </cfif>
    </p>
</html>
