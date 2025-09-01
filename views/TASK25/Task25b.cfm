<cfoutput>
<h3>the total number of times a word is present,
</h3>
</cfoutput>

<cfscript>
    variables.result=queryExecute(
        "select word,count(*) as total
        from tags
        group by word 
        order by total DESC",
        [],
        {datasource=application.datasource}
    );
    for (row in result) {
    writeOutput(row.word & " (" & row.total & ")<br>");
}
</cfscript>