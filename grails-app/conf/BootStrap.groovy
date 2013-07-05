import bootstrap.TeamCreator
import bootstrap.UserCreator;

class BootStrap {

    def init = { servletContext ->
    	TeamCreator.create()
		UserCreator.create()
    }
    def destroy = {
    }
}
