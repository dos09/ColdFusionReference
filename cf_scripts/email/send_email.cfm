<html>
    <body>
        <cfscript>
            void function sendTestEmail() {
                mail = CreateObject("component", "mail");
                mail.setFrom("xxxx@mail.com");
                mail.setTo("yyyy@mail.com");
                mail.setSubject("Test message sent with cold fusion (using script)");
                mail.setType("text");
                mail.setBody("This is the mail's body");
                mail.send();
                writeOutput("Mail was sent successfully (script).");
            }
        </cfscript>
    </body>
</html>
