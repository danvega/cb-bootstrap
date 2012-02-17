component accessors="true" extends="coldbox.system.web.context.RequestContextDecorator" {

	public void function configure(){
		var rc = getRequestContext().getCollection();
		var prc = getRequestContext().getCollection(private=true);

		prc.baseURL = replaceNoCase(getSesBaseURL(),"index.cfm","");

	}
	
}