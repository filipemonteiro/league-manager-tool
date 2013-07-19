package bootstrap 

import groovy.util.logging.Log4j
import leaguemanager.Player

import org.codehaus.groovy.grails.commons.spring.GrailsApplicationContext

@Log4j
class PlayerCreator {
	
	def static create () {
		
		log.info "Criando os players"
		
		def players = [
			new Player(email: "filipe.monteiro@ideais.com.br", name:"Filipe Monteiro"),
			new Player(email: "mario.carmezim@ideais.com.br", name:"Mario Carmezim"),
			new Player(email: "danilo.cardoso@ideais.com.br", name:"Danilo Cardoso"),
			new Player(email: "dimitri.lameri@ideais.com.br", name:"Dimitri Lameri"),
			new Player(email: "thiago.campos@ideais.com.br", name:"Thiago Campos"),
			new Player(email: "jackson.malta@ideais.com.br", name:"Jackson Malta"),
			new Player(email: "nilo.silva@ideais.com.br", name:"Nilo Silva"),
			new Player(email: "alexander.ribeiro@ideais.com.br", name:"Alexander Ribeiro"),
			new Player(email: "pablo.ungaro@ideais.com.br", name:"Pablo Ungaro"),
			new Player(email: "mauricio.araujo@ideais.com.br", name:"Mauricio Araujo")
		]
		
		players.each { player ->
			if ( Player.findByName(player.name) == null ) {
				player.save(failOnError: true)
			}
		}
		
		log.info "Players criados com sucesso"
		
	}

}
