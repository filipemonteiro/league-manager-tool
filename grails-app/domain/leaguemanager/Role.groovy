package leaguemanager

class Role {

	static String ADMIN = "ROLE_ADMIN"

	String authority

	static mapping = {
		cache true
	}

	static constraints = {
		authority blank: false, unique: true
	}
}
