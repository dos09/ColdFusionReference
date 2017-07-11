<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    </head>
    <body>
        <h3>Only jQuery</h3>
        <label for="orcName">Orc name:</label>
        <input type="text" id="orcName" />
        <input type="button" id="btnOrcName" value="Show orc name" />
        <h3>Ajax request</h3>
        <label for="randomText">Random text:</label>
        <input type="text" id="randomText" />
        <input type="button" id="btnRandomText" value="Perform ajax request">
        <h3>Counter values (request/session)</h3>
        <input type="button" id="btnCounter" value="Increment counter"/>
        <br/>
        <input type="button" id="btnResetCounter" value="Reset counter" />

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="script.js" ></script>
    </body>
</html>
