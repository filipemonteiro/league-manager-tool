package leaguemanager

class Championship {
	
	String name
	static hasMany = [participants: Participant, games: Game]
	Date startDate
	Date dueDate
	boolean lock

    static constraints = {
		name (blank:false, unique: true)
		participants()
		startDate (nullable: true)
		dueDate (nullable: true)
    }
	
	@Override
	public String toString() {
		return name
	}
}
