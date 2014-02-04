component {

	public void function configure(){

		// coldbox directives
		coldbox = {
			//Application Setup
			appName 				= "APPLICATION_NAME_HERE",

			//Development Settings
			debugMode				= false,
			debugPassword			= "",
			reinitPassword			= "",
			handlersIndexAutoReload = false,

			//Implicit Events
			defaultEvent			= "general.index",
			requestStartHandler		= "app.onRequestStart",
			requestEndHandler		= "app.onRequestEnd",
			applicationStartHandler = "app.onApplicationStart",
			applicationEndHandler	= "app.onApplicationEnd",
			sessionStartHandler 	= "app.onSessionStart",
			sessionEndHandler		= "app.onSessionEnd",
			missingTemplateHandler	= "app.pageNotFound",

			//Extension Points
			UDFLibraryFile 				= "includes/helpers/ApplicationHelper.cfm",
			coldboxExtensionsLocation 	= "",
			modulesExternalLocation		= [],
			pluginsExternalLocation 	= "",
			viewsExternalLocation		= "",
			layoutsExternalLocation 	= "",
			handlersExternalLocation  	= "",
			requestContextDecorator 	= "model.MyRequestContextDecorator",

			//Error/Exception Handling
			exceptionHandler		= "app.onException",
			onInvalidEvent			= "app.onInvalidEvent",
			customErrorTemplate		= "",

			//Application Aspects
			handlerCaching 			= true,
			eventCaching			= true,

			messagebox_style_override = "true"
		};

		settings = {
			
		};

		environments = {
			development = "^localhost",
			test = "^tst",
			production = "^www"
		};

		//LogBox DSL
		logBox = {
			// Define Appenders
			appenders = {
				coldboxTracer = {
					class="coldbox.system.logging.appenders.ColdboxTracerAppender",
					levelMin = "FATAL",
					levelMax = "INFO"
				},
				rollingFileAppender = {
					class="coldbox.system.logging.appenders.RollingFileAppender",
					properties = {
						filepath = "/cb-bootstrap/logs",
						filename = "bootstrap"
					},
					levelMin="FATAL",
					levelMax="INFO"
				}				
			},

			// root Logger
			root = { levelmin="FATAL", levelmax="DEBUG", appenders="*" }

		};

		modules = {
			autoReload = false,
			include = [],
			exclude = []
		};

		layoutSettings = {
			defaultLayout = "Layout.Main.cfm",
			defaultView   = ""
		};

		interceptorSettings = {
			throwOnInvalidStates = false,
			customInterceptionPoints = ""
		};

		interceptors = [
			{
				class="coldbox.system.interceptors.SES",
				properties={}
			}			 
		];

		//Mailsettings
		mailSettings = {
		};	
		
		// validations
		validations = {
			sharedConstraints = {}
		};

	}

	public void function development(){
		coldbox.debugmode = true;
		coldbox.handlersIndexAutoReload = true;
		coldbox.handlerCaching = false;
		
		// singleton reload
		wirebox.singletonReload = true;
		
		// debugger Settings
		debugger.showRCPanel = true;
	}

	public void function test(){
		coldbox.debugmode = true;
		coldbox.handlersIndexAutoReload = true;
		coldbox.handlerCaching = false;

		// debugger Settings
		debugger.showRCPanel = true;
	}

	public void function production(){
		var pass = "YOUR_PASSWORD_HERE";
		coldbox.debugPassword = pass;
		coldbox.reinitPassword = pass;
	}

}