<cfquery name="arts" datasource="cfartgallery">
	select * from art 
</cfquery>

<cfset cols = listToArray(listsort(arts.columnlist, "textnocase", "ASC"))>

<cfscript>
	cols = listToArray(listsort(arts.columnlist, "textnocase", "ASC"));
	for(row in arts)
	{
		for(col in cols)
			writeoutput(arts.currentrow & " ..." & col & ": " & row[col] & "<br>");
		writeoutput("<hr>");
	}
</cfscript>