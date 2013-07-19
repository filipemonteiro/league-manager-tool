package leaguemanager

class Round {
	
	int number
	String description
	static belongsTo = [championship:Championship]
	static hasMany = [games: Game]

    static constraints = {
		description (nullable: true)
    }
}
