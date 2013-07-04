package leaguemanager

class Player {

	String name
	String email
	String equipe
	
    static constraints = {
		name (blank: false, unique: true)
		email (blank: false)
    }
	
	@Override
	public String toString() {
		return name
	}
}
