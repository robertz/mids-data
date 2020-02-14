<cfscript>
    files = directoryList("Player");

    files.each(function(fn) {
        thisFile = fn.listLast("/");
        writeOutput(thisFile & "<br />");
    });
</cfscript>