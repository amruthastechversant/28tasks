<cfoutput>
<h2>font change</h2>
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

    minCount = result.total[result.recordCount];
    maxCount = result.total[1];

    minColor={r=150,g=75,b=0};//brown
    maxColor={r=128,g=0,b=128};

    minFont = 12;
    maxFont = 36;

    for (row in result) {
        word = row.word;
        count = row.total;
        

        fontSize = minFont;
        if (maxCount != minCount) {
            fontSize = minFont + ((count - minCount) / (maxCount - minCount)) * (maxFont - minFont);
        }

        ratio=(count - minCount) / (maxCount - minCount);
        r=int(minColor.r + ratio*(maxColor.r-minColor.r));
        g=int(minColor.b + ratio*(maxColor.g-minColor.g));
        b=int(minColor.b + ratio*(maxColor.b-minColor.b));

        color="rgb("& r & "," & g & "," & b & ")";
         writeOutput('<span style="font-size:' & fontSize & 'px; color:' & color & '; margin: 5px;">' & word & '</span>');
    }
</cfscript>
