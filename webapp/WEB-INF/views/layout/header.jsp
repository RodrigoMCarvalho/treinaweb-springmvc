<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <a class="navbar-brand" href="#">TreinaWeb Spring MVC</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#conteudoNavbarSuportado" aria-controls="conteudoNavbarSuportado" aria-expanded="false" aria-label="Alterna navegação">
    <span class="navbar-toggler-icon"></span>
  </button>
  
  <div class="collapse navbar-collapse" id="conteudoNavbarSuportado">
    <ul class="navbar-nav mr-auto">
	
	<sec:authorize access="isAuthenticated()">
   <sec:authentication property="principal" var="principal"/>
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" 
        			data-toggle="dropdown" 
        			aria-haspopup="true" 
        			aria-expanded="false">Albuns</a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="/treinaweb-spring-mvc/albuns/listar">Listar</a>
          <sec:authorize access="hasRole('ROLE_ADMIN')">
          <a class="dropdown-item" href="/treinaweb-spring-mvc/albuns/adicionar">Cadastrar</a>
          </sec:authorize>
        </div>
      </li>
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" 
        			data-toggle="dropdown" 
        			aria-haspopup="true" 
        			aria-expanded="false">Musicas</a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="/treinaweb-spring-mvc/musicas/listar">Listar</a>
           <sec:authorize access="hasRole('ROLE_ADMIN')">
          <a class="dropdown-item" href="/treinaweb-spring-mvc/musicas/adicionar">Cadastrar</a>
          </sec:authorize>
        </div>
      </li>
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" 
        			data-toggle="dropdown" 
        			aria-haspopup="true" 
        			aria-expanded="false">Usuários</a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="/treinaweb-spring-mvc/usuarios/listar">Listar</a>
          <sec:authorize access="hasRole('ROLE_ADMIN')">
          <a class="dropdown-item" href="/treinaweb-spring-mvc/usuarios/adicionar">Cadastrar</a>
          </sec:authorize>
        </div>
      </li>
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" 
        			data-toggle="dropdown" 
        			aria-haspopup="true" 
        			aria-expanded="false">Bem vindo, ${principal.username}</a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="/treinaweb-spring-mvc/logout">Sair</a>
        </div>
      </li>
      
    </sec:authorize>
    </ul>
  </div>
</nav>