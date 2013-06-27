package leaguemanager

class LeagueTableService {

	def mountTable(Championship championshipInstance) {
		return Participant.where{
			championship.equals(championshipInstance)
		}.order("points", "desc").order("goalDifference", "desc").order("won", "desc").order("drawn", "desc").list()
		
	}
	
}
