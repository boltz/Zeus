<cftry>
	<cfset variables.URL = "http://#cgi.server_name#:#cgi.server_port##getDirectoryFromPath(cgi.script_name)#010-upload-mime-type.cfm">
	<cfhttp method="Post" url="#variables.URL#">
		<cfhttpparam type="FILE" name="myfile" file="#expandpath('./sample.txt')#">
	</cfhttp>
	<cfoutput>#cfhttp.filecontent#</cfoutput>
	<cfcatch>
		<cfoutput>#CFCATCH.message#
		<br>#CFCATCH.detail#<br>
		</cfoutput>
	</cfcatch>
</cftry>


<cfset uploadDirectory = "#GetTempDirectory()#cf_upload">
<!--- create upload directory --->
<cfif not directoryExists(uploadDirectory)>
	<cfdirectory action="create" directory="#uploadDirectory#">
</cfif>

<cftry>
	<cffile action="UPLOAD" destination="#uploadDirectory#" filefield="form.myFile" nameconflict="MAKEUNIQUE" accept=".txt">
<cfcatch>
	<cfoutput>#CFCATCH.message#<br>#CFCATCH.detail#<br></cfoutput>
</cfcatch>
</cftry>

<!--- read directory --->
<cfdirectory action="LIST" directory="#uploadDirectory#" name="qFileList">
<cfoutput>#qFileList.recordcount# file(s) uploaded<br></cfoutput>

<!--- delete all the uploaded files--->
<!---
<cfloop query="qFileList">
<cffile action="delete" file="#uploadDirectory#/#Name#">
</cfloop>
--->
<!--- delete directory --->
<!---
<cfdirectory action="delete" directory="#uploadDirectory#">
--->