

<%@ page import="adarausersadministrator.AdaraRelations" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'adaraRelations.label', default: 'AdaraRelations')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${adaraRelationsInstance}">
            <div class="errors">
                <g:renderErrors bean="${adaraRelationsInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${adaraRelationsInstance?.id}" />
                <g:hiddenField name="version" value="${adaraRelationsInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="idRole"><g:message code="adaraRelations.idRole.label" default="Id Role" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: adaraRelationsInstance, field: 'idRole', 'errors')}">
                                
                                 <g:select name="idRole" from="${roleList}" optionKey="id" optionValue="name"  value="${fieldValue(bean: adaraRelationsInstance, field: 'idRole')}"/>
                                
           
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="id3DObject"><g:message code="adaraRelations.id3DObject.label" default="Id3 DO bject" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: adaraRelationsInstance, field: 'id3DObject', 'errors')}">
                                 <g:select name="id3DObject" from="${objects3DList}" optionKey="id" optionValue="baseFileName"  value="${fieldValue(bean: adaraRelationsInstance, field: 'id3DObject')}"/>
                              
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="idMarker"><g:message code="adaraRelations.idMarker.label" default="Id Marker" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: adaraRelationsInstance, field: 'idMarker', 'errors')}">
                                 <g:select name="idMarker" from="${markerList}" optionKey="id" optionValue="name"  value="${fieldValue(bean: adaraRelationsInstance, field: 'idMarker')}"/>
                                    </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="idMenu"><g:message code="adaraRelations.idMenu.label" default="Id Menu" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: adaraRelationsInstance, field: 'idMenu', 'errors')}">
                                   <g:select name="idMenu" from="${menuList}" optionKey="id" optionValue="texto"  value="${fieldValue(bean: adaraRelationsInstance, field: 'idMenu')}"/>
                            
                                   </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="localization"><g:message code="adaraRelations.localization.label" default="Localization" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: adaraRelationsInstance, field: 'localization', 'errors')}">
                                    <g:select name="localization.id" from="${adarausersadministrator.Localization.list()}" optionKey="id" value="${adaraRelationsInstance?.localization?.id}"  />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
