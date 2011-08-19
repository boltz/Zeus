<cftry>
	<cfinclude template="fact.cfm">
<cfcatch type="any">
	<cfoutput>
		#cfcatch.message#
		<br>#cfcatch.detail#
		<br>
	</cfoutput>
</cfcatch>
</cftry>