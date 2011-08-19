<!---
FileName: index.cfm
This is the most basic example in this kit. This example will teach you
- how to map a table to a CFC
- how to Retrieve records using the EntityLoad function.

cfartgallery datasource is used for this application.
Artists table is one of the table in cfartgallery which contains a list of
artists records.  This table is used in this example.
--->

<cfscript>
   /*
      Call ormreload() function so that ORM configuration/mapping is always created afresh
      when index.cfm is called.  This is convenirent to have in development time.  You shouldn't
      do this in production
   */
   ormreload();

    /*
     Load the Artist records to display them.  There are a number of
     variations to the EntityLoad method which will help you to retrieve
     the records the way you want. Refer the documentation for EntityLoad for details.
   */
   artists = EntityLoad("Artists");

    /*
     Display the Artist records that you just loaded
    */
    for (i=1;i<ArrayLen(artists);i++)
    {
        artistObj = artists[i];
        WriteOutput("<b>" & artistObj.getFirstName() & " " & artistObj.getLastName() & "<br></b>");
        WriteOutput("Address: " & artistObj.getAddress() & " " & artistObj.getCity() & " " &
                    artistObj.getState() & " " & artistObj.getPostalCode() & "<br>");
        WriteOutput("Ph: " & artistObj.getPhone() & "<br>");
        WriteOutput("Fax: " & artistObj.getFax() & "<br>");
        WriteOutput("EMail: " & artistObj.getEmail() & "<br>");
        WriteOutput("<br>");
    }
    </cfscript>
    
     <cfdump var="#ormGetSession().getSession(EntityMode.DOM4J)#" LABEL="my ormGetSession">
    <cfdump var="#ormGetSession().connection()#" label="ormGetSession().connection()">
	 <cfdump var="#Ormgetsessionfactory()#" label="Ormgetsessionfactory()">
	  
       
<cfset ORMRequest = Ormgetsessionfactory().openSession()>
<cfdump var="#ORMRequest#" label="ORMRequest variable">
<cfset dom4jSession = ORMRequest.getSession("EntityMode.DOM4J")>
<cfset tx = ORMRequest.beginTransaction()>


Session dom4jSession = session.getSession("EntityMode.DOM4J");
Transaction tx = session.beginTransaction();

	

