package adarausersadministrator

class RestController {
			/* ADARA USER  */
	
	
	def show = {
		def relations = AdaraRelations.findAllByIdRole(1);
		
		

		 render(contentType: "application/json"){
			success(ok:true)
			data(relations:relations)
			
			
			/*
			data{
				for(r in relations){
					def ar = AdaraRelations.get(r.id);
					def loc = Localization.get(ar.localization.id)

					relation(	
							id : ar.id,
							i3DObject : ar.id3DObject,
							idMarker : ar.idMarker,
							idMenu : ar.idMenu,
							locId : loc.id,
							latitude: loc.latitud,
							longitude: loc.longitud,
							altitude: loc.altitud
							)
				}
			}
			*/
			
			
		}
	
	}

	def update = {
 /*
				
		{ "data" : [ { "relation" : [ { "object3D" : [ 
			{ "id" : 1 },
			{ "imageExtension" : "png" },
			{ "baseURL" : "zav" },
			{ "baseFileName" : "zav" }
		  ] },
	  { "marker" : [ { "id" : 1 },
			{ "name" : "android.patt" }
		  ] }
	] },
{ "relation" : [ { "object3D" : [ { "id" : 1 },
			{ "imageExtension" : "png" },
			{ "baseURL" : "zav" },
			{ "baseFileName" : "zav" }
		  ] },
	  { "marker" : [ { "id" : 1 },
			{ "name" : "android.patt" }
		  ] }
	] }
],
"success" : true
}*/
	}

	def delete = {
	}

	def save = {
	}
}
