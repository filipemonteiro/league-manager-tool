package leaguemanager

class Championship {
	
	String name
	static hasMany = [participants:Participant]
	Date startDate
	Date dueDate

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
