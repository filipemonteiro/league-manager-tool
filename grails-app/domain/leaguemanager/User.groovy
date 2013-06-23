package leaguemanager

class User {
	
	String name
	String password
	
    static constraints = {
		password (password: true) 
    }
}
