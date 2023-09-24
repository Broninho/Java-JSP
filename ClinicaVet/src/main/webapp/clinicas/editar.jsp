<%@page import="org.libertas.bd.Clinica"%>
<%@page import="org.libertas.bd.ClinicaDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="style.css" media="screen" />
    <meta charset="UTF-8">
    <title>Editar Clínica</title>
</head>
<body>
<%
	int idClinica = Integer.parseInt(request.getParameter("id"));
	ClinicaDao adao = new ClinicaDao();
	Clinica clinica = adao.consultar(idClinica);
%>
    <h1>Editar Clínica Veterinária</h1>
    

    <form action="processar_edicao.jsp" method="post">
      
      
      	<input type="hidden" name="id" value="<%= clinica.getIdclinica() %>">
      	
        <label for="uf">UF:</label>
        <input type="text" id="uf" name="uf" value="<%= clinica.getUf() %>">
        
        <!-- Outros campos para edição -->
        <label for="cnpj">CNPJ:</label>
        <input type="text" id="cnpj" name="cnpj" required pattern="\d{2}\.\d{3}\.\d{3}/\d{4}-\d{2}" required maxlength="18" value=" <%= clinica.getCnpj() %>">
        
        <label for="nome">Nome:</label>
        <input type="text" id="nome" name="nome" value="<%=clinica.getNome() %>">
        
        <label for="nome">Endereço:</label>
        <input type="text" id="endereco" name="endereco" value="<%=clinica.getEndereco() %>">
        
        <label for="nome">Telefone:</label>
        <input type="text" id="telefone" name="telefone" required maxlength="14" value="<%=clinica.getTelefone() %>">
        
        <label for="nome">E-mail:</label>
        <input type="text" id="email" name="email" value="<%=clinica.getEmail() %>">
        
        <label for="nome">Website:</label>
        <input type="text" id="website" name="website" value="<%=clinica.getWebsite() %>">
        
        <input type="submit" value="Salvar Alterações">
    </form>

    <button><a href="listar.jsp">Voltar para a lista de clínicas</a></button>
</body>
</html>
