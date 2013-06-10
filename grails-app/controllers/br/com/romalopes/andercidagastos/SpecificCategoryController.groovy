package br.com.romalopes.andercidagastos

import org.springframework.dao.DataIntegrityViolationException

class SpecificCategoryController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [specificCategoryInstanceList: SpecificCategory.list(params), specificCategoryInstanceTotal: SpecificCategory.count()]
    }

    def create() {
        [specificCategoryInstance: new SpecificCategory(params)]
    }

    def save() {
        def specificCategoryInstance = new SpecificCategory(params)
        if (!specificCategoryInstance.save(flush: true)) {
            render(view: "create", model: [specificCategoryInstance: specificCategoryInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'specificCategory.label', default: 'SpecificCategory'), specificCategoryInstance.id])
        redirect(action: "show", id: specificCategoryInstance.id)
    }

    def show(Long id) {
        def specificCategoryInstance = SpecificCategory.get(id)
        if (!specificCategoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'specificCategory.label', default: 'SpecificCategory'), id])
            redirect(action: "list")
            return
        }

        [specificCategoryInstance: specificCategoryInstance]
    }

    def edit(Long id) {
        def specificCategoryInstance = SpecificCategory.get(id)
        if (!specificCategoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'specificCategory.label', default: 'SpecificCategory'), id])
            redirect(action: "list")
            return
        }

        [specificCategoryInstance: specificCategoryInstance]
    }

    def update(Long id, Long version) {
        def specificCategoryInstance = SpecificCategory.get(id)
        if (!specificCategoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'specificCategory.label', default: 'SpecificCategory'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (specificCategoryInstance.version > version) {
                specificCategoryInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'specificCategory.label', default: 'SpecificCategory')] as Object[],
                          "Another user has updated this SpecificCategory while you were editing")
                render(view: "edit", model: [specificCategoryInstance: specificCategoryInstance])
                return
            }
        }

        specificCategoryInstance.properties = params

        if (!specificCategoryInstance.save(flush: true)) {
            render(view: "edit", model: [specificCategoryInstance: specificCategoryInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'specificCategory.label', default: 'SpecificCategory'), specificCategoryInstance.id])
        redirect(action: "show", id: specificCategoryInstance.id)
    }

    def delete(Long id) {
        def specificCategoryInstance = SpecificCategory.get(id)
        if (!specificCategoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'specificCategory.label', default: 'SpecificCategory'), id])
            redirect(action: "list")
            return
        }

        try {
            specificCategoryInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'specificCategory.label', default: 'SpecificCategory'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'specificCategory.label', default: 'SpecificCategory'), id])
            redirect(action: "show", id: id)
        }
    }
}
