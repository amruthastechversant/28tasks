<cfset now = now()>
<cfset today = DayOfWeek(now)>
<cfset lastfriday=6-today>
<cfset fridayoffset=lastfriday-7>
<cfset lastfriday=dateAdd('d',fridayoffset , now)>
<cfset currentDate=now>
<cfset lastDayOfMonth=createDate(year(currentDate), month(currentDate), daysInMonth(currentDate))>
<cfoutput>
<!DOCTYPE html>
<head>
<title>TASK4</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="#application.appBasePath#views/TASK6/css/styles.css" rel="stylesheet">
</head>
<body>
    <header class="fixed-header">
        fixed header
    </header>
    <table border="0">
        <thead>
            <tr>
                <th>Todays Date:</th>
                <td> #dateFormat(now,'dd/mm/yyyy')#</td>
            </tr>
            <tr>
                <th>Current month in numeric:</th>
                <td>#month(now)#</td>
            </tr>
            <tr>
                <th>Current month in word:</th>
                <td>#dateFormat(now,'mmmm')#</td>
            </tr>
            <tr>
                <th>Last friday Date:</th>
                <td>#lastfriday#</td>
            </tr>
            <tr>
                <th>Last day of month:</th>
                <td>#dateFormat(lastDayOfMonth,'dd/mm/yyyy')#</td>
            </tr><td></td>
            
            <tr>
                <th>Last 5 days:</th>
                <td>
                <cfloop index="i" from="0" to="4">
                    <cfset pastday=dateAdd('d', -i, now)>
                    <cfset dayName=dateFormat(pastday,'dddd')>
                    <cfset daycolor=getDayColor(dayName)>
                    #dateFormat(pastday,'dd-Mmm-yyyy')# - <span style="color:#daycolor#">#dayName#<br>
                </cfloop>
                </td>
            </tr>
        </thead>
    </table>
     <footer class="fixed-footer">
        fixed footer
    </footer>
</body>
</html>
</cfoutput>

<cffunction name="getDayColor" access="public" returnType="any">
<cfswitch expression="#dayName#">
        <cfcase value="sunday">
            <cfset daycolor="red">
        </cfcase>
        <cfcase value="monday">
            <cfset daycolor="green">
        </cfcase>
        <cfcase value="tuesday">
            <cfset daycolor="orange">
        </cfcase>
        <cfcase value="wednesday">
            <cfset daycolor="brown">
        </cfcase>
        <cfcase value="thursday">
            <cfset daycolor="bold black">
        </cfcase>
        <cfcase value="friday">
            <cfset daycolor="blue">
        </cfcase>
        <cfcase value="saturday">
            <cfset daycolor="bold red">
        </cfcase>
        </cfswitch>
<cfreturn daycolor>
</cffunction>