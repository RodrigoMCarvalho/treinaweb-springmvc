<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<h2>Listagem de músicas</h2>
<br/>
<div class="row">
    <div class="col-md-10">
        <div class="form-group">
            <label>Música a ser pesquisado: </label>
            <input type="text" id="txt-pesquisa" class="form-control">
        </div>
        <button class="btn btn-default" id="btn-pesquisa">Pesquisar</button>
    </div>
</div>
<hr/>
<table class="table" id="tbl-albuns">
    <thead>
    <th>ID</th>
    <th>Nome da música</th>
    <th>Ano de criação</th>
    <th>Álbum</th>
    <th>Ações</th>
    </thead>
    <tbody>
    	<c:if test="${!empty musicas}">
    		<c:forEach items="${musicas}" var="musica">
    			<tr>
    				<td>${musica.id}</td>
    				<td>${musica.nome}</td>
    				<td><fmt:formatDate value="${musica.dataCriacao}" pattern="dd/MM/yyyy" timeZone="UTC"/></td>
    				<td>${musica.album.nome}</td>
    				<td>
	                    <a href="/treinaweb-spring-mvc/musicas/alterar/${musica.id}">Alterar</a> |
	                    <a href="/treinaweb-spring-mvc/musicas/excluir/${musica.id}">Excluir</a>
                	</td>
    			</tr>
    		</c:forEach>
    	</c:if>
    </tbody>
</table>
<br/>
<a href="/treinaweb-spring-mvc/musicas/adicionar" class="btn btn-primary">Adicionar nova música</a>

