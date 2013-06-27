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
        redirect(action: "show", id: championshipInstance.id)
    }

    def show(Long id) {
        def championshipInstance = Championship.get(id)
        if (!championshipInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'championship.label', default: 'Championship'), id])
            redirect(action: "list")
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
	
	def table(Long id){
		def championshipInstance = Championship.get(id)
		if (!championshipInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'championship.label', default: 'Championship'), id])
			redirect(action: "list")
			return
		}
		
		LeagueTableService table = new LeagueTableService()
		def participants = table.mountTable(championshipInstance)
		
		[participantList: participants]
	}
	
	def startChampionship(Long id){
		def championshipInstance = Championship.get(id)
		if (!championshipInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'championship.label', default: 'Championship'), id])
			redirect(action: "list")
			return
		}
		
		createGames(championshipInstance)
		
		flash.message = message(code: 'default.updated.message', args: [message(code: 'championship.label', default: 'Championship'), championshipInstance.id])
		redirect(action: "show", id: championshipInstance.id)

	}
	
	def gameAlreadyExists (Participant home, Participant away, Championship championship) {
		for (Game game : Game.findByChampionship(championship) ) {
			if (game.home.equals(home) && game.away.equals(away) || game.home.equals(away) && game.away.equals(home)){
				return true
			}
		}
		return false
	}
	
	def createGames (Championship championship) {
		
		for (Participant home : championship.participants) {
			
			for (Participant away : championship.participants) {
				if ( !home.equals(away) && !gameAlreadyExists(home, away, championship) ) {
					Game game = new Game()
					game.home = home
					game.away = away
					game.championship = championship
					game.save()
				}
			}
		}
		
	}
}
