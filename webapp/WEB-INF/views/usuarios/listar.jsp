<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<h2>Listagem de usuários</h2>
<br/>
<div class="row">
    <div class="col-md-10">
        <div class="form-group">
            <label>Usuário a ser pesquisado: </label>
            <input type="text" id="txt-pesquisa" class="form-control">
        </div>
        <button class="btn btn-primary" id="btn-pesquisa">Pesquisar</button>
    </div>
</div>
<hr/>
<table class="table" id="tbl-albuns">
    <thead>
    <th>ID</th>
    <th>Nome do usuário</th>
    <th>Role</th>
    </thead>
    <tbody>
    	<c:if test="${!empty usuarios}">
    		<c:forEach items="${usuarios}" var="usuario">
    			<tr>
    				<td>${usuario.id}</td>
    				<td>${usuario.username}</td>
    				<td>${usuario.role}</td>
    			</tr>
    		</c:forEach>
    	</c:if>
    </tbody>
</table>
<br/>
<a href="/treinaweb-spring-mvc/usuarios/adicionar" class="btn btn-primary">Adicionar novo usuário</a>

<script type="text/javascript">
$(document).ready(function () {
    $('#btn-pesquisa').click(function () {
        var nomeMusica = $('#txt-pesquisa').val();
        $.ajax({
            method: 'GET',
            url: '/treinaweb-spring-mvc/musicas/porNome?nome=' + nomeMusica,
            success: function (data) {
                $('#tbl-albuns tbody > tr').remove();
                $.each(data, function (index, musica) {
                    $('#tbl-albuns tbody').append(
                        '<tr>' +
                        '   <td>' + musica.id + '</td>' +
                        '   <td>' + musica.nome + '</td>' +
                        '   <td>' + musica.dataCriacao + '</td>' +
                        '   <td>' + musica.album.nome + '</td>' +
                        '   <td>' +
                        '       <a href="/treinaweb-spring-mvc/musicas/alterar/' + musica.id + '">Alterar</a> |' +
                        '       <a href="/treinaweb-spring-mvc/musicas/excluir/' + musica.id + '">Excluir</a> ' +
                        '   </td>' +
                        '</tr>'
                    );
                });
            },
            error: function () {
                alert("Houve um erro na requisição.");
            }
        });
    });
});
</script>






