<cfset session.username = "Bob">
<cfset ssession.userLocation = "Canada">
<cfset ssession.userPassword = "eh?">
<cfdump var="#session#">

<!-- Call sessionInvalidate which will invalidate and clean up current session -->
<cfset sessionInvalidate()>
<cfdump var="#session#">