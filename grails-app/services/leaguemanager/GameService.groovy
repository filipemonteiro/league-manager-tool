package leaguemanager

import org.springframework.transaction.annotation.Transactional;

@Transactional
class GameService {

	def createGames (Championship championship) {
		for (Participant home : championship.participants) {
			for (Participant away : championship.participants) {
				if ( !home.equals(away) && !gameAlreadyExists(home, away, championship) ) {
					Game game = new Game()
					game.home = home
					game.away = away
					game.championship = championship
					game.save(flush: true)
				}
			}
		}
		
		
	}
	
	def gameAlreadyExists (Participant home, Participant away, Championship championship) {
		for (Game game : Game.findAllByChampionship(championship) ) {
			if ( (game.home.equals(home) && game.away.equals(away)) || (game.home.equals(away) && game.away.equals(home))){
				return true
			}
		}
		return false
	}
	
}
