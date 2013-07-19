package leaguemanager

class Player {

	String name
	String email
	
    static constraints = {
		name (blank: false, unique: true)
		email (blank: false)
    }
	
	@Override
	public String toString() {
		return name
	}
}
