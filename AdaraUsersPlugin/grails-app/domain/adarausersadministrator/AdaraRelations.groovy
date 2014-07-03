package adarausersadministrator

class AdaraRelations {
	static expose = 'relations'
	
	
	
	
	int idRole	
	int id3DObject
	int idMarker
	int idMenu
	Localization localization;

    static constraints = {
				
		idRole(blank:false, nullable:false)
		id3DObject(blank:false, nullable:false)
		idMarker(blank:false, nullable:false)
		idMenu(blank:false, nullable:false)
		localization(blank:false, nullable:false)
		
		
    }
}
