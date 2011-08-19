<cftry>
	<cfset totalRAMSpace = getTotalSpace("ram:")>
	<cfset freeRAMSpace = getFreeSpace("ram:")>
	<cfset totalDiskSpace = getTotalSpace("c:")>
	<cfset freeDiskSpace = getfreeSpace("c:")>
	<cfoutput>
	Total Hard Disk Space = #DecimalFormat(totalDiskSpace / (1024 * 1024 * 1024))# GB
	<br>Free Hard Disk Space = #DecimalFormat(freeDiskSpace / (1024 * 1024 * 1024))# GB
	<br>Total Application RAM Memory = #DecimalFormat(totalRAMSpace / (1024 * 1024))# MB
	<br>Free Application RAM Memory = #DecimalFormat(freeRAMSpace / (1024 * 1024))# MB
	<br>
	</cfoutput>
	<cfcatch type="any">
		<cfoutput>
		#cfcatch.message#
		<br>#cfcatch.detail#
		<br>
		</cfoutput>
</cfcatch>
</cftry>