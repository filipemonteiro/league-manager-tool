package bootstrap

import groovy.util.logging.Log4j
import leaguemanager.User
import leaguemanager.Role
import leaguemanager.UserRole

@Log4j
class UserCreator {
	
	def static create () {
		def standardRoles = [Role.ADMIN]
		log.info "Creating standard roles: ${standardRoles}"
		standardRoles.each { role -> Role.findOrSaveByAuthority(role) }

		log.info "Standard roles created successful"
		log.info "Creating default users"

		def users = [
			createUser ( "Administrator", "admin", "admin" )
		]

		users.each { user ->
			if ( User.findByFullName(user.fullName) == null ) {
				log.info "Creating user ${user.fullName}"
				user.save( failOnError: true )
				standardRoles.each { role -> UserRole.create( user, Role.findByAuthority( role ) ) }
			}
		}
		
		log.info "Default users created successful"
	}

	def private static User createUser ( fullName, username, password ) {
		return new User(
			fullName: fullName, 
			username: username,  
			password: password, 
			enabled: true, 
			accountExpired: false,
			accountLocked: false,
			passwordExpired: false
		)
	}
}
