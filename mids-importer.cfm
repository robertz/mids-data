<cfscript>

        // purge the db
    queryExecute("DELETE FROM classes");

    resourceDirectories = ['Data', 'Player', 'Other'];

    resourceDirectories.each(function(rd) {
        files = directoryList(rd);

        files.each(function(fn) {
            ident = fn.listLast("/").replace(".json", "");
            jsonData = fileRead(fn);
            
            params = {
                'identifier': { value: ident, type: "cf_sql_varchar" },
                'data': { value: serializeJSON(deserializeJSON(jsonData)), type: "longvarchar" }
            };
            
            try {
                queryExecute("INSERT INTO `resources` (identifier, data) VALUES (:identifier, :data)", params);
            }
            catch(any e) {}
            
        });

    });
    writeOutput("Resources imported");
</cfscript>