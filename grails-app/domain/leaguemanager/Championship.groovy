package leaguemanager

class Championship {
	
	String name
	Date startDate
	Date dueDate
	boolean lock

    static constraints = {
		name (blank:false, unique: true)
		startDate (nullable: true)
		dueDate (nullable: true)
    }
	
	@Override
	public String toString() {
		return name
	}
}
