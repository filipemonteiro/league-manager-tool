package leaguemanager

class Team {
	
	String name
	String imagePath

    static constraints = {
		name (blank:false, unique: true)
		imagePath (nullable: true)
    }
	
	@Override
	public String toString() {
		return name
	}
}
