import leaguemanager.Team
class BootStrap {

    def init = { servletContext ->
    	new Team(name:"Arsenal",imagePath:"arsenal-p.png").save(failOnError: true);
    	new Team(name:"Aston Villa",imagePath:"aston-p.png").save(failOnError: true);
    	new Team(name:"Atlético de Madrid",imagePath:"atleticomadrid-p.png").save(failOnError: true);
    	new Team(name:"Barcelona",imagePath:"barcelona-p.png").save(failOnError: true);
    	new Team(name:"Bayern de Munique",imagePath:"bayer-p.png").save(failOnError: true);
    	new Team(name:"Benfinca",imagePath:"Benfica-p.png").save(failOnError: true);
    	new Team(name:"Bilbao",imagePath:"bilbao-p.png").save(failOnError: true);
    	new Team(name:"Borussia Dortmund",imagePath:"dormund-p.png").save(failOnError: true);
    	new Team(name:"Celtic",imagePath:"celtic-p.jpg").save(failOnError: true);
    	new Team(name:"Chelsea",imagePath:"chelsea-p.png").save(failOnError: true);
    	new Team(name:"Everton",imagePath:"everton-p.png").save(failOnError: true);
    	new Team(name:"Galatasaray",imagePath:"galatasaray-p.png").save(failOnError: true);
    	new Team(name:"Inter de Milão",imagePath:"inter-p.png").save(failOnError: true);
    	new Team(name:"Juventus",imagePath:"juventus-p.png").save(failOnError: true);
    	new Team(name:"Lazio",imagePath:"lazio-p.png").save(failOnError: true);
    	new Team(name:"Leverkusen",imagePath:"leverkusen-p.png").save(failOnError: true);
    	new Team(name:"Lille",imagePath:"lille-p.png").save(failOnError: true);
    	new Team(name:"Liverpool",imagePath:"liverpool-p.png").save(failOnError: true);
    	new Team(name:"Lyon",imagePath:"lyon-p.png").save(failOnError: true);
    	new Team(name:"Manchester City",imagePath:"manchester-city-p.png").save(failOnError: true);
    	new Team(name:"Manchester United",imagePath:"manchester-p.png").save(failOnError: true);
    	new Team(name:"Milan",imagePath:"milan-p.png").save(failOnError: true);
    	new Team(name:"Napoli",imagePath:"napoli-p.png").save(failOnError: true);
    	new Team(name:"Newcastle",imagePath:"newcastle-p.gif").save(failOnError: true);
    	new Team(name:"Olympique Marselle",imagePath:"olimpique-p.png").save(failOnError: true);
    	new Team(name:"Porto",imagePath:"porto-p.png").save(failOnError: true);
    	new Team(name:"PSG",imagePath:"PSG-p.png").save(failOnError: true);
    	new Team(name:"PSV",imagePath:"psv-p.png").save(failOnError: true);
    	new Team(name:"Real Madrid",imagePath:"real-p.png").save(failOnError: true);
    	new Team(name:"Roma",imagePath:"roma-p.png").save(failOnError: true);
    	new Team(name:"Schalkae",imagePath:"Schalke_04-p.png").save(failOnError: true);
    	new Team(name:"Sevilla",imagePath:"sevilla-p.png").save(failOnError: true);
    	new Team(name:"Sporting",imagePath:"Sporting-p.png").save(failOnError: true);
    	new Team(name:"Sunderland",imagePath:"sunderland-p.png").save(failOnError: true);
    	new Team(name:"Tottenham",imagePath:"Tottenham-p.png").save(failOnError: true);
    	new Team(name:"Valência",imagePath:"Valencia-p.png").save(failOnError: true);
    	new Team(name:"Villarreal",imagePath:"vilarreal-p.png").save(failOnError: true);
    	new Team(name:"Werder Bremen",imagePath:"werder_bremen-p.png").save(failOnError: true);
    	new Team(name:"Wolfsburg",imagePath:"Wolfsburg-p.png").save(failOnError: true);
    	new Team(name:"Zenit",imagePath:"zenit-p.png").save(failOnError: true);
    }
    def destroy = {
    }
}
