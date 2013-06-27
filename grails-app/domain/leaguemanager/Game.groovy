package leaguemanager

class Game {
	
	static belongsTo = [home: Participant, away: Participant, championship: Championship]
	int goalsHome
	int goalsAway

    static constraints = {
		goalsHome(nullable: true)
		goalsAway(nullable: true)
    }
}
