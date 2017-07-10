<html>
    <body>
        <!-- ATTENTION: Will send an email on each page load -->
        <cfset num=444039>
        <cfmail to="xxxxxxx@mail.com"
    	from="yyyyyy@mail.com"
    	subject="Test message sent with cold fusion"
    	type="text">
        The sent number is #num#
    </cfmail>
        Mail was sent successfully.
    </body>
</html>
