
<%@ page import="adarausersadministrator.AdaraRelations" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'adaraRelations.label', default: 'AdaraRelations')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'adaraRelations.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="idRole" title="${message(code: 'adaraRelations.idRole.label', default: 'Id Role')}" />
                        
                            <g:sortableColumn property="id3DObject" title="${message(code: 'adaraRelations.id3DObject.label', default: 'Id3 DO bject')}" />
                        
                            <g:sortableColumn property="idMarker" title="${message(code: 'adaraRelations.idMarker.label', default: 'Id Marker')}" />
                        
                            <g:sortableColumn property="idMenu" title="${message(code: 'adaraRelations.idMenu.label', default: 'Id Menu')}" />
                        
                            <th><g:message code="adaraRelations.localization.label" default="Localization" /></th>
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${adaraRelationsInstanceList}" status="i" var="adaraRelationsInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${adaraRelationsInstance.id}">${fieldValue(bean: adaraRelationsInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: adaraRelationsInstance, field: "idRole")}</td>
                        
                            <td>${fieldValue(bean: adaraRelationsInstance, field: "id3DObject")}</td>
                        
                            <td>${fieldValue(bean: adaraRelationsInstance, field: "idMarker")}</td>
                        
                            <td>${fieldValue(bean: adaraRelationsInstance, field: "idMenu")}</td>
                        
                            <td>${fieldValue(bean: adaraRelationsInstance, field: "localization")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${adaraRelationsInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
