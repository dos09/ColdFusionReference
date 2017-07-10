<html>
    <body>
        <cfscript>
            //index loop
            arr = [];
            for(i = 1; i <= 5; i++) {
               ArrayAppend(arr, i);
            }
            writeDump(arr);
            arr = [];
            for(i = 5; i >= 1; i--) {
               ArrayAppend(arr, i);
            }
            writeDump(arr);
            //conditional loop
            num = RandRange(1,10);
            writeOutput("Initially num = #num#<br/>");
            while(num lt 13) {
                writeOutput("num = #num#<br/>");
                num++;
            }
            writeOutput("After the loop num = #num#<br/>");
            //list loop
            list = "once,upon;a,time";
            for(item in ListToArray(list, ",;")) {
               writeOutput("#item# ");
            }
            writeOutput("<br/>");
            //COM collection/structure loop
            myBooks = {};
            StructInsert(myBooks,"ColdFusion","CF MX Bible");
            StructInsert(myBooks,"HTML","HTML Visual QuickStart");
            StructInsert(myBooks,"XML","Inside XML");
            for(item in myBooks) {
               //writeOutput("#item# : #StructFind(myBooks, item)#<br/>");
               writeOutput("#item# : #myBooks[item]#<br/>");
            }
        </cfscript>
    </body>
</html>