component extends="coldbox.system.Coldbox" {

	// Application properties
	this.name = hash(getCurrentTemplatePath());
	this.sessionManagement = true;
	this.sessionTimeout = createTimeSpan(0,0,120,0);
	this.setClientCookies = true;

	// coldbox Specifics
	COLDBOX_APP_ROOT_PATH = getDirectoryFromPath(getCurrentTemplatePath());
	COLDBOX_APP_MAPPING = "";
	COLDBOX_CONFIG_FILE = "";
	COLDBOX_APP_KEY = "";

	this.mappings["/cb-bootstrap"] = COLDBOX_APP_ROOT_PATH;

	public boolean function onApplicationStart() {
		loadColdBox();
		return true;
	}

	public boolean function onRequestStart(String targetPage){

		// Reload Checks
		reloadChecks();

		//ORM Reload
		if( structKeyExists(URL,"ORMReload") ){
			ORMReload();
		}

		//Process a ColdBox request only
		if( findNoCase('index.cfm',listLast(arguments.targetPage,"/")) ){
			processColdBoxRequest();
		}

		return true;
	}

}