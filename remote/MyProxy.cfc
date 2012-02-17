component extends="coldbox.system.remote.ColdboxProxy" {
	
	remote void function remoteCall(){
		var results = "";

		// Set the event to execute
		arguments.event = "";

		// Call to process a coldbox event cycle, always check the results as they might not exist.
		results = super.process(argumentCollection=arguments);

		return results;
	}

}