package leaguemanager

class PlayerService {

    def freeParticipants(Championship championship) {
		return Player.withCriteria {
			not {
				'in'('id', playersIdInChampionship(championship))
		    }
		}
	}
	
	def playersIdInChampionship (Championship championship) {
		def playersIdInChampionship = []
		for (Participant participant : championship.participants) {
			playersIdInChampionship.add(participant.id)
		}
		return playersIdInChampionship
	}
}
