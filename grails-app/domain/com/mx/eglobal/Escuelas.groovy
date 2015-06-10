package com.mx.eglobal

class Escuelas {
	String nombre;
	String clave;
	static hasMany = [alumno:Alumnos];

    static constraints = {
    }
}
