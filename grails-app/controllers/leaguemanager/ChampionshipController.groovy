package leaguemanager

import org.springframework.dao.DataIntegrityViolationException

class ChampionshipController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [championshipInstanceList: Championship.list(params), championshipInstanceTotal: Championship.count()]
    }

    def create() {
        [championshipInstance: new Championship(params)]
    }

    def save() {
        def championshipInstance = new Championship(params)
        if (!championshipInstance.save(flush: true)) {
            render(view: "create", model: [championshipInstance: championshipInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'championship.label', default: 'Championship'), championshipInstance.id])
        redirect(action: "list", id: championshipInstance.id)
    }

    def show(Long id) {
        def championshipInstance = Championship.get(id)
        if (!championshipInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'championship.label', default: 'Championship'), id])
            redirect(action: "list")
            return
        }
		
		if (championshipInstance.lock) {
			redirect(action: "table", id: championshipInstance.id)
			return
		}

        [championshipInstance: championshipInstance]
    }

    def edit(Long id) {
        def championshipInstance = Championship.get(id)
        if (!championshipInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'championship.label', default: 'Championship'), id])
            redirect(action: "list")
            return
        }
		
		if (championshipInstance.lock) {
			flash.message = message(code: 'default.not.edited.message', args: [message(code: 'championship.label', default: 'Championship'), id])
			redirect(action: "list")
			return
		}

        [championshipInstance: championshipInstance]
    }

    def update(Long id, Long version) {
        def championshipInstance = Championship.get(id)
        if (!championshipInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'championship.label', default: 'Championship'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (championshipInstance.version > version) {
                championshipInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'championship.label', default: 'Championship')] as Object[],
                          "Another user has updated this Championship while you were editing")
                render(view: "edit", model: [championshipInstance: championshipInstance])
                return
            }
        }

        championshipInstance.properties = params

        if (!championshipInstance.save(flush: true)) {
            render(view: "edit", model: [championshipInstance: championshipInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'championship.label', default: 'Championship'), championshipInstance.id])
        redirect(action: "show", id: championshipInstance.id)
    }

    def delete(Long id) {
        def championshipInstance = Championship.get(id)
        if (!championshipInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'championship.label', default: 'Championship'), id])
            redirect(action: "list")
            return
        }

        try {
            championshipInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'championship.label', default: 'Championship'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'championship.label', default: 'Championship'), id])
            redirect(action: "show", id: id)
        }
    }
	
	def table(Long id) {
		def championshipInstance = Championship.get(id)
		if (!championshipInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'championship.label', default: 'Championship'), id])
			redirect(action: "list")
			return
		}
		
		LeagueTableService tableService = new LeagueTableService()
		def participants = tableService.mountTable(championshipInstance)
		
		[participantList: participants, championshipInstance: championshipInstance]
	}
	
	def startChampionship(Long id) {
		def championshipInstance = Championship.get(id)
		if (!championshipInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'championship.label', default: 'Championship'), id])
			redirect(action: "list")
			return
		}
		
		GameService gameService = new GameService()
		gameService.createGames(championshipInstance)
		
		championshipInstance.lock = true
		championshipInstance.save(flush: true)
		
		flash.message = message(code: 'default.updated.message', args: [message(code: 'championship.label', default: 'Championship'), championshipInstance.id])
		redirect(action: "table", id: championshipInstance.id)

	}
	
	def editResults(Long id) {
		def championshipInstance = Championship.get(id)
		if (!championshipInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'championship.label', default: 'Championship'), id])
			redirect(action: "list")
			return
		}
		
		[gameList: championshipInstance.games, championshipInstance: championshipInstance]
	}
}
