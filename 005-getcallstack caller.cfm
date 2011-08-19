<cftry>
	<cfinclude template="005-getcallstack the called.cfm">
<cfcatch type="any">
	<cfoutput>
		#cfcatch.message#
		<br>#cfcatch.detail#
		<br>
	</cfoutput>
</cfcatch>
</cftry>