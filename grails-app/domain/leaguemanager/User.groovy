package leaguemanager

class User {
	
	String fullName
	String userName
	String password
	
    static constraints = {
		userName()
		password (password: true) 
    }
}
