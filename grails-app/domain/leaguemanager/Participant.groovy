package leaguemanager

class Participant {

	static belongsTo = [player:Player,team:Team,championship:Championship]
	int points
	int won
	int drawn
	int lost
	int goalDifference
	
    static constraints = {
		championship()
    }
	
	@Override
	public String toString() {
		return player.name + "/" + team.name
	}
	
}
