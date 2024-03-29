

<%@ page import="adarausersadministrator.Localization" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'localization.label', default: 'Localization')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${localizationInstance}">
            <div class="errors">
                <g:renderErrors bean="${localizationInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="latitud"><g:message code="localization.latitud.label" default="Latitud" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: localizationInstance, field: 'latitud', 'errors')}">
                                    <g:textField name="latitud" value="${fieldValue(bean: localizationInstance, field: 'latitud')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="longitud"><g:message code="localization.longitud.label" default="Longitud" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: localizationInstance, field: 'longitud', 'errors')}">
                                    <g:textField name="longitud" value="${fieldValue(bean: localizationInstance, field: 'longitud')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="altitud"><g:message code="localization.altitud.label" default="Altitud" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: localizationInstance, field: 'altitud', 'errors')}">
                                    <g:textField name="altitud" value="${fieldValue(bean: localizationInstance, field: 'altitud')}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
