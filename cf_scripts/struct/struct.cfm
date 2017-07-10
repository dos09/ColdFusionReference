<html>
    <body>
        <cfscript>
            //case insensitive
            struct1 = {};
            StructInsert(struct1, "Mogka", "some orc(Mogka)");
            struct1["ra"] = "another orc(Ra)";
            struct1.Grom = "and again some orc(Grom)";
            writeOutput("#struct1.GROM#<br/>");
            writeOutput("#struct1['ra']#<br/>");
            writeDump(struct1);
            //
            struct2 = StructNew();
            StructInsert(struct2, "key", "value");
            StructInsert(struct2, "key2", "value");
            writeDump(struct2);

            fruits = {
                "Apple" = "Green",
                "Banana" = "Yellow",
                "Cherry" = "Red"
                };
            writeDump(FRUITS);
            for(fruit in fruits) {
                writeOutput("#fruit# : #fruits[fruit]#<br/>");
            }
        </cfscript>
    </body>
</html>
