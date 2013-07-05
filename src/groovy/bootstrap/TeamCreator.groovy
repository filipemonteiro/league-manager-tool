package bootstrap

import groovy.util.logging.Log4j
import leaguemanager.Team

import org.codehaus.groovy.grails.commons.spring.GrailsApplicationContext

@Log4j
class TeamCreator {

	def static create () {
		log.info "Criando os times"
		
		def teams = [ 
			new Team(name:"Arsenal",imagePath:"arsenal-p.png"),
			new Team(name:"Aston Villa",imagePath:"aston-p.png"),
			new Team(name:"Atlético de Madrid",imagePath:"atleticomadrid-p.png"),
			new Team(name:"Barcelona",imagePath:"barcelona-p.png"),
			new Team(name:"Bayern de Munique",imagePath:"bayer-p.png"),
			new Team(name:"Benfinca",imagePath:"Benfica-p.png"),
			new Team(name:"Bilbao",imagePath:"bilbao-p.png"),
			new Team(name:"Borussia Dortmund",imagePath:"dormund-p.png"),
			new Team(name:"Celtic",imagePath:"celtic-p.jpg"),
			new Team(name:"Chelsea",imagePath:"chelsea-p.png"),
			new Team(name:"Everton",imagePath:"everton-p.png"),
			new Team(name:"Galatasaray",imagePath:"galatasaray-p.png"),
			new Team(name:"Inter de Milão",imagePath:"inter-p.png"),
			new Team(name:"Juventus",imagePath:"juventus-p.png"),
			new Team(name:"Lazio",imagePath:"lazio-p.png"),
			new Team(name:"Leverkusen",imagePath:"leverkusen-p.png"),
			new Team(name:"Lille",imagePath:"lille-p.png"),
			new Team(name:"Liverpool",imagePath:"liverpool-p.png"),
			new Team(name:"Lyon",imagePath:"lyon-p.png"),
			new Team(name:"Manchester City",imagePath:"manchester-city-p.png"),
			new Team(name:"Manchester United",imagePath:"manchester-p.png"),
			new Team(name:"Milan",imagePath:"milan-p.png"),
			new Team(name:"Napoli",imagePath:"napoli-p.png"),
			new Team(name:"Newcastle",imagePath:"newcastle-p.gif"),
			new Team(name:"Olympique Marselle",imagePath:"olimpique-p.png"),
			new Team(name:"Porto",imagePath:"porto-p.png"),
			new Team(name:"PSG",imagePath:"PSG-p.png"),
			new Team(name:"PSV",imagePath:"psv-p.png"),
			new Team(name:"Real Madrid",imagePath:"real-p.png"),
			new Team(name:"Roma",imagePath:"roma-p.png"),
			new Team(name:"Schalkae",imagePath:"Schalke_04-p.png"),
			new Team(name:"Sevilla",imagePath:"sevilla-p.png"),
			new Team(name:"Sporting",imagePath:"Sporting-p.png"),
			new Team(name:"Sunderland",imagePath:"sunderland-p.png"),
			new Team(name:"Tottenham",imagePath:"Tottenham-p.png"),
			new Team(name:"Valência",imagePath:"Valencia-p.png"),
			new Team(name:"Villarreal",imagePath:"vilarreal-p.png"),
			new Team(name:"Werder Bremen",imagePath:"werder_bremen-p.png"),
			new Team(name:"Wolfsburg",imagePath:"Wolfsburg-p.png"),
			new Team(name:"Zenit",imagePath:"zenit-p.png")
		]

		teams.each { team -> 
			if ( Team.findByName(team.name) == null ) {
				team.save(failOnError: true)
			} 
		}
		
		log.info "Times criados com sucesso"
	}
}
