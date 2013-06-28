package leaguemanager

class Game {
	
	static belongsTo = [home: Participant, away: Participant, championship: Championship]
	int goalsHome
	int goalsAway

    static constraints = {
		championship()
		goalsHome(nullable: true)
		goalsAway(nullable: true)
    }
}
