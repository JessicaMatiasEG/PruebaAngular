<%@ page import="com.mx.eglobal.Alumnos" %>



<div class="fieldcontain ${hasErrors(bean: alumnosInstance, field: 'apmaterno', 'error')} required">
	<label for="apmaterno">
		<g:message code="alumnos.apmaterno.label" default="Apmaterno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apmaterno" required="" value="${alumnosInstance?.apmaterno}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alumnosInstance, field: 'appaterno', 'error')} required">
	<label for="appaterno">
		<g:message code="alumnos.appaterno.label" default="Appaterno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="appaterno" required="" value="${alumnosInstance?.appaterno}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alumnosInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="alumnos.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${alumnosInstance?.nombre}"/>

</div>

