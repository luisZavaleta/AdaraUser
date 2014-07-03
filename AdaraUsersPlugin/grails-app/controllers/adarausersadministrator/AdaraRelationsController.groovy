package adarausersadministrator

class AdaraRelationsController {
	
	static def adaraURL ="http://localhost:7070/AdaraAdministratorPlugin/"

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]


    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [adaraRelationsInstanceList: AdaraRelations.list(params), adaraRelationsInstanceTotal: AdaraRelations.count()]
    }

    def create = {
        def adaraRelationsInstance = new AdaraRelations()
        adaraRelationsInstance.properties = params
       return 	[	adaraRelationsInstance: adaraRelationsInstance,
						roleList: roleList(),
						objects3DList: objects3DList(),
						markerList: markerList(),
						menuList: menuList() 
				]
    }

    def save = {
        def adaraRelationsInstance = new AdaraRelations(params)
        if (adaraRelationsInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'adaraRelations.label', default: 'AdaraRelations'), adaraRelationsInstance.id])}"
            redirect(action: "show", id: adaraRelationsInstance.id)
        }
        else {
            render(view: "create", model: [adaraRelationsInstance: adaraRelationsInstance])
        }
    }

    def show = {
        def adaraRelationsInstance = AdaraRelations.get(params.id)
        if (!adaraRelationsInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'adaraRelations.label', default: 'AdaraRelations'), params.id])}"
            redirect(action: "list")
        }
        else {
            [adaraRelationsInstance: adaraRelationsInstance]
        }
    }

    def edit = {
        def adaraRelationsInstance = AdaraRelations.get(params.id)
        if (!adaraRelationsInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'adaraRelations.label', default: 'AdaraRelations'), params.id])}"
            redirect(action: "list")
        }
        else {
            return 	[	adaraRelationsInstance: adaraRelationsInstance,
						roleList: roleList(),
						objects3DList: objects3DList(),
						markerList: markerList(),
						menuList: menuList() 
					]
			
			//return [adaraRelationsInstance: adaraRelationsInstance, objects3DList:objects3DList(), markerList: markerList(), menuList: menuList()]
        }
    }

    def update = {
        def adaraRelationsInstance = AdaraRelations.get(params.id)
        if (adaraRelationsInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (adaraRelationsInstance.version > version) {
                    
                    adaraRelationsInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'adaraRelations.label', default: 'AdaraRelations')] as Object[], "Another user has updated this AdaraRelations while you were editing")
                    render(view: "edit", model: [adaraRelationsInstance: adaraRelationsInstance])
                    return
                }
            }
            adaraRelationsInstance.properties = params
            if (!adaraRelationsInstance.hasErrors() && adaraRelationsInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'adaraRelations.label', default: 'AdaraRelations'), adaraRelationsInstance.id])}"
                redirect(action: "show", id: adaraRelationsInstance.id)
            }
            else {
                render(view: "edit", model: [adaraRelationsInstance: adaraRelationsInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'adaraRelations.label', default: 'AdaraRelations'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def adaraRelationsInstance = AdaraRelations.get(params.id)
        if (adaraRelationsInstance) {
            try {
                adaraRelationsInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'adaraRelations.label', default: 'AdaraRelations'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'adaraRelations.label', default: 'AdaraRelations'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'adaraRelations.label', default: 'AdaraRelations'), params.id])}"
            redirect(action: "list")
        }
    }
}
