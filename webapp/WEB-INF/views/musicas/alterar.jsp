<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<h2>Edição de música ${musica.nome}</h2>
<c:url var="actionAlterar" value="/musicas/alterar"/>

<form:form action="${actionAlterar}" method="post"
           modelAttribute="musica">
     
    <div class="row">
        <div class="col-md-6"> 
            <div class="form-group">
                <label class="form-label">ID: </label>
                <form:input path="id" cssClass="form-control" readonly="true"/>
            </div>
        </div> 
    </div>

    <div class="row">
        <div class="col-md-6"> 
            <div class="form-group">
                <label class="form-label">Nome: </label>
                <form:input path="nome" cssClass="form-control"/>
                <form:errors path="nome" cssStyle="color: red;"/>
            </div>
        </div> 
    </div>

    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <label class="form-label">Data de criação</label>
                <form:input path="dataCriacao" cssClass="form-control"/>
                <form:errors path="dataCriacao" cssStyle="color: red;"/>
            </div>
        </div>
    </div>
    
    <div class="row" style="margin-left: auto;">
    	<div class="cl-md-6"> 
    		<div class="form-group">
    			<label>Álbuns</label>
    			<form:select path="album.id" cssClass="form-control">
    				<form:options items="${albuns}" itemLabel="nome" itemValue="id"/>
    			</form:select>
    		</div>
    	</div>
    </div>

    <input type="submit" value="Salvar" class="btn btn-primary"/>
</form:form>
