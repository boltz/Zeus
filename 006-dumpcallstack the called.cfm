<cffunction name="factorial" hint="returns the factorial of a number" output="true">
	<cfargument name="n" required="yes" type="numeric" 
	            hint="The number for which the factorial is returned"/>

	<cfif n eq 1>
		<cfdump var="#dumpCallStack()#">
		<br>
		<cfreturn 1>
	<cfelse>
		<cfdump var="#dumpCallStack()#">
		<br>
		<cfreturn n * factorial(n - 1)>
	</cfif>
</cffunction>

<cfset factorial(5)>