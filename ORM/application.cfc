/*
You always need a Application.cfc to work with ORM.  You
need to set ormenabled to true for the application to use ORM.
Note that ORM Configuration and mapping is generated and loaded
when the aplication starts.
*/
component
{
    //Name of the application
    this.name = "ORM_BasicExample";

    //ormenabled should be set to true so that ORM is enabled for this application
    this.ormenabled = "true";

    //Set the datasource that needs to be used by the ORM Functions.  You can also set this in the ormsettings struct
    this.datasource = "cfartgallery";

    //Set logSQL to true.  This will log SQLs to the console.
    this.ormsettings.logSQL = "true";
}