<html>
    <body>
        <cfscript>
            /* can mix case, doesn't matter */
            arr = ArrayNew(1); //one dimensional
            ArrayAppend(arr, "ABC");
            ArrayAppend(arr, "DEF");
            ArrayAppend(arr, "GHI");
            WriteOutput("Array length: #ArrayLen(arr)#<br/>");
            for(i = 1; i <= ArrayLen(arr); i++) {
               WriteOutput("arr[#i#] = #arr[i]#<br/>");
            }
            arr = [];
            arrayAppend(arr,434);
            writeDump(arr);
            arr = [];
            arr[1] = "1234";
            arr[4] = "9994";
            writeDump(arr);
        </cfscript>
    </body>
</html>