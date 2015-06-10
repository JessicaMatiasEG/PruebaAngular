
<%@ page import="com.mx.eglobal.Alumnos" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'alumnos.label', default: 'Alumnos')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-alumnos" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-alumnos" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list alumnos">
			
				<g:if test="${alumnosInstance?.apmaterno}">
				<li class="fieldcontain">
					<span id="apmaterno-label" class="property-label"><g:message code="alumnos.apmaterno.label" default="Apmaterno" /></span>
					
						<span class="property-value" aria-labelledby="apmaterno-label"><g:fieldValue bean="${alumnosInstance}" field="apmaterno"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnosInstance?.appaterno}">
				<li class="fieldcontain">
					<span id="appaterno-label" class="property-label"><g:message code="alumnos.appaterno.label" default="Appaterno" /></span>
					
						<span class="property-value" aria-labelledby="appaterno-label"><g:fieldValue bean="${alumnosInstance}" field="appaterno"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnosInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="alumnos.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${alumnosInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:alumnosInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${alumnosInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
