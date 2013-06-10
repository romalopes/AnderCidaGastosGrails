package br.com.romalopes.andercidagastos



import org.junit.*
import grails.test.mixin.*

@TestFor(SpecificCategoryController)
@Mock(SpecificCategory)
class SpecificCategoryControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/specificCategory/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.specificCategoryInstanceList.size() == 0
        assert model.specificCategoryInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.specificCategoryInstance != null
    }

    void testSave() {
        controller.save()

        assert model.specificCategoryInstance != null
        assert view == '/specificCategory/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/specificCategory/show/1'
        assert controller.flash.message != null
        assert SpecificCategory.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/specificCategory/list'

        populateValidParams(params)
        def specificCategory = new SpecificCategory(params)

        assert specificCategory.save() != null

        params.id = specificCategory.id

        def model = controller.show()

        assert model.specificCategoryInstance == specificCategory
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/specificCategory/list'

        populateValidParams(params)
        def specificCategory = new SpecificCategory(params)

        assert specificCategory.save() != null

        params.id = specificCategory.id

        def model = controller.edit()

        assert model.specificCategoryInstance == specificCategory
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/specificCategory/list'

        response.reset()

        populateValidParams(params)
        def specificCategory = new SpecificCategory(params)

        assert specificCategory.save() != null

        // test invalid parameters in update
        params.id = specificCategory.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/specificCategory/edit"
        assert model.specificCategoryInstance != null

        specificCategory.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/specificCategory/show/$specificCategory.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        specificCategory.clearErrors()

        populateValidParams(params)
        params.id = specificCategory.id
        params.version = -1
        controller.update()

        assert view == "/specificCategory/edit"
        assert model.specificCategoryInstance != null
        assert model.specificCategoryInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/specificCategory/list'

        response.reset()

        populateValidParams(params)
        def specificCategory = new SpecificCategory(params)

        assert specificCategory.save() != null
        assert SpecificCategory.count() == 1

        params.id = specificCategory.id

        controller.delete()

        assert SpecificCategory.count() == 0
        assert SpecificCategory.get(specificCategory.id) == null
        assert response.redirectedUrl == '/specificCategory/list'
    }
}
