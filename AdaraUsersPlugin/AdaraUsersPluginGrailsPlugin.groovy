import groovyx.net.http.HTTPBuilder
import grails.util.GrailsUtil
import org.codehaus.groovy.grails.commons.GrailsClassUtils

class AdaraUsersPluginGrailsPlugin {
    // the plugin version
    def version = "0.1"
    // the version or versions of Grails the plugin is designed for
    def grailsVersion = "1.3.7 > *"
    // the other plugins this plugin depends on
    def dependsOn = [:]
    // resources that are excluded from plugin packaging
    def pluginExcludes = [
            "grails-app/views/error.gsp"
    ]

    // TODO Fill in these fields
    def author = "LuisZavaleta"
    def authorEmail = ""
    def title = "Plugin summary/headline"
    def description = '''\\
Brief description of the plugin.
'''

    // URL to the plugin's documentation
    def documentation = "http://grails.org/plugin/adara-users-plugin"

    def doWithWebDescriptor = { xml ->
        // TODO Implement additions to web.xml (optional), this event occurs before 
    }

    def doWithSpring = {
        // TODO Implement runtime spring config (optional)
    }

    def doWithDynamicMethods = { ctx ->	
		
		println "Controller XXXX"
		
		
		
		
		application.controllerClasses.each { controllerClass ->
			
			def adaraURL = GrailsClassUtils.getStaticPropertyValue(controllerClass.getClazz(), 'adaraURL')
			
			println "Controller"
			//println("--->"+adaraURL)
			println(controllerClass.getClazz().toString()+"--->"+adaraURL)
			
			if(adaraURL != null && !"".equals(adaraURL)){
				
				println "Controller IF"
				println(adaraURL)
				
				def http = new HTTPBuilder(adaraURL);
				
						//def objects3DList;
						//def markerList;
						//def menuList;
						//def localizationList;
				
				
				http.get(path: "api/role"){resp, json ->
					controllerClass.metaClass.roleList = {-> json.data }
					
					println "Role"
					println json.data
				}
				
				
						http.get(path: "api/object3D"){resp, json ->
							controllerClass.metaClass.objects3DList = {-> json.data }	
							
							println "Object3D"
							println json.data						
						}
						http.get(path: "api/marker"){resp, json ->
							controllerClass.metaClass.markerList = {-> json.data }
							
							println "Marker"
							println json.data
						}
						http.get(path: "api/menu"){resp, json ->
							controllerClass.metaClass.menuList = {-> json.data }
							
							println "Menu"
							println json.data
						}
				
						
						
				
				//controllerClass.metaClass.myNewMethod = {-> println "hello world" }
				
				}
			
            
			 
        }
    }

    def doWithApplicationContext = { applicationContext ->
        // TODO Implement post initialization spring config (optional)
    }

    def onChange = { event ->
        // TODO Implement code that is executed when any artefact that this plugin is
        // watching is modified and reloaded. The event contains: event.source,
        // event.application, event.manager, event.ctx, and event.plugin.
    }

    def onConfigChange = { event ->
        // TODO Implement code that is executed when the project configuration changes.
        // The event is the same as for 'onChange'.
    }
}
