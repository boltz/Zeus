<cfscript>
	
	numeric function factorial(n)
	{
		if(n == 1)
		{
			writedump(getCallStack());
			writeoutput("<br>");
			return 1;
		}
		else
		{
			writedump(getCallStack());
			writeoutput("<br>");
			return n * factorial(n - 1);
		}
	}
	
	factorial(5);
</cfscript>