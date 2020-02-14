<cfscript>
    files = directoryList("Player");

    meta = {};

    // purge the db
    queryExecute("DELETE FROM classes");

    files.each(function(fn) {
        ident = fn.listLast("/").replace(".json", "");
        jsonData = fileRead(fn);
        
        params = {
            'identifier': { value: ident, type: "cf_sql_varchar" },
            'data': { value: serializeJSON(deserializeJSON(jsonData)), type: "longvarchar" }
        };

        queryExecute("INSERT INTO classes (identifier, data) VALUES (:identifier, :data)", params);

        parsed = deserializeJSON(jsonData);

        if(!meta.keyExists(parsed.ATClass)) meta[parsed.ATClass] = {};
        if(!meta[parsed.ATClass].keyExists(parsed.GroupName)) meta[parsed.ATClass][parsed.groupName] = [];
        meta[parsed.ATClass][parsed.groupName].append(parsed.setName);

    });
    writeDump(var=meta, abort = true, label = "label");
</cfscript>