package leaguemanager



import org.junit.*
import grails.test.mixin.*

@TestFor(ChampionshipController)
@Mock(Championship)
class ChampionshipControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/championship/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.championshipInstanceList.size() == 0
        assert model.championshipInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.championshipInstance != null
    }

    void testSave() {
        controller.save()

        assert model.championshipInstance != null
        assert view == '/championship/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/championship/show/1'
        assert controller.flash.message != null
        assert Championship.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/championship/list'

        populateValidParams(params)
        def championship = new Championship(params)

        assert championship.save() != null

        params.id = championship.id

        def model = controller.show()

        assert model.championshipInstance == championship
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/championship/list'

        populateValidParams(params)
        def championship = new Championship(params)

        assert championship.save() != null

        params.id = championship.id

        def model = controller.edit()

        assert model.championshipInstance == championship
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/championship/list'

        response.reset()

        populateValidParams(params)
        def championship = new Championship(params)

        assert championship.save() != null

        // test invalid parameters in update
        params.id = championship.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/championship/edit"
        assert model.championshipInstance != null

        championship.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/championship/show/$championship.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        championship.clearErrors()

        populateValidParams(params)
        params.id = championship.id
        params.version = -1
        controller.update()

        assert view == "/championship/edit"
        assert model.championshipInstance != null
        assert model.championshipInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/championship/list'

        response.reset()

        populateValidParams(params)
        def championship = new Championship(params)

        assert championship.save() != null
        assert Championship.count() == 1

        params.id = championship.id

        controller.delete()

        assert Championship.count() == 0
        assert Championship.get(championship.id) == null
        assert response.redirectedUrl == '/championship/list'
    }
}
