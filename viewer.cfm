<cfscript>
    data = queryExecute("SELECT identifier FROM resources");
</cfscript>

<cfoutput>
<cfloop query="#data#">
    <a href="/view.cfm?i=#identifier#">#identifier#</a><br />
</cfloop>
</cfoutput>