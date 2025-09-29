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
</head>
<body>
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
                <td>#dateFormat(lastfriday,'dd/mm/yyyy')#</td>
            </tr>
            <tr>
                <th>Last day of month:</th>
                <td>#dateFormat(lastDayOfMonth,'dd/mm/yyyy')#</td>
            </tr><td></td>
            <tr>
                <th>Last 5 days:</th>
                <td>
                <cfloop index="i" from="1" to="5">
                    <cfset pastday=dateAdd('d', -i, now)>
                    <cfset dayName=dateFormat(pastday,'dddd')>
                    <cfset daycolor=getDayColor(dayName)>
                   <span style="#daycolor#"> #dateFormat(pastday,'dd-MMM-yyyy')# - <span style="#daycolor#">#dayName#<br>
                </cfloop>
                </td>
            </tr>
        </thead>
    </table>
</body>
</html>
</cfoutput>

<cffunction name="getDayColor" access="public" returnType="any">
<cfswitch expression="#dayName#">
        <cfcase value="sunday">
            <cfset daycolor="color:red">
        </cfcase>
        <cfcase value="monday">
            <cfset daycolor="color:green">
        </cfcase>
        <cfcase value="tuesday">
            <cfset daycolor="color:##FFA500">
        </cfcase>
        <cfcase value="wednesday">
            <cfset daycolor="color:##f7cc16">
        </cfcase>
        <cfcase value="thursday">
            <cfset daycolor='color:##000000;font-weight:bold;'>
        </cfcase>
        <cfcase value="friday">
            <cfset daycolor="color:blue">
        </cfcase>
        <cfcase value="saturday">
            <cfset daycolor="color:##980707;font-weight:bold;">
        </cfcase>
</cfswitch>
<cfreturn daycolor>
</cffunction>