package leaguemanager

class Team {
	
	String name
	byte[] image

    static constraints = {
		name (blank:false, unique: true)
		image (nullable: true)
    }
}
