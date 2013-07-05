package bootstrap

import groovy.util.logging.Log4j
import leaguemanager.User

@Log4j
class UserCreator {
	
	def static create () {
		log.info "Criando os times"
		
		def users = [
			
		]

		users.each { user ->
			if ( User.findByName(user.name) == null ) {
				user.save(failOnError: true)
			}
		}
		
		log.info "Times criados com sucesso"
	}
}
