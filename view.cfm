<cfscript>
    params = {
        'identifier': { value: url.i, type: "cf_sql_varchar" }
    };

    data = queryExecute("SELECT data FROM classes WHERE identifier = :identifier", params);

    if(data.recordCount) writeDump(var=deserializeJSON(data.data), abort = true, label = "label");
</cfscript>

