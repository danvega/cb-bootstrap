/**
 * I am a base controller for all other controllers to extend
 */ 
component {

	property name="logger" inject="logbox:root";
	property name="environment" inject="coldbox:setting:Environment";

	// POST VS GET
	public boolean function isPost(){
		return cgi.REQUEST_METHOD == "POST";
	}

	public boolean function isGet(){
		return cgi.REQUEST_METHOD == "GET";
	}

}