<!--
The SessionRotate() method changes a session after authentication. For example, you want to change the session 
after a successful login. It prevents session attacks, because the session before and after a successful authentication 
is different.
The method, 
• Creates a session
• Copies the data from the old session to the new session
• Invalidates the old session
• Invalidates or overwrites the old session cookies
• Creates new session cookies if the old session cookies are invalidated
• Copies and updates client storage data to new session keys
-->

<cfset session.username = "Bob">
<cfset ssession.userLocation = "Canada">
<cfset ssession.userPassword = "eh?">
<cfdump var="#session#">

<cfset sessionRotate()>
<cfdump var="#session#">
