package adarausersadministrator

class Localization {

	float latitud
	float longitud
	float altitud
	
	static constraints = {
		
		latitud(blank:false, nullable:false)
		longitud(blank:false, nullable:false)
		altitud(blank:true, nullable:true)
		
		}
	
	
	
}
