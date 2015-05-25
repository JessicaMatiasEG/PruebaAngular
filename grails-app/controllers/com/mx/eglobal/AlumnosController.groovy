package com.mx.eglobal



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AlumnosController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Alumnos.list(params), model:[alumnosInstanceCount: Alumnos.count()]
    }

    def show(Alumnos alumnosInstance) {
        respond alumnosInstance
    }

    def create() {
        respond new Alumnos(params)
    }

    @Transactional
    def save(Alumnos alumnosInstance) {
        if (alumnosInstance == null) {
            notFound()
            return
        }

        if (alumnosInstance.hasErrors()) {
            respond alumnosInstance.errors, view:'create'
            return
        }

        alumnosInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'alumnos.label', default: 'Alumnos'), alumnosInstance.id])
                redirect alumnosInstance
            }
            '*' { respond alumnosInstance, [status: CREATED] }
        }
    }

    def edit(Alumnos alumnosInstance) {
        respond alumnosInstance
    }

    @Transactional
    def update(Alumnos alumnosInstance) {
        if (alumnosInstance == null) {
            notFound()
            return
        }

        if (alumnosInstance.hasErrors()) {
            respond alumnosInstance.errors, view:'edit'
            return
        }

        alumnosInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Alumnos.label', default: 'Alumnos'), alumnosInstance.id])
                redirect alumnosInstance
            }
            '*'{ respond alumnosInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Alumnos alumnosInstance) {

        if (alumnosInstance == null) {
            notFound()
            return
        }

        alumnosInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Alumnos.label', default: 'Alumnos'), alumnosInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'alumnos.label', default: 'Alumnos'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
