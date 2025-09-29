<cfset variables.ageErrorMessage="">
<cfif structKeyExists(form, "submit")>
    <cfif  isDate(form.usersAge) AND isDate(form.mothersAge)>
    <cfset userDob=form.usersAge>
    <cfset motherDob= form.mothersAge>

    <cfif userDob GTE motherDob>
        <cfset today=now()>
 
        <cfset userAge=dateDiff("yyyy",userDob,today)>

        <cfset mothersAge=dateDiff("yyyy",motherDob,today)>
         

        <cfset motherDeliveryAge = mothersAge- userAge>
        

        <cfset userNextBday=createDate(year(today), month(userDob), day(userDob))>

        <cfif userNextBday LT today>
            <cfset userNextBday=createDate(year(today)+1, month(userDob), day(userDob))>
        </cfif>
        <cfset daysUntilluserbday=dateDiff("d", today,userNextBday )>

        <cfset MotherNextBday=createDate(year(today), month(motherDob), day(motherDob))>
        <cfif MotherNextBday LT today>
            <cfset MotherNextBday=createDate(year(today)+1, month(motherDob), day(motherDob))>
        </cfif>

        <cfset daysUntillmotherbday=dateDiff("d", today,MotherNextBday )>

        <cfoutput>
            <p><strong>User Age</strong>:#userAge#</p>
            <p><strong>Mother Age</strong>:#mothersAge#</p>
            <p><strong>Mother Deliver him at</strong>:#motherDeliveryAge#</p>
            <p><strong>Days remaining for userBday</strong>:#daysUntilluserbday#</p>
            <p><strong>Days remaining for Mother Bday</strong>:#daysUntillmotherbday#</p>
        </cfoutput>
        <cfelse>
            <cfset variables.ageErrorMessage="User's Dob should not Exceeed mother's Dob">
        </cfif>
    <cfelse>
        <cfset variables.ageErrorMessage="Please enter valid date fields">
    </cfif>
</cfif>