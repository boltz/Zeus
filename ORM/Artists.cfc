/*
FileName: Artists.cfc
Usually one CFC maps to one table. In this case, the CFC Artists.cfc maps to the table Artists. 

Persistent attribute should be set to true for cfcomponent so that ColdFusion knows
that mapping needs to generated for this CFC. 

If the name of the component is not the same as that of the table, specify the table
name. 

EntityName should be specified for the CFC which will be used by the Entity* functions
to do CRUD operations on this CFC. If EntityName is not specified, then, the name of
the component is taken as the entityname.
*/ 

component persistent="true" entityname="Artists" table="Artists"
{ 

/*Usually one property corresponds to one column in the table. In this case, the property
"firstname" corresponds to the column FIRSTNAME in the Employees table.
*/
property name="firstname"; 

/*
fieldtype="id" denotes that the property "id" is the primary key of the table Art.
ColdFusion will figure it out by inspecting the database if not specified. 

column attribute is used to define the name of the field in the table to which this
property maps to. If the column attribute is not specified, then, the name of the
property is taken as the name of the field. 

Generator attribute is used to auto-generate the primarykey when a new record is added.
Here we use increment generator. To know more about generators, refer ColdFusion ORM documentation.
*/
property name="id" column="ARTISTID" generator="increment"; 

/*
Few other properties which map to the appropriate columns in the Employees table
*/
property name="lastname";
property name="address";
property name="city";
property name="state";
property name="postalcode";
property name="email";
property name="phone";
property name="fax";
property name="thepassword"; 

}
