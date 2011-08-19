<!--- In this case, file content is passed via both - output attribute and inside tag body. Tag body
will get preference --->
<cfset filename = expandpath('./myfile.txt')>
<cftry>
<cffile action="write" file="#filename#" output="some output">
some tag body
</cffile>
<cfset content = FileRead(filename)>
<cfoutput>File Length = #Len(content)#</cfoutput>
<cfcatch type="any">
<cfoutput>
#cfcatch.message#
<br>#cfcatch.detail#
<br>
</cfoutput>
</cfcatch>
</cftry>