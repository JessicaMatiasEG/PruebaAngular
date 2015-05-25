<%@ page import="com.mx.eglobal.Escuelas" %>



<div class="fieldcontain ${hasErrors(bean: escuelasInstance, field: 'alumno', 'error')} ">
	<label for="alumno">
		<g:message code="escuelas.alumno.label" default="Alumno" />
		
	</label>
	<g:select name="alumno" from="${com.mx.eglobal.Alumnos.list()}" multiple="multiple" optionKey="id" size="5" value="${escuelasInstance?.alumno*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: escuelasInstance, field: 'clave', 'error')} required">
	<label for="clave">
		<g:message code="escuelas.clave.label" default="Clave" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="clave" required="" value="${escuelasInstance?.clave}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: escuelasInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="escuelas.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${escuelasInstance?.nombre}"/>

</div>

